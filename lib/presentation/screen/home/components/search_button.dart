part of '../home_screen.dart';

class _SearchButton extends StatelessWidget {
  const _SearchButton();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push("${SearchScreen.routeName}/0");
      },
      child: const Icon(Icons.search),
    );
  }
}
