import 'package:classic/data/model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'era.freezed.dart';
part 'era.g.dart';

@freezed
class Era with _$Era {
  factory Era({
    int? eraId,
    required String title,
    required String kor,
    required int start,
    int? end,
    User? user,
  }) = _Era;

  factory Era.fromJson(Map<String, dynamic> json) => _$EraFromJson(json);
}
