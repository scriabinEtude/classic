import 'package:classic/common/config/app_config.dart';
import 'package:classic/common/module/firebase/db.dart';
import 'package:classic/data/repository/composer/composer_repository.dart';
import 'package:classic/data/repository/composer/composer_repository_impl.dart';
import 'package:classic/data/repository/conductor/conductor_repository.dart';
import 'package:classic/data/repository/conductor/conductor_repository_impl.dart';
import 'package:classic/data/repository/era/era_repository.dart';
import 'package:classic/data/repository/era/era_repository_impl.dart';
import 'package:classic/data/repository/link/link/link_repository.dart';
import 'package:classic/data/repository/link/link/link_repository_impl.dart';
import 'package:classic/data/repository/link/register/link_register_repository.dart';
import 'package:classic/data/repository/link/register/link_register_repository_impl.dart';
import 'package:classic/data/repository/player/player_repository.dart';
import 'package:classic/data/repository/player/player_repository_impl.dart';
import 'package:classic/data/repository/search/search_repository.dart';
import 'package:classic/data/repository/search/search_repository_test.dart';
import 'package:classic/data/repository/user/user_repository_impl.dart';
import 'package:get_it/get_it.dart';
import 'package:classic/data/repository/user/user_repository.dart';
import 'package:classic/data/repository/person/person_repository.dart';
import 'package:classic/data/repository/person/person_repository_impl.dart';

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
    di.registerSingleton<SearchRepository>(SearchRepositoryTest());
    di.registerSingleton<LinkRepository>(LinkRepositoryImpl(db));
    di.registerSingleton<PersonRepository>(PersonRepositoryImpl());
    di.registerSingleton<EraRepository>(EraRepositoryImpl());
    di.registerSingleton<ComposerRepository>(ComposerRepositoryImpl(db));
    di.registerSingleton<PlayerRepository>(PlayerRepositoryImpl(db));
    di.registerSingleton<ConductorRepository>(ConductorRepositoryImpl(db));
  }
}
