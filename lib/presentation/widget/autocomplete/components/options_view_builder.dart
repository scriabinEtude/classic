part of '../app_autocomplete.dart';

class _OptionsViewBuilder<T extends Autocompletable> extends StatelessWidget {
  const _OptionsViewBuilder({
    super.key,
    required this.onSelected,
    required this.options,
    required this.constraints,
    required this.status,
    this.customOptions = const [],
  });

  final void Function(T) onSelected;
  final Iterable<T> options;
  final BoxConstraints constraints;
  final List<Widget> customOptions;
  final Status status;

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
          child: Builder(builder: (context) {
            if (status is StatusSuccess) {
              return ListView.separated(
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
                separatorBuilder: (context, index) =>
                    _Separator(seperatorHeight),
              );
            } else if (status is StatusFail) {
              return _Error(
                fail: status as StatusFail,
                height: itemHeight,
              );
            } else {
              return _Loading(
                height: itemHeight,
              );
            }
          }),
        ),
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading({
    required this.height,
  });
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: const CircularProgressIndicator(),
    );
  }
}

class _Error extends StatelessWidget {
  const _Error({
    required this.fail,
    required this.height,
  });
  final StatusFail fail;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: const Icon(
        Icons.warning_amber_rounded,
        color: Colors.red,
      ),
    );
  }
}
