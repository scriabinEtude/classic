import 'package:classic/common/imports.dart';

class FailText extends StatelessWidget {
  const FailText(this.message, {super.key});
  final String? message;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Text(
        message ?? "",
        style: const TextStyle(
          fontSize: 16,
          color: Colors.red,
        ),
      ),
    );
  }
}
