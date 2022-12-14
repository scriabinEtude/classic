import 'package:freezed_annotation/freezed_annotation.dart';

part 'link_register_event.freezed.dart';

@freezed
class LinkRegisterEvent with _$LinkRegisterEvent {
  factory LinkRegisterEvent.regist(String url) = LinkRegisterEventRegist;
}
