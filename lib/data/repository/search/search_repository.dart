import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/model/search_result.dart';

abstract class SearchRepository {
  Future<Result<List<SearchResult>>> search(String keyword);
}
