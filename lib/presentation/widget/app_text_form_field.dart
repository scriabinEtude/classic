import 'package:classic/common/imports.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    Key? key,
    required this.label,
    this.icon = const Icon(Icons.abc, color: Colors.transparent),
    this.suffixIcon,
    this.readOnly = false,
    this.onTap,
  }) : super(key: key);

  final String label;
  final Widget? icon;
  final Widget? suffixIcon;
  final bool readOnly;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
        suffixIcon: suffixIcon,
        icon: icon,
      ),
      readOnly: readOnly,
      onTap: onTap,
    );
  }
}
