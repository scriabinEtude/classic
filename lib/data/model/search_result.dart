import 'package:classic/data/enum/search_result_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result.freezed.dart';
part 'search_result.g.dart';

@freezed
class SearchResult with _$SearchResult {
  const SearchResult._();
  factory SearchResult({
    required String title,
    String? subtitle,
    required int type,
  }) = _SearchResult;

  SearchResultType get typeEnum => SearchResultType.values[type];

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);
}
