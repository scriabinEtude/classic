import 'package:freezed_annotation/freezed_annotation.dart';

part 'youtube_localized.freezed.dart';
part 'youtube_localized.g.dart';

@freezed
class YoutubeLocalized with _$YoutubeLocalized {
  factory YoutubeLocalized({
    required String title,
    required String description,
  }) = _YoutubeLocalized;

  factory YoutubeLocalized.fromJson(Map<String, dynamic> json) =>
      _$YoutubeLocalizedFromJson(json);
}
