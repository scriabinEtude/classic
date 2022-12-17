import 'package:classic/common/module/firebase/querysnapshot_extension.dart';
import 'package:classic/common/object/logger/logger.dart';
import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/const/db_collections.dart';
import 'package:classic/data/model/link.dart';
import 'package:classic/data/repository/link/link/link_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LinkRepositoryImpl implements LinkRepository {
  final FirebaseFirestore client;
  LinkRepositoryImpl(this.client);

  @override
  Future<Result<List<Link>>> getLinks() async {
    try {
      QuerySnapshot<Map<String, dynamic>> result = await client
          .collection(COL_LINK)
          .orderBy('createdAt', descending: true)
          .get();
      return Success(result.toModels(Link.fromJson));
    } catch (e) {
      l.el('linkReposiotyImpl getlinks catch', e);
      throw Failure(Result.CODE_FAILURE, e.toString());
    }
  }
}
