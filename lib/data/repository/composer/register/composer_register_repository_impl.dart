import 'package:classic/common/object/logger/logger.dart';
import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/const/code.dart';
import 'package:classic/data/const/db_collections.dart';
import 'package:classic/data/model/composer.dart';
import 'package:classic/data/repository/composer/register/composer_register_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ComposerRegisterRepositoryImpl implements ComposerRegisterRepository {
  final FirebaseFirestore client;
  ComposerRegisterRepositoryImpl(this.client);

  @override
  Future<Result<void>> register(Composer composer) async {
    try {
      DocumentReference ref = client.collection(COL_COMPOSER).doc(composer.id);
      DocumentSnapshot snapshot = await ref.get();
      if (snapshot.exists) {
        throw Failure(CODE_COMPOSER_REGISTER_DUPLICATED, "이미 등록된 작곡가 입니다.");
      } else {
        await ref.set(composer.toJson());
        return Success(null);
      }
    } catch (e) {
      l.el('ComposerRegisterRepositoryImpl register catch', e);
      if (e is Failure) rethrow;
      throw Failure(Result.CODE_FAILURE, '작곡가 등록에 실패하였습니다');
    }
  }
}
