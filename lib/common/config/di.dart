import 'package:classic/common/config/app_config.dart';
import 'package:classic/data/repository/user/user_repository_firebase.dart';
import 'package:get_it/get_it.dart';
import 'package:classic/data/repository/user/user_repository.dart';

final di = GetIt.instance;

class Di {
  static Future<void> setup(AppConfig config) async {
    /// CLIENT
    //

    /// MONGO
    // Db mongoDB = await Db.create(config.mongoUri);
    // await mongoDB.open();
    di.registerSingleton<UserRepository>(UserRepositoryFirebase());
  }

  static void repositorySetup() {}
}
