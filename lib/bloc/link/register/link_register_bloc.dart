import 'package:bloc/bloc.dart';
import 'package:classic/common/config/di.dart';
import 'package:classic/common/module/youtube/model/youtube_videos.dart';
import 'package:classic/common/module/youtube/youtube_api.dart';
import 'package:classic/common/object/logger/logger.dart';
import 'package:classic/common/object/result/result.dart';
import 'package:classic/bloc/link/register/link_register_event.dart';
import 'package:classic/bloc/link/register/link_register_state.dart';
import 'package:classic/common/object/status/status.dart';
import 'package:classic/data/model/link.dart';
import 'package:classic/data/repository/link/register/link_register_repository.dart';

class LinkRegisterBloc extends Bloc<LinkRegisterEvent, LinkRegisterState> {
  LinkRegisterBloc()
      : _linkRegisterRepository = di.get<LinkRegisterRepository>(),
        super(LinkRegisterState(status: StatusInit())) {
    on<LinkRegisterEventRegist>(_regist);
  }

  final YoutubeApi _youtube = YoutubeApi();
  final LinkRegisterRepository _linkRegisterRepository;

  _regist(LinkRegisterEventRegist event, Emitter emit) async {
    try {
      emit(state.copyWith(status: StatusLoading()));
      Result<YoutubeVideos> result = await _youtube.getVideo(event.url);

      result.when(
        failure: (status, message) {
          emit(state.copyWith(
              status: Status.fail(code: status, message: message)));
        },
        success: (link) async {
          l.dl('youtube api result', result);
          await _linkRegisterRepository.register(
              Link(userId: event.userId, provider: 'youtube', link: link));
          emit(state.copyWith(status: StatusSuccess()));
        },
      );
    } catch (e) {
      l.el('link_register catch', e);
      emit(state.copyWith(status: Status.fail(message: "링크 등록에 실패하였습니다.")));
    }
  }
}
