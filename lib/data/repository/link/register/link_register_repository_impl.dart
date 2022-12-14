import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/const/code.dart';
import 'package:classic/data/const/db_collections.dart';
import 'package:classic/data/model/link.dart';
import 'package:classic/data/model/user_link.dart';
import 'package:classic/data/repository/link/register/link_register_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LinkRegisterRepositoryImpl implements LinkRegisterRepository {
  final FirebaseFirestore clinet;
  LinkRegisterRepositoryImpl(this.clinet);

  @override
  Future<Result<void>> register(Link link) async {
    try {
      DocumentSnapshot linkdoc =
          await clinet.collection(COL_LINK).doc(link.id).get();
      if (linkdoc.exists) {
        throw Failure(CODE_LINK_REGISTER_DUPLICATED, '이미 등록된 링크입니다');
      }

      await clinet.collection(COL_LINK).doc(link.id).set(link.toJson());
      await clinet.collection(COL_USER).doc(link.userId).update({
        'links': FieldValue.arrayUnion([
          UserLink(
            linkId: link.id,
            title: link.link.snippet.title,
            provider: link.provider,
          )
        ])
      });
      return Success(null);
    } catch (e) {
      throw Failure(Result.CODE_FAILURE, '링크 등록에 실패하였습니다');
    }
  }
}