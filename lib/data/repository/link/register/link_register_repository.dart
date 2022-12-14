import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/model/link.dart';

abstract class LinkRegisterRepository {
  Future<Result<void>> register(Link dto);
}
