import 'package:classic/common/object/logger/logger.dart';
import 'package:classic/data/const/code.dart';
import 'package:classic/data/const/db_collections.dart';
import 'package:classic/data/model/player.dart';
import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/repository/player/player_repository.dart';
import 'package:classic/common/module/firebase/querysnapshot_extension.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PlayerRepositoryImpl implements PlayerRepository {
  final FirebaseFirestore client;
  PlayerRepositoryImpl(this.client);

  @override
  Future<Result<List<Player>>> getPlayers() async {
    try {
      QuerySnapshot<Map<String, dynamic>> snapshot =
          await client.collection(COL_PLAYER).get();
      return Result.success(snapshot.toModels(Player.fromJson));
    } catch (e) {
      l.el('ComposerRepositoryImpl getAllAutocomplete catch', e);
      return Result.failure(Result.CODE_FAILURE, "연주자 목록 불러오기를 실패하였습니다");
    }
  }

  @override
  Future<Result<void>> postPlayer(Player player) async {
    try {
      DocumentReference ref = client.collection(COL_PLAYER).doc(player.id);
      DocumentSnapshot snapshot = await ref.get();
      if (snapshot.exists) {
        throw Failure(CODE_PLAYER_DUPLICATED, "이미 등록된 연주자 입니다.");
      } else {
        await ref.set(player.toJson());
        return Success(null);
      }
    } catch (e) {
      l.el('ComposerRepositoryImpl postPlayer catch', e);
      if (e is Failure) rethrow;
      throw Failure(Result.CODE_FAILURE, '연주자 등록에 실패하였습니다');
    }
  }
}
