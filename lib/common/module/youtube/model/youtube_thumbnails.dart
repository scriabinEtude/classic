import 'package:classic/common/module/youtube/model/youtube_thumbnail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'youtube_thumbnails.freezed.dart';
part 'youtube_thumbnails.g.dart';

@freezed
class YoutubeThumbnails with _$YoutubeThumbnails {
  const YoutubeThumbnails._();

  factory YoutubeThumbnails({
    @JsonKey(name: 'default') YoutubeThumbnail? min,
    YoutubeThumbnail? medium,
    YoutubeThumbnail? high,
    YoutubeThumbnail? standard,
    YoutubeThumbnail? maxres,
  }) = _YoutubeThumbnails;

  factory YoutubeThumbnails.fromJson(Map<String, dynamic> json) =>
      _$YoutubeThumbnailsFromJson(json);

  /// ### 썸네일 중 가장 작은 값 반환
  YoutubeThumbnail get standardThumbnail =>
      standard ?? maxres ?? high ?? medium ?? min!;
}
