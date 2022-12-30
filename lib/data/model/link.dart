import 'package:classic/common/module/youtube/model/youtube_video.dart';
import 'package:classic/data/model/composer.dart';
import 'package:classic/data/model/conductor.dart';
import 'package:classic/data/model/music.dart';
import 'package:classic/data/model/musical_form.dart';
import 'package:classic/data/model/player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'link.freezed.dart';
part 'link.g.dart';

@freezed
class Link with _$Link {
  const Link._();
  factory Link({
    required String userId,
    required String provider,
    required YoutubeVideo link,
    required Composer composer,
    required MusicalForm musicalForm,
    required Music music,
    required Player player,
    Conductor? conductor,
    required DateTime createdAt,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);

  String get id => provider + link.id;
}
