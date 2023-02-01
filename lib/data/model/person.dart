import 'package:classic/data/model/link.dart';
import 'package:classic/data/model/music.dart';
import 'package:classic/data/model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person.freezed.dart';
part 'person.g.dart';

@freezed
class Person with _$Person {
  factory Person({
    int? personId,
    required String name,
    required String kor,
    required String type,
    required int birth,
    int? death,
    required String nation,
    User? user,
    @Default([]) List<Music> musics,
    @Default([]) List<Link> links,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}
