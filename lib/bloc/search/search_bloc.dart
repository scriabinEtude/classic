import 'package:bloc/bloc.dart';
import 'package:classic/bloc/search/search_event.dart';
import 'package:classic/bloc/search/search_state.dart';
import 'package:classic/common/config/di.dart';
import 'package:classic/common/object/status/status.dart';
import 'package:classic/data/enum/search_type.dart';
import 'package:classic/data/repository/search/search_repository.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc({
    required SearchType type,
  })  : repo = di.get<SearchRepository>(),
        super(SearchState(
          type: type,
          status: StatusInit(),
        )) {
    on<SearchEventSearch>(_search);
  }

  late final SearchRepository repo;

  _search(SearchEventSearch event, Emitter emit) async {
    if (event.keyword.isEmpty) {
      emit(state.copyWith(keyword: ""));
    }

    var search = await repo.search(event.keyword);
    search.whenOrNull(
        success: (data) => emit(state.copyWith(
              results: data,
              keyword: event.keyword,
            )));
  }
}
