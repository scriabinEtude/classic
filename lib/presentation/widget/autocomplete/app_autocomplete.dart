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
    Key? key,
  }) : super(key: key);

  final List<T> options;
  final String label;
  final bool readOnly;
  final List<Widget> customOptions;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return RawAutocomplete<T>(
        optionsBuilder: (textEditingValue) =>
            options.where((option) => option.isMatch(textEditingValue.text)),
        displayStringForOption: (option) => option.displayString,
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
        optionsViewBuilder: (context, onSelected, options) =>
            _OptionsViewBuilder<T>(
          onSelected: onSelected,
          options: options,
          constraints: constraints,
          customOptions: customOptions,
        ),
      );
    });
  }
}
