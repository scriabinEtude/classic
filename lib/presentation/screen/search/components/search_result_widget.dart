part of '../search_screen.dart';

class _SearchResultWidget extends StatelessWidget {
  const _SearchResultWidget({required this.result});
  final SearchResult result;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(result.title),
      subtitle: result.subtitle != null ? Text(result.subtitle!) : null,
      trailing: Text(result.typeEnum.name),
    );
  }
}
