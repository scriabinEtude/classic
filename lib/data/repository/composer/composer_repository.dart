import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/model/composer.dart';
import 'package:classic/data/model/musical_form.dart';

abstract class ComposerRepository {
  Future<Result<void>> register(Composer composer);
  Future<Result<List<Composer>>> getAllComposerSearch();
  Future<Result<Composer>> getComposerById(String id);
  Future<Result<void>> postMusicalForm(
      String composerId, MusicalForm musicalForm);
}
