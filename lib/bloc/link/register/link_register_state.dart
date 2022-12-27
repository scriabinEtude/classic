import 'package:classic/common/module/youtube/model/youtube_video.dart';
import 'package:classic/data/model/link.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:classic/common/object/status/status.dart';

part 'link_register_state.freezed.dart';

@freezed
class LinkRegisterState with _$LinkRegisterState {
  factory LinkRegisterState({
    required Status status,
    required LinkValidation linkValidation,
    @Default(false) showConductorField,
  }) = _LinkRegisterState;
}

class LinkValidation {
  final bool validate;
  final String linkUrl;
  final Link? link;

  LinkValidation({
    required this.validate,
    required this.linkUrl,
    this.link,
  });

  factory LinkValidation.init() => LinkValidation(validate: false, linkUrl: "");
}
