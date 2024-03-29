part of '../search_screen.dart';

class _SearchBar extends StatelessWidget {
  const _SearchBar({
    Key? key,
    required this.controller,
    required this.bloc,
  }) : super(key: key);

  final TextEditingController controller;
  final SearchBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20.w, 0, 20.w, 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.h),
        color: Theme.of(context).colorScheme.onBackground.withOpacity(0.1),
      ),
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
