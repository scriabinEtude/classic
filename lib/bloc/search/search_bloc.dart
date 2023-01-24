import 'package:bloc/bloc.dart';
import 'package:classic/bloc/search/search_event.dart';
import 'package:classic/bloc/search/search_state.dart';
import 'package:classic/presentation/screen/search/search_type.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc({
    required SearchType type,
  }) : super(SearchState(type: type)) {
    on<SearchEventSearch>(_search);
  }

  _search(SearchEventSearch event, Emitter emit) {}
}
