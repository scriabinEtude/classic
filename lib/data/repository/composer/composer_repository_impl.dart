import 'package:classic/common/object/logger/logger.dart';
import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/const/code.dart';
import 'package:classic/data/const/db_collections.dart';
import 'package:classic/data/model/composer.dart';
import 'package:classic/data/model/music.dart';
import 'package:classic/data/model/musical_form.dart';
import 'package:classic/data/repository/composer/composer_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:classic/common/module/firebase/querysnapshot_extension.dart';

class ComposerRepositoryImpl implements ComposerRepository {
  final FirebaseFirestore client;
  ComposerRepositoryImpl(this.client);

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
      l.el('ComposerRepositoryImpl register catch', e);
      if (e is Failure) rethrow;
      throw Failure(Result.CODE_FAILURE, '작곡가 등록에 실패하였습니다');
    }
  }

  @override
  Future<Result<List<Composer>>> getAllComposerSearch() async {
    try {
      QuerySnapshot<Map<String, dynamic>> snapshot =
          await client.collection(COL_COMPOSER).get();
      return Result.success(snapshot.toModels(Composer.fromJson));
    } catch (e) {
      l.el('ComposerRepositoryImpl getAllAutocomplete catch', e);
      return Result.failure(Result.CODE_FAILURE, "작곡가 검색을 실패하였습니다");
    }
  }

  @override
  Future<Result<Composer>> getComposerById(String id) async {
    try {
      DocumentSnapshot<Map<String, dynamic>> snapshot =
          await client.collection(COL_COMPOSER).doc(id).get();

      if (snapshot.exists) {
        QuerySnapshot<Map<String, dynamic>> musicalformSnapshot = await client
            .collection(COL_COMPOSER)
            .doc(id)
            .collection(COL_MUSICALFORMS)
            .get();

        Map<String, dynamic> resultData = snapshot.data()!;
        resultData['musicalForms'] =
            musicalformSnapshot.docs.map((e) => e.data()).toList();

        return Result.success(Composer.fromJson(resultData));
      } else {
        return Result.failure(CODE_COMPOSER_NOT_EXIST, "작곡가가 없습니다.");
      }
    } catch (e) {
      l.el('ComposerRepositoryImpl getComposerById catch', e);
      return Result.failure(Result.CODE_FAILURE, "작곡가 찾기를 실패하였습니다");
    }
  }

  @override
  Future<Result<void>> postMusicalForm(
      String composerId, MusicalForm musicalForm) async {
    try {
      DocumentReference<Map<String, dynamic>> composerRef =
          client.collection(COL_COMPOSER).doc(composerId);
      DocumentSnapshot<Map<String, dynamic>> snapshot = await composerRef.get();
      if (!snapshot.exists) {
        throw Failure(CODE_COMPOSER_NOT_EXIST, "작곡가를 먼저 등록해 주세요");
      } else {
        QuerySnapshot<Map<String, dynamic>> snapshot =
            await composerRef.collection(COL_MUSICALFORMS).get();
        List<MusicalForm> musicalForms =
            snapshot.toModels(MusicalForm.fromJson);
        if (musicalForms
            .where((element) => element.id == musicalForm.id)
            .isEmpty) {
          await composerRef
              .collection(COL_MUSICALFORMS)
              .doc(musicalForm.id)
              .set(musicalForm.toJson());

          return Success(null);
        } else {
          throw Failure(CODE_MUSICAL_FORM_DUPLICATED, '이미 등록된 음악 형식입니다.');
        }
      }
    } catch (e) {
      l.el('ComposerRepositoryImpl postMusicalForm catch', e);
      if (e is Failure) rethrow;
      throw Failure(Result.CODE_FAILURE, '작곡가 등록에 실패하였습니다');
    }
  }

  @override
  Future<Result<void>> postMusic(
      String composerId, String musicalFormId, Music music) async {
    try {
      DocumentReference<Map<String, dynamic>> musicalformRef = client
          .collection(COL_COMPOSER)
          .doc(composerId)
          .collection(COL_MUSICALFORMS)
          .doc(musicalFormId);

      DocumentSnapshot<Map<String, dynamic>> snapshot =
          await musicalformRef.get();
      if (!snapshot.exists) {
        throw Failure(CODE_COMPOSER_NOT_EXIST, "음악 형식을 먼저 등록해 주세요");
      } else {
        MusicalForm musicalForm = MusicalForm.fromJson(snapshot.data()!);
        if (musicalForm.musics
            .where((element) => element == music)
            .isNotEmpty) {
          throw Failure(CODE_MUSIC_DUPLICATED, "이미 등록된 제목입니다");
        } else {
          musicalformRef.update({
            'musics': FieldValue.arrayUnion([music.toJson()])
          });
          return Success(null);
        }
      }
    } catch (e) {
      l.el('ComposerRepositoryImpl postMusic catch', e);
      if (e is Failure) rethrow;
      throw Failure(Result.CODE_FAILURE, '제목 등록에 실패하였습니다.');
    }
  }
}
