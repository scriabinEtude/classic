part of '../home_screen.dart';

class _SearchButton extends StatelessWidget {
  const _SearchButton();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        SearchScreen.push(context, SearchType.homeSearch);
      },
      child: const Icon(Icons.search),
    );
  }
}
