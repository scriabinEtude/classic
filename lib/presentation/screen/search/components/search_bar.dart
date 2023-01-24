part of '../search_screen.dart';

class _SearchBar extends StatelessWidget {
  const _SearchBar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20.w, 0, 20.w, 3),
      decoration: BoxDecoration(
          color: const Color(0xfff1f1f1),
          borderRadius: BorderRadius.circular(30.h)),
      child: TextField(
        controller: controller,
        autocorrect: false,
        autofocus: true,
        decoration: const InputDecoration(
          isDense: true,
          border: InputBorder.none,
        ),
        maxLines: 1,
      ),
    );
  }
}
