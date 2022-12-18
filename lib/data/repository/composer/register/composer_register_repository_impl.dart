import 'package:classic/common/module/youtube/model/youtube_video.dart';
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
      l.el('link register catch', e);
      if (e is Failure) rethrow;
      throw Failure(Result.CODE_FAILURE, '링크 등록에 실패하였습니다');
    }
  }

  @override
  Future<Result<void>> validate(Composer composer) async {
    try {
      return Success(null);
    } catch (e) {
      l.el('link validate catch', e);
      if (e is Failure) rethrow;
      throw Failure(Result.CODE_FAILURE, '링크 유효성 검사에 실패하였습니다.');
    }
  }
}
