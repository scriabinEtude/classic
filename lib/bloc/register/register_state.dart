import 'package:flutter/material.dart';
import 'package:classic/data/common/status/status.dart';
import 'package:classic/data/model/user.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const RegisterState._();
  factory RegisterState({
    required Status status,
    User? user,
    @Default(false) bool done,
  }) = _RegisterState;
}
