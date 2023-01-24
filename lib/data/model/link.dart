import 'package:classic/common/module/youtube/model/youtube_video.dart';
import 'package:classic/data/model/composer.dart';
import 'package:classic/data/model/conductor.dart';
import 'package:classic/data/model/music.dart';
import 'package:classic/data/model/musical_form.dart';
import 'package:classic/data/model/player.dart';
import 'package:classic/data/model/user.dart';
import 'package:classic/data/model/person.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'link.freezed.dart';
part 'link.g.dart';

@freezed
class Link with _$Link {
  const Link._();
  factory Link({
    int? linkId,
    required String etag,
    required String id,
    required String kind,
    String? localized,
    required String categoryId,
    required String channelId,
    required String channelTitle,
    required String title,
    required String description,
    required String liveBroadcastContent,
    String? localizedDescription,
    String? localizedTitle,
    required DateTime publishedAt,
    String? tags,
    String? thumbnailDefault,
    String? thumbnailMedium,
    String? thumbnailStandard,
    String? thumbnailHigh,
    String? thumbnailMaxres,
    @Default([]) List<Music> musics,
    @Default([]) List<Person> persons,
    User? user,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);

  /// ### 썸네일 중 가장 작은 값 반환
  String get standardThumbnail =>
      thumbnailStandard ??
      thumbnailMaxres ??
      thumbnailHigh ??
      thumbnailMedium ??
      thumbnailDefault!;
}
