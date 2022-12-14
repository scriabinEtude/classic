import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:classic/common/module/youtube/model/youtube_localized.dart';
import 'package:classic/common/module/youtube/model/youtube_snippet.dart';

part 'youtube_video.freezed.dart';
part 'youtube_video.g.dart';

@freezed
class YoutubeVideo with _$YoutubeVideo {
  factory YoutubeVideo({
    required String kind,
    required String etag,
    required String id,
    required YoutubeSnippet snippet,
    YoutubeLocalized? localized,
  }) = _YoutubeVideo;

  factory YoutubeVideo.fromJson(Map<String, dynamic> json) =>
      _$YoutubeVideoFromJson(json);
}
