import 'package:classic/data/model/person.dart';
import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/repository/person/person_repository.dart';

class PersonRepositoryImpl extends PersonRepository {
  @override
  Future<Result<void>> register(Person person) async {
    return Success(null);
  }
}
