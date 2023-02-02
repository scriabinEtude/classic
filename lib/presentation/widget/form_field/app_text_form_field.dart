import 'package:flutter/services.dart';

import 'package:classic/common/imports.dart';
import 'package:classic/presentation/widget/form_field/form_text_init_value.dart';

/// maxLength를 쓰고 싶으면 inputformatter 중 MaxLengthInputFormatter를 이용하라
class AppTextFormField extends StatelessWidget {
  /// maxLength를 쓰고 싶으면 inputformatter 중 MaxLengthInputFormatter를 이용하라
  AppTextFormField({
    Key? key,
    required this.label,
    this.iconExist = true,
    this.icon,
    this.suffixIcon,
    this.readOnly = false,
    this.onTap,
    this.initalValue,
    this.inputFormatters,
    this.controller,
    this.focusNode,
    this.onFieldSubmitted,
    this.suffixText,
    this.setHeight = true,
    this.textAlign,
    this.validator,
    this.keyboardType,
    this.onEditingComplete,
    this.onSaved,
  }) : super(key: key);

  final String label;
  final bool iconExist;

  /// icon이 없어도 투명한 아이콘이 앞에 붙는다.
  /// 아예 없애고 싶으면 [iconExist]를 `false`
  Widget? icon;
  final Widget? suffixIcon;
  final bool readOnly;
  final void Function()? onTap;
  final FormTextInitValue? initalValue;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final void Function(String)? onFieldSubmitted;
  final bool setHeight;
  final String? suffixText;
  final TextAlign? textAlign;
  final String? Function(String? value)? validator;
  final TextInputType? keyboardType;
  final void Function()? onEditingComplete;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    icon ??= const Icon(Icons.abc, color: Colors.transparent);

    return SizedBox(
      height: setHeight ? 100 : null,
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: label,
          suffixIcon: suffixIcon,
          icon: iconExist ? icon : null,
          helperText: initalValue?.helperText,
          suffixText: suffixText,
        ),
        textAlign: textAlign ?? TextAlign.start,
        onTap: onTap,
        readOnly: initalValue?.readOnly ?? readOnly,
        initialValue: initalValue?.initialValue,
        onFieldSubmitted: onFieldSubmitted,
        focusNode: focusNode,
        controller: controller,
        inputFormatters: inputFormatters,
        validator: validator,
        keyboardType: keyboardType,
        onEditingComplete: onEditingComplete,
        onSaved: onSaved,
      ),
    );
  }
}
