import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:classic/bloc/route/route_bloc.dart';
import 'package:classic/presentation/color/light_color.dart';

class Classic extends StatelessWidget {
  const Classic({super.key});

  @override
  Widget build(BuildContext context) {
    RouteBloc routeBloc = BlocProvider.of<RouteBloc>(context);

    return MaterialApp.router(
      routeInformationParser: routeBloc.state.goRouter.routeInformationParser,
      routerDelegate: routeBloc.state.goRouter.routerDelegate,
      routeInformationProvider:
          routeBloc.state.goRouter.routeInformationProvider,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.red,
        primaryColor: lightColorTheme.primaryColor,
        splashColor: Colors.transparent,
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),
    );
  }
}
