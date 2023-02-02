import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/model/era.dart';

abstract class EraRepository {
  Future<Result<void>> register(Era era);
}
