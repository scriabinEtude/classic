import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/model/person.dart';

abstract class PersonRepository {
  Future<Result<void>> register(Person person);
}
