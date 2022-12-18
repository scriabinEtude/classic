import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/model/composer.dart';

abstract class ComposerRegisterRepository {
  Future<Result<void>> register(Composer composer);
}
