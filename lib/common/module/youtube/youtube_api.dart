import 'package:classic/common/module/youtube/const.dart';
import 'package:classic/common/module/youtube/model/youtube_videos.dart';
import 'package:classic/common/object/logger/logger.dart';
import 'package:classic/common/object/result/result.dart';
import 'package:dio/dio.dart';

class YoutubeApi {
  final Dio _dio = Dio();

  Future<Result<YoutubeVideos>> getVideo(String url) async {
    try {
      Response res = await _dio.get(_getApiUrl(_extractYoutubeId(url)));
      return Result.success(YoutubeVideos.fromJson(res.data));
    } catch (e) {
      if (e == YOUTUBE_CODE_NOT_VALID_URL) {
        return Failure(YOUTUBE_CODE_NOT_VALID_URL, 'URL 형식에 맞지 않습니다.');
      } else if (e == YOUTUBE_CODE_NOT_SUPPORT_URL) {
        return Failure(YOUTUBE_CODE_NOT_SUPPORT_URL, '지원되지 않는 URL 형식입니다.');
      } else if (e == YOUTUBE_CODE_ID_NOT_FOUND) {
        return Failure(YOUTUBE_CODE_ID_NOT_FOUND, '영상 ID를 찾을 수 없습니다.');
      } else {
        l.e(e);
        return Failure(Result.CODE_FAILURE, '에러가 발생하였습니다.');
      }
    }
  }

  String _getApiUrl(
    String id, {
    String? category,
    String? part,
  }) {
    category ??= 'videos';
    part ??= 'snippet';
    String url =
        '$YOUTUBE_API_URL/$category?part=$part&id=$id&key=$YOUTUBE_API_KEY';
    l.dl('youtube api url', url);
    return url;
  }

  /// ### throws
  /// [YOUTUBE_CODE_ID_NOT_FOUND]\
  /// [YOUTUBE_CODE_NOT_SUPPORT_URL]\
  /// [YOUTUBE_CODE_NOT_VALID_URL]

  String _extractYoutubeId(String url) {
    try {
      final Uri uri;
      uri = Uri.parse(url);
      final String id;

      // url 주소로 입력한 경우
      if (uri.host == "www.youtube.com") {
        String? extracted = uri.queryParameters['v'];
        if (extracted == null) {
          throw YOUTUBE_CODE_ID_NOT_FOUND;
        } else {
          id = extracted;
        }
      }
      // 공유하기로 입력한 경우
      else if (uri.host == "youtu.be") {
        if (uri.pathSegments.isEmpty) {
          throw YOUTUBE_CODE_ID_NOT_FOUND;
        } else {
          id = uri.pathSegments.first;
        }
      } else {
        throw YOUTUBE_CODE_NOT_SUPPORT_URL;
      }
      l.dl('extract youtube id', id);
      return id;
    } on FormatException catch (e) {
      l.e(e);
      throw YOUTUBE_CODE_NOT_VALID_URL;
    }
  }
}
