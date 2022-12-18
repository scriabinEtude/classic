import 'package:classic/common/module/youtube/model/youtube_video.dart';
import 'package:classic/common/object/logger/logger.dart';
import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/const/code.dart';
import 'package:classic/data/const/db_collections.dart';
import 'package:classic/data/model/link.dart';
import 'package:classic/data/model/user_link.dart';
import 'package:classic/data/repository/link/register/link_register_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LinkRegisterRepositoryImpl implements LinkRegisterRepository {
  final FirebaseFirestore client;
  LinkRegisterRepositoryImpl(this.client);

  @override
  Future<Result<void>> register(Link link) async {
    try {
      await validate(link.link);
      await client.collection(COL_LINK).doc(link.id).set(link.toJson());
      await client.collection(COL_USER).doc(link.userId).update({
        'links': FieldValue.arrayUnion([
          UserLink(
            linkId: link.id,
            title: link.link.snippet.title,
            provider: link.provider,
          ).toJson(),
        ])
      });
      return Success(null);
    } catch (e) {
      l.el('link register catch', e);
      if (e is Failure) rethrow;
      throw Failure(Result.CODE_FAILURE, '링크 등록에 실패하였습니다');
    }
  }

  @override
  Future<Result<void>> validate(YoutubeVideo video) async {
    try {
      DocumentSnapshot linkdoc =
          await client.collection(COL_LINK).doc(video.id).get();
      if (linkdoc.exists) {
        throw Failure(CODE_LINK_REGISTER_DUPLICATED, '이미 등록된 링크입니다');
      }
      return Success(null);
    } catch (e) {
      l.el('link validate catch', e);
      if (e is Failure) rethrow;
      throw Failure(Result.CODE_FAILURE, '링크 유효성 검사에 실패하였습니다.');
    }
  }
}
