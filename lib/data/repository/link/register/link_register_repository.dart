import 'package:classic/common/module/youtube/model/youtube_video.dart';
import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/model/link.dart';

abstract class LinkRegisterRepository {
  Future<Result<void>> register(Link dto);
  Future<Result<void>> validate(YoutubeVideo video);
}
