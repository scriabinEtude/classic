import 'package:classic/data/model/link.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:classic/common/module/youtube/model/youtube_localized.dart';
import 'package:classic/common/module/youtube/model/youtube_snippet.dart';

part 'youtube_video.freezed.dart';
part 'youtube_video.g.dart';

@freezed
class YoutubeVideo with _$YoutubeVideo {
  const YoutubeVideo._();
  factory YoutubeVideo({
    required String kind,
    required String etag,
    required String id,
    required YoutubeSnippet snippet,
    YoutubeLocalized? localized,
  }) = _YoutubeVideo;

  factory YoutubeVideo.fromJson(Map<String, dynamic> json) =>
      _$YoutubeVideoFromJson(json);

  Link toLink() {
    return Link(
      etag: etag,
      id: id,
      kind: kind,
      categoryId: snippet.categoryId,
      channelId: snippet.channelId,
      channelTitle: snippet.channelTitle,
      title: snippet.title,
      description: snippet.description,
      localizedDescription: snippet.localized.description,
      localizedTitle: snippet.localized.title,
      thumbnailDefault: snippet.thumbnails.min?.url,
      thumbnailMedium: snippet.thumbnails.medium?.url,
      thumbnailHigh: snippet.thumbnails.high?.url,
      thumbnailStandard: snippet.thumbnails.standard?.url,
      thumbnailMaxres: snippet.thumbnails.maxres?.url,
      liveBroadcastContent: snippet.liveBroadcastContent,
      publishedAt: snippet.publishedAt,
      tags: snippet.tags?.join(","),
    );
  }
}
