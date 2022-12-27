import 'package:classic/common/object/logger/logger.dart';
import 'package:classic/data/const/code.dart';
import 'package:classic/data/const/db_collections.dart';
import 'package:classic/data/model/conductor.dart';
import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/repository/conductor/conductor_repository.dart';
import 'package:classic/common/module/firebase/querysnapshot_extension.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ConductorRepositoryImpl implements ConductorRepository {
  final FirebaseFirestore client;
  ConductorRepositoryImpl(this.client);

  @override
  Future<Result<List<Conductor>>> getConductors() async {
    try {
      QuerySnapshot<Map<String, dynamic>> snapshot =
          await client.collection(COL_CONDUCTOR).get();
      return Result.success(snapshot.toModels(Conductor.fromJson));
    } catch (e) {
      l.el('ComposerRepositoryImpl getConductors catch', e);
      return Result.failure(Result.CODE_FAILURE, "지휘자 목록 불러오기를 실패하였습니다");
    }
  }

  @override
  Future<Result<void>> postConductor(Conductor conductor) async {
    try {
      DocumentReference ref =
          client.collection(COL_CONDUCTOR).doc(conductor.id);
      DocumentSnapshot snapshot = await ref.get();
      if (snapshot.exists) {
        throw Failure(CODE_CONDUCTOR_DUPLICATED, "이미 등록된 지휘자 입니다.");
      } else {
        await ref.set(conductor.toJson());
        return Success(null);
      }
    } catch (e) {
      l.el('ComposerRepositoryImpl postConductor catch', e);
      if (e is Failure) rethrow;
      throw Failure(Result.CODE_FAILURE, '작곡가 등록에 실패하였습니다');
    }
  }
}
