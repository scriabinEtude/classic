import 'package:classic/common/module/youtube/model/youtube_thumbnail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'youtube_thumbnails.freezed.dart';
part 'youtube_thumbnails.g.dart';

@freezed
class YoutubeThumbnails with _$YoutubeThumbnails {
  factory YoutubeThumbnails({
    @JsonKey(name: 'default') required YoutubeThumbnail min,
    required YoutubeThumbnail medium,
    required YoutubeThumbnail high,
    required YoutubeThumbnail standard,
    required YoutubeThumbnail maxres,
  }) = _YoutubeThumbnails;

  factory YoutubeThumbnails.fromJson(Map<String, dynamic> json) =>
      _$YoutubeThumbnailsFromJson(json);
}
