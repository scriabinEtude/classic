import 'package:classic/common/module/youtube/model/youtube_localized.dart';
import 'package:classic/common/module/youtube/model/youtube_thumbnails.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'youtube_snippet.freezed.dart';
part 'youtube_snippet.g.dart';

@freezed
class YoutubeSnippet with _$YoutubeSnippet {
  factory YoutubeSnippet({
    required DateTime publishedAt,
    required String channelId,
    required String title,
    required String description,
    required YoutubeThumbnails thumbnails,
    required String channelTitle,
    required List<String> tags,
    required String categoryId,
    required String liveBroadcastContent,
    required YoutubeLocalized localized,
  }) = _YoutubeSnippet;

  factory YoutubeSnippet.fromJson(Map<String, dynamic> json) =>
      _$YoutubeSnippetFromJson(json);
}
