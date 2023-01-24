import 'package:classic/data/model/search_result.dart';
import 'package:classic/presentation/screen/search/search_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  factory SearchState({
    required SearchType type,
    @Default([]) List<SearchResult> results,
  }) = _SearchState;
}
