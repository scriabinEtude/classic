import 'package:freezed_annotation/freezed_annotation.dart';

part 'link_register_event.freezed.dart';

@freezed
class LinkRegisterEvent with _$LinkRegisterEvent {
  factory LinkRegisterEvent.init() = LinkRegisterEventInit;
  factory LinkRegisterEvent.regist(String userId, String url) =
      LinkRegisterEventRegist;
  factory LinkRegisterEvent.linkValidate(String url) =
      LinkRegisterEventLinkValidate;
  factory LinkRegisterEvent.showConductorField(bool show) =
      LinkRegisterEventShowConductorField;
}
