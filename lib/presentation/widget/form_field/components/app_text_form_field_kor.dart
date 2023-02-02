import 'package:classic/common/util/input_formatter/continue_input_formatter.dart';
import 'package:classic/common/util/input_formatter/kor_only_input_formatter.dart';
import 'package:classic/presentation/widget/form_field/app_text_form_field.dart';
import 'package:classic/presentation/widget/form_field/form_text_init_value.dart';
import 'package:flutter/material.dart';

class AppTextFormFieldKor extends StatelessWidget {
  const AppTextFormFieldKor({
    super.key,
    this.icon,
    required this.initialValue,
    required this.onSaved,
  });

  final Widget? icon;
  final String initialValue;
  final void Function(String? value) onSaved;

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      label: '이름 (한글)',
      icon: icon ?? const Icon(Icons.person_outline),
      initalValue: InitValueKor(initialValue),
      inputFormatters: [
        KorOnlyInputFormatter(),
        ContinueSpaceInputFormatter(),
      ],
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "이름을 입력해주세요.";
        }
        return null;
      },
      onSaved: onSaved,
    );
  }
}
