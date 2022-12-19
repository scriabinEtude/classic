part of '../app_autocomplete.dart';

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
