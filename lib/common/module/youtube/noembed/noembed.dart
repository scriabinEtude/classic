import 'package:freezed_annotation/freezed_annotation.dart';

part 'noembed.freezed.dart';
part 'noembed.g.dart';

@freezed
class NoEmbed with _$NoEmbed {
  factory NoEmbed({
    required String url,
    required String title,
    @JsonKey(name: "thumbnail_url") required String thumbnailUrl,
    @JsonKey(name: "author_name") required String authorName,
  }) = _NoEmbed;

  factory NoEmbed.fromJson(Map<String, dynamic> json) =>
      _$NoEmbedFromJson(json);
}
