import 'package:bloc/bloc.dart';
import 'package:classic/common/config/di.dart';
import 'package:classic/common/module/youtube/model/youtube_videos.dart';
import 'package:classic/common/module/youtube/youtube_api.dart';
import 'package:classic/common/object/logger/logger.dart';
import 'package:classic/common/object/result/result.dart';
import 'package:classic/bloc/link/register/link_register_event.dart';
import 'package:classic/bloc/link/register/link_register_state.dart';
import 'package:classic/common/object/status/status.dart';
import 'package:classic/data/const/code.dart';
import 'package:classic/data/model/link.dart';
import 'package:classic/data/repository/link/register/link_register_repository.dart';

class LinkRegisterBloc extends Bloc<LinkRegisterEvent, LinkRegisterState> {
  static final LinkRegisterState _initState = LinkRegisterState(
    status: StatusInit(),
    linkValidation: LinkValidation.init(),
  );

  LinkRegisterBloc()
      : _linkRegisterRepository = di.get<LinkRegisterRepository>(),
        super(_initState) {
    on<LinkRegisterEventRegist>(_regist);
    on<LinkRegisterEventLinkValidate>(_linkValidate);
    on<LinkRegisterEventInit>(_init);
    on<LinkRegisterEventShowConductorField>(_showConductorField);
  }

  final YoutubeApi _youtube = YoutubeApi();
  final LinkRegisterRepository _linkRegisterRepository;

  _init(LinkRegisterEventInit event, Emitter emit) {
    emit(_initState);
  }

  _linkValidate(LinkRegisterEventLinkValidate event, Emitter emit) async {
    try {
      emit(state.copyWith(status: StatusLoading()));

      if (state.linkValidation.validate == true &&
          state.linkValidation.linkUrl == event.url) {
        return;
      }

      Result<YoutubeVideos> result = await _youtube.getVideo(event.url);
      await result.when(
        failure: (status, message) {
          emit(state.copyWith(
              linkValidation:
                  LinkValidation(validate: false, linkUrl: event.url),
              status: Status.fail(code: status, message: message)));
        },
        success: (videos) async {
          l.dl('youtube api result', result);
          await _linkRegisterRepository.validate(videos.items.first);

          emit(state.copyWith(
              linkValidation: LinkValidation(
                  validate: true,
                  linkUrl: event.url,
                  link: Link(
                      userId: '0',
                      provider: 'youtube',
                      link: videos.items.first,
                      createdAt: DateTime.now())),
              status: StatusSuccess()));
        },
      );
    } catch (e) {
      if (e is Failure) {
        emit(state.copyWith(
            linkValidation: LinkValidation(validate: false, linkUrl: event.url),
            status: Status.fail(code: e.status, message: e.message)));
      } else {
        l.el('_linkValidate catch', e);
        emit(state.copyWith(
            linkValidation: LinkValidation(validate: false, linkUrl: event.url),
            status: Status.fail(message: "유효하지 않은 링크입니다.")));
      }
    }
  }

  _regist(LinkRegisterEventRegist event, Emitter emit) async {
    try {
      emit(state.copyWith(status: StatusLoading()));
      Result<YoutubeVideos> result = await _youtube.getVideo(event.url);

      await result.when(
        failure: (status, message) {
          emit(state.copyWith(
              status: Status.fail(code: status, message: message)));
        },
        success: (videos) async {
          l.dl('youtube api result', result);
          await _linkRegisterRepository.register(Link(
            userId: event.userId,
            provider: 'youtube',
            link: videos.items.first,
            createdAt: DateTime.now(),
          ));

          emit(state.copyWith(
              status: StatusSuccess(code: CODE_LINK_REGISTER_SUCCESS)));
        },
      );
    } catch (e) {
      if (e is Failure) {
        emit(state.copyWith(
            status: Status.fail(code: e.status, message: e.message)));
      } else {
        l.el('link_register catch', e);
        emit(state.copyWith(status: Status.fail(message: "링크 등록에 실패하였습니다.")));
      }
    }
  }

  _showConductorField(LinkRegisterEventShowConductorField event, Emitter emit) {
    emit(state.copyWith(showConductorField: event.show));
  }
}
