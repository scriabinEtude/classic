part of '../home_screen.dart';

class _SearchButton extends StatelessWidget {
  const _SearchButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        SearchScreen.push(context, SearchType.homeSearch);
      },
      icon: const Icon(Icons.search),
    );
  }
}
