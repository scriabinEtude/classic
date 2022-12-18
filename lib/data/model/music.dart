import 'package:classic/data/model/link.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'music.freezed.dart';
part 'music.g.dart';

@freezed
class Music with _$Music {
  factory Music({
    @Default([]) List<Link> links,
  }) = _Music;

  factory Music.fromJson(Map<String, dynamic> json) => _$MusicFromJson(json);
}
