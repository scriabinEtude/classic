import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/model/conductor.dart';

@Deprecated('person')
abstract class ConductorRepository {
  Future<Result<List<Conductor>>> getConductors();
  Future<Result<void>> postConductor(Conductor conductor);
}
