import 'dart:math';

import 'package:classic/data/enum/search_result_type.dart';
import 'package:classic/data/model/search_result.dart';
import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/repository/search/search_repository.dart';
import 'package:faker/faker.dart';

class SearchRepositoryTest implements SearchRepository {
  late List<SearchResult> testSet;

  SearchRepositoryTest() {
    testSet = _generateTestDataSet();
  }

  List<SearchResult> _generateTestDataSet() {
    final faker = Faker();
    final random = Random();
    final size = SearchResultType.values.length;

    return List.generate(
      20,
      (index) => SearchResult(
        title: faker.person.name(),
        subtitle: random.nextBool() ? faker.person.name() : null,
        type: random.nextInt(size),
      ),
    );
  }

  @override
  Future<Result<List<SearchResult>>> search(String keyword) async {
    return Result.success(
        testSet.where((element) => (element.title).contains(keyword)).toList());
  }
}
