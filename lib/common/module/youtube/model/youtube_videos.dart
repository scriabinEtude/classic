import 'package:classic/common/module/youtube/model/youtube_page_info.dart';
import 'package:classic/common/module/youtube/model/youtube_video.dart';
import 'package:classic/data/model/link.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'youtube_videos.freezed.dart';
part 'youtube_videos.g.dart';

@freezed
class YoutubeVideos with _$YoutubeVideos {
  const YoutubeVideos._();
  factory YoutubeVideos({
    required String kind,
    required String etag,
    required List<YoutubeVideo> items,
    required YoutubePageInfo pageInfo,
  }) = _YoutubeVideos;

  factory YoutubeVideos.fromJson(Map<String, dynamic> json) =>
      _$YoutubeVideosFromJson(json);

  List<Link> toLinks() => items.map((e) => e.toLink()).toList();
}
