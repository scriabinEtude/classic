import 'package:classic/common/config/app_config.dart';
import 'package:classic/common/module/firebase/db.dart';
import 'package:classic/data/repository/composer/composer_repository.dart';
import 'package:classic/data/repository/composer/composer_repository_impl.dart';
import 'package:classic/data/repository/link/link/link_repository.dart';
import 'package:classic/data/repository/link/link/link_repository_impl.dart';
import 'package:classic/data/repository/link/register/link_register_repository.dart';
import 'package:classic/data/repository/link/register/link_register_repository_impl.dart';
import 'package:classic/data/repository/user/user_repository_impl.dart';
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
    di.registerSingleton<UserRepository>(UserRepositoryImpl(db));
    di.registerSingleton<LinkRegisterRepository>(
        LinkRegisterRepositoryImpl(db));
    di.registerSingleton<LinkRepository>(LinkRepositoryImpl(db));
    di.registerSingleton<ComposerRepository>(ComposerRepositoryImpl(db));
  }
}
