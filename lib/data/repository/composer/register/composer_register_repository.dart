import 'package:classic/common/module/youtube/model/youtube_video.dart';
import 'package:classic/common/module/youtube/model/youtube_videos.dart';
import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/model/composer.dart';
import 'package:classic/data/model/link.dart';

abstract class ComposerRegisterRepository {
  Future<Result<void>> register(Composer composer);
  Future<Result<void>> validate(Composer composer);
}
