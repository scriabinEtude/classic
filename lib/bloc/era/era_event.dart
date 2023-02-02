import 'package:classic/data/model/era.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'era_event.freezed.dart';

@freezed
class EraEvent with _$EraEvent {
  factory EraEvent.register(Era era) = EraEventRegister;
}
