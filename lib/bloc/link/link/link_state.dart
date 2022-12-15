import 'package:classic/common/object/status/status.dart';
import 'package:classic/data/model/link.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'link_state.freezed.dart';

@freezed
class LinkState with _$LinkState {
  factory LinkState({
    required Status status,
    @Default([]) List<Link> links,
  }) = _LinkState;
}
