import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:classic/bloc/route/route_bloc.dart';
import 'package:classic/presentation/color/color_scheme.dart';

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
      title: 'classic',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      themeMode: ThemeMode.dark,
    );
  }
}
