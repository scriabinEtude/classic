import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/model/player.dart';

@Deprecated("person")
abstract class PlayerRepository {
  Future<Result<List<Player>>> getPlayers();
  Future<Result<void>> postPlayer(Player player);
}
