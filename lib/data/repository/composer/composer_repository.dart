import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/model/composer.dart';

abstract class ComposerRepository {
  Future<Result<void>> register(Composer composer);
  Future<Result<List<Composer>>> getAllAutocomplete();
}
