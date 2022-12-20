import 'package:classic/common/object/status/status.dart';
import 'package:classic/presentation/widget/autocomplete/data/mixin_autocompletable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

part './components/item.dart';
part './components/options_view_builder.dart';
part './components/seperator.dart';

class AppAutoComplete<T extends Autocompletable> extends StatelessWidget {
  const AppAutoComplete({
    required this.label,
    required this.options,
    this.readOnly = false,
    this.customOptions = const [],
    this.status,
    this.onSelected,
    Key? key,
  }) : super(key: key);

  final List<T> options;
  final String label;
  final bool readOnly;

  /// ### `@deprecated`
  /// 검색 결과가 없으면 [customOptions]도 같이 보여지지 않는 문제가 있다.
  /// [options]에 [Autocompletable]를 추가하여 사용하는 것을 권장한다.
  ///
  /// 검색 결과 외의 위젯을 자동완성에 추가한다.
  final List<Widget> customOptions;
  final Status? status;
  final void Function(T)? onSelected;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Autocomplete<T>(
        optionsBuilder: (textEditingValue) =>
            options.where((option) => option.isMatch(textEditingValue.text)),
        displayStringForOption: (option) => option.displayString(),
        fieldViewBuilder:
            (context, textEditingController, focusNode, onFieldSubmitted) {
          return TextFormField(
            readOnly: readOnly,
            controller: textEditingController,
            focusNode: focusNode,
            onFieldSubmitted: (String value) {
              onFieldSubmitted();
            },
            decoration: InputDecoration(
              label: Text(label),
            ),
          );
        },
        onSelected: onSelected,
        optionsViewBuilder: (context, onSelected, options) =>
            _OptionsViewBuilder<T>(
          onSelected: onSelected,
          options: options,
          constraints: constraints,
          customOptions: customOptions,
          status: status ?? StatusSuccess(),
        ),
      );
    });
  }
}
