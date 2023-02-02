import 'package:classic/common/util/input_formatter/capitalize_input_formatter.dart';
import 'package:classic/common/util/input_formatter/continue_input_formatter.dart';
import 'package:classic/common/util/input_formatter/eng_only_input_formatter.dart';
import 'package:classic/presentation/widget/form_field/app_text_form_field.dart';
import 'package:classic/presentation/widget/form_field/form_text_init_value.dart';
import 'package:flutter/material.dart';

class AppTextFormFieldEng extends StatelessWidget {
  const AppTextFormFieldEng({
    super.key,
    required this.initialValue,
    required this.onSaved,
  });

  final String initialValue;
  final void Function(String? value) onSaved;

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      label: '이름 (영문)',
      initalValue: InitValueNotKor(initialValue),
      inputFormatters: [
        EngOnlyInputFormatter(),
        ContinueSpaceInputFormatter(),
        ContinueDashInputFormatter(),
        CapitalizeInputFormatter(),
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
