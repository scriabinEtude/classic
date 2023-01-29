import 'package:classic/common/imports.dart';

class FormErrorText extends StatelessWidget {
  const FormErrorText({
    Key? key,
    this.error,
  }) : super(key: key);
  final String? error;

  @override
  Widget build(BuildContext context) {
    if (error == null) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 6, 0, 0),
      child: Text(
        error!,
        style: Theme.of(context)
            .textTheme
            .labelMedium!
            .copyWith(color: Theme.of(context).colorScheme.error),
      ),
    );
  }
}
