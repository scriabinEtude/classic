import 'package:classic/data/model/person.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_event.freezed.dart';

@freezed
class PersonEvent with _$PersonEvent {
  factory PersonEvent() = _PersonEvent;
  factory PersonEvent.register(Person person) = PersonEventRegister;
}
