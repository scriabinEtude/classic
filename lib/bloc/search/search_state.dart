import 'package:classic/common/object/status/status.dart';
import 'package:classic/data/model/search_result.dart';
import 'package:classic/data/enum/search_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  factory SearchState({
    required SearchType type,
    @Default("") String keyword,
    @Default([]) List<SearchResult> results,
    required Status status,
  }) = _SearchState;
}
