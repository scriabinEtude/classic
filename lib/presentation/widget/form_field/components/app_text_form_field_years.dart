import 'package:classic/common/util/input_formatter/max_length_input_formatter.dart';
import 'package:classic/presentation/widget/form_field/app_text_form_field.dart';
import 'package:flutter/material.dart';

class AppTextFormFieldYears extends StatelessWidget {
  const AppTextFormFieldYears({
    super.key,
    this.icon,
    this.iconExist = true,
    required this.startTitle,
    required this.endTitle,
    required this.startOnSaved,
    required this.endOnSaved,
  });

  final Widget? icon;
  final bool iconExist;
  final String startTitle;
  final String endTitle;
  final void Function(String? value) startOnSaved;
  final void Function(String? value) endOnSaved;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 185,
          child: AppTextFormField(
            label: startTitle,
            icon: icon,
            iconExist: iconExist,
            setHeight: false,
            inputFormatters: [MaxLengthInputFormatter(4)],
            validator: (value) => (value == null || value.isEmpty)
                ? "$startTitle 년도를 입력해 주세요."
                : null,
            onSaved: startOnSaved,
          ),
        ),
        const _Wave(),
        SizedBox(
          width: 145,
          child: AppTextFormField(
            label: endTitle,
            iconExist: false,
            setHeight: false,
            inputFormatters: [MaxLengthInputFormatter(4)],
            onSaved: endOnSaved,
          ),
        ),
      ],
    );
  }
}

class _Wave extends StatelessWidget {
  const _Wave();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: Text(
        '~',
        style: Theme.of(context)
            .textTheme
            .displaySmall!
            .copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
      ),
    );
  }
}
