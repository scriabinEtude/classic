import 'package:classic/bloc/composer/auto_complete/autocomplete_bloc.dart';
import 'package:classic/bloc/link/link/link_bloc.dart';
import 'package:classic/bloc/route/route_bloc.dart';
import 'package:classic/bloc/user/user_bloc.dart';
import 'package:classic/common/config/route.dart';
import 'package:classic/common/imports.dart';

class Providers {
  static providers() {
    final GrassRouter grassRouter = GrassRouter.preDefinedNoLoginRequireds();
    final UserBloc userBloc = UserBloc();

    return [
      BlocProvider(create: (context) => userBloc),
      BlocProvider(
          create: (context) => RouteBloc(
                grassRouter: grassRouter,
                userBloc: userBloc,
              )),
      BlocProvider(create: (context) => LinkBloc()),
      BlocProvider(create: (context) => AutoCompleteBloc()),
    ];
  }
}
