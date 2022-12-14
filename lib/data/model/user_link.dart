import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_link.freezed.dart';
part 'user_link.g.dart';

@freezed
class UserLink with _$UserLink {
  factory UserLink({
    required String linkId,
    required String title,
    required String provider,
  }) = _UserLink;

  factory UserLink.fromJson(Map<String, dynamic> json) =>
      _$UserLinkFromJson(json);
}
