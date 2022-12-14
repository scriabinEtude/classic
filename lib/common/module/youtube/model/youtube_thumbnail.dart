import 'package:freezed_annotation/freezed_annotation.dart';

part 'youtube_thumbnail.freezed.dart';
part 'youtube_thumbnail.g.dart';

@freezed
class YoutubeThumbnail with _$YoutubeThumbnail {
  factory YoutubeThumbnail({
    required String url,
    required int width,
    required int height,
  }) = _YoutubeThumbnail;

  factory YoutubeThumbnail.fromJson(Map<String, dynamic> json) =>
      _$YoutubeThumbnailFromJson(json);
}
