import 'package:classic/common/imports.dart';

class LinkAutoComplete<T extends Object> extends StatelessWidget {
  const LinkAutoComplete({
    required this.label,
    required this.options,
    Key? key,
  }) : super(key: key);

  final List<T> options;
  final String label;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return RawAutocomplete<T>(
        optionsBuilder: (textEditingValue) => options,
        fieldViewBuilder:
            (context, textEditingController, focusNode, onFieldSubmitted) {
          return TextFormField(
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
  });

  final void Function(T) onSelected;
  final Iterable<T> options;
  final BoxConstraints constraints;

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
            itemCount: options.length,
            itemBuilder: (context, index) => _AutoCompleteItem<T>(
              option: options.elementAt(index),
              onSelected: onSelected,
              height: itemHeight + seperatorHeight,
            ),
            separatorBuilder: (context, index) => _Separator(seperatorHeight),
          ),
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
      child: SizedBox(
        height: height,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(option.toString()),
          ),
        ),
      ),
    );
  }
}
