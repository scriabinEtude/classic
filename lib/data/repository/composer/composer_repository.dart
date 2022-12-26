import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/model/composer.dart';
import 'package:classic/data/model/music.dart';
import 'package:classic/data/model/musical_form.dart';

abstract class ComposerRepository {
  Future<Result<void>> register(Composer composer);
  Future<Result<List<Composer>>> getAllComposerSearch();
  Future<Result<Composer>> getComposerById(String id);
  Future<Result<List<MusicalForm>>> getMusicalFormByComposerId(
      String composerId);
  Future<Result<void>> postMusicalForm(
      String composerId, MusicalForm musicalForm);

  Future<Result<List<Music>>> getMusicByMusicalFormId(String musicalFormId);
  Future<Result<void>> postMusic(
      String composerId, String musicalFormId, Music music);
  // Future<Result<void>> post(
  //     String composerId, String musicalFormId, Music music);
  // Future<Result<void>> postMusic(
  //     String composerId, String musicalFormId, Music music);
}
