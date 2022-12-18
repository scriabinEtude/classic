import 'package:classic/common/object/logger/logger.dart';
import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/model/composer.dart';
import 'package:classic/data/repository/composer/register/composer_register_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ComposerRegisterRepositoryImpl implements ComposerRegisterRepository {
  final FirebaseFirestore client;
  ComposerRegisterRepositoryImpl(this.client);

  @override
  Future<Result<void>> register(Composer composer) async {
    try {
      return Success(null);
    } catch (e) {
      l.el('ComposerRegisterRepositoryImpl register catch', e);
      if (e is Failure) rethrow;
      throw Failure(Result.CODE_FAILURE, '작곡가 등록에 실패하였습니다');
    }
  }
}
