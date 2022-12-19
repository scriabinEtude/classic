part of '../app_autocomplete.dart';

class _AutoCompleteItem<T extends Autocompletable> extends StatelessWidget {
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
        child: Text(option.displayString),
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
