import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:classic/bloc/route/route_bloc.dart';
import 'package:classic/bloc/user/user_bloc.dart';
import 'package:classic/common/config/di.dart';
import 'package:classic/common/config/app_config.dart';
import 'package:classic/common/config/route.dart';
import 'package:classic/presentation/screen/classic.dart';

void mainCommon(AppConfig appConfig) async {
  await Di.setup(appConfig);
  final GrassRouter grassRouter = GrassRouter.preDefinedNoLoginRequireds();
  final UserBloc userBloc = UserBloc();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => userBloc),
        BlocProvider(
            create: (context) => RouteBloc(
                  grassRouter: grassRouter,
                  userBloc: userBloc,
                )),
      ],
      child: const Classic(),
    ),
  );
}
