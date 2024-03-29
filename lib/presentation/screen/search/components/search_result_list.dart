part of '../search_screen.dart';

class _SearchResultList extends StatelessWidget {
  const _SearchResultList({
    required this.bloc,
  });
  final SearchBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      bloc: bloc,
      builder: (context, state) {
        if (state.keyword.isEmpty) {
          return const SizedBox.shrink();
        }
        if (state.results.isNotEmpty) {
          return ListView.builder(
            itemCount: state.results.length,
            itemBuilder: (context, index) => _SearchResultWidget(
              result: state.results[index],
            ),
          );
        } else {
          return ListTile(
            leading: const Icon(Icons.add),
            title: Text(state.keyword),
            subtitle: const Text('등록하기'),
            onTap: () {
              switch (state.type) {
                case SearchType.homeSearch:
                  RegisterChoiceBottomSheet.show(context, state.keyword);
                  break;
                case SearchType.linkRegisterMusic:
                  MusicRegisterScreen.route(context, state.keyword);
                  break;
                case SearchType.linkRegisterPlayer:
                  // TODO: Handle this case.
                  break;
                case SearchType.linkRegisterConductor:
                  // TODO: Handle this case.
                  break;
                case SearchType.musicRegisterConductor:
                  PersonRegisterScreen.route(context, state.keyword);
                  break;
                case SearchType.musicRegisterEra:
                  EraRegisterScreen.route(context, state.keyword);
                  break;
              }
            },
          );
        }
      },
    );
  }
}
