part of '../app_autocomplete.dart';

class _OptionsViewBuilder<T extends Autocompletable> extends StatelessWidget {
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
          height: (options.length + customOptions.length) * itemHeight + 10,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
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
