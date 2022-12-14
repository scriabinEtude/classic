import 'package:bloc/bloc.dart';
import 'package:classic/common/module/youtube/model/youtube_videos.dart';
import 'package:classic/common/module/youtube/youtube_api.dart';
import 'package:classic/common/object/result/result.dart';
import 'package:equatable/equatable.dart';
import 'package:classic/bloc/link/register/link_register_event.dart';

part 'link_register_state.dart';

class LinkRegisterBloc extends Bloc<LinkRegisterEvent, LinkRegisterState> {
  LinkRegisterBloc() : super(LinkRegisterInitial()) {
    on<LinkRegisterEventRegist>(_regist);
  }

  final YoutubeApi _youtube = YoutubeApi();

  _regist(LinkRegisterEventRegist event, Emitter emit) async {
    Result<YoutubeVideos> result = await _youtube.getVideo(event.url);
    print(result);
  }
}
