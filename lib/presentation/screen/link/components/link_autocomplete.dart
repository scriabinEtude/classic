import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LinkAutoComplete<T extends Object> extends StatelessWidget {
  const LinkAutoComplete({
    required this.label,
    required this.options,
    this.readOnly = true,
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
        optionsBuilder: (textEditingValue) => options,
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

class _OptionsViewBuilder<T> extends StatelessWidget {
  const _OptionsViewBuilder({
    super.key,
    required this.onSelected,
    required this.options,
    required this.constraints,
    this.customOptions = const [],
  });

  final void Function(T) onSelected;
  final Iterable<T> options;
  final BoxConstraints constraints;
  final List<Widget> customOptions;

  @override
  Widget build(BuildContext context) {
    final double itemHeight = 50.h;
    final double seperatorHeight = 0.5.h;

    return Align(
      alignment: Alignment.topLeft,
      child: Material(
        color: Colors.white,
        child: Container(
          width: constraints.biggest.width,
          height: options.length * itemHeight,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                offset: const Offset(3, 3),
                spreadRadius: 2,
                blurRadius: 3,
              ),
            ],
          ),
          child: ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: options.length + customOptions.length,
            itemBuilder: (context, index) {
              if (customOptions.length > index) {
                return _Item(
                  height: itemHeight,
                  child: customOptions[index],
                );
              } else {
                return _AutoCompleteItem<T>(
                  option: options.elementAt(index - customOptions.length),
                  onSelected: onSelected,
                  height: itemHeight + seperatorHeight,
                );
              }
            },
            separatorBuilder: (context, index) => _Separator(seperatorHeight),
          ),
        ),
      ),
    );
  }
}

class _AutoCompleteItem<T> extends StatelessWidget {
  const _AutoCompleteItem({
    super.key,
    required this.option,
    required this.onSelected,
    required this.height,
  });

  final T option;
  final void Function(T) onSelected;
  final double height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onSelected(option),
      child: _Item(
        height: height,
        child: Text(option.toString()),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    required this.height,
    required this.child,
  });
  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: child,
        ),
      ),
    );
  }
}

class _Separator extends StatelessWidget {
  const _Separator(this.height);
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey.withOpacity(0.5),
    );
  }
}
