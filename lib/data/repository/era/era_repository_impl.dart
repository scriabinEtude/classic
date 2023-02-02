import 'package:classic/data/model/era.dart';
import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/repository/era/era_repository.dart';

class EraRepositoryImpl extends EraRepository {
  @override
  Future<Result<void>> register(Era era) async {
    return Success(null);
  }
}
