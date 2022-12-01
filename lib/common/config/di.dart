import 'package:classic/common/config/app_config.dart';
import 'package:classic/data/repository/user/user_repository_mongo.dart';
import 'package:get_it/get_it.dart';
import 'package:classic/data/repository/user/user_repository.dart';
import 'package:mongo_dart/mongo_dart.dart';

final di = GetIt.instance;

class Di {
  static Future<void> setup(AppConfig config) async {
    Db mongoDB = await Db.create(config.mongoUri);
    await mongoDB.open();
    di.registerSingleton<UserRepository>(UserRepositoryMongo(mongoDB));
  }

  static void repositorySetup() {}
}
