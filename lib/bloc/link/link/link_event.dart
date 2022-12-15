import 'package:freezed_annotation/freezed_annotation.dart';

part 'link_event.freezed.dart';

@freezed
class LinkEvent with _$LinkEvent {
  factory LinkEvent.getLinks() = LinkEventGetLinks;
}
