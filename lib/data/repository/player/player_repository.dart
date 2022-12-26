import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/model/player.dart';

abstract class PlayerRepository {
  Future<Result<List<Player>>> getPlayers();
}
