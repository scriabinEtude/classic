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
        return ListView.builder(
          itemCount: state.results.length,
          itemBuilder: (context, index) => _SearchResultWidget(
            result: state.results[index],
          ),
        );
      },
    );
  }
}
