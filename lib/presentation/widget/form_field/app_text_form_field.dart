import 'package:flutter/services.dart';

import 'package:classic/common/imports.dart';
import 'package:classic/presentation/widget/form_field/form_text_init_value.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    Key? key,
    required this.label,
    this.icon = const Icon(Icons.abc, color: Colors.transparent),
    this.suffixIcon,
    this.readOnly = false,
    this.onTap,
    this.initalValue,
    this.inputFormatters,
    this.controller,
    this.focusNode,
    this.onFieldSubmitted,
    this.suffixText,
    this.autoComplete = false,
    this.maxLength,
    this.textAlign,
  }) : super(key: key);

  final String label;
  final Widget? icon;
  final Widget? suffixIcon;
  final bool readOnly;
  final void Function()? onTap;
  final FormTextInitValue? initalValue;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final void Function(String)? onFieldSubmitted;
  final bool autoComplete;
  final String? suffixText;
  final int? maxLength;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: autoComplete ? null : 100.h,
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: label,
          suffixIcon: suffixIcon,
          icon: icon,
          helperText: initalValue?.helperText,
          suffixText: suffixText,
          counter: const SizedBox.shrink(),
        ),
        textAlign: textAlign ?? TextAlign.start,
        maxLength: maxLength,
        onTap: onTap,
        readOnly: initalValue?.readOnly ?? readOnly,
        initialValue: initalValue?.initialValue,
        onFieldSubmitted: onFieldSubmitted,
        focusNode: focusNode,
        controller: controller,
        inputFormatters: inputFormatters,
      ),
    );
  }
}
