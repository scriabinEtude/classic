import 'package:classic/bloc/home/home_bloc.dart';
import 'package:classic/presentation/screen/link/link_register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:classic/bloc/register/register_bloc.dart';
import 'package:classic/bloc/user/user_bloc.dart';
import 'package:classic/presentation/screen/home/home_screen.dart';
import 'package:classic/presentation/screen/login/login_screen.dart';
import 'package:classic/presentation/screen/login/register_screen.dart';
import 'package:classic/presentation/screen/splash_screen.dart';
import 'package:classic/presentation/screen/user_info/user_screen.dart';

class GrassRouter {
  final List<String> noLoginRequireds;
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  GrassRouter({required this.noLoginRequireds});

  factory GrassRouter.preDefinedNoLoginRequireds() {
    return GrassRouter(noLoginRequireds: [
      SplashScreen.routeName,
      HomeScreen.routeName,
      LoginScreen.routeName,
      RegisterScreen.routeName,
    ]);
  }

  GoRouter getRouter() {
    return GoRouter(
      navigatorKey: _navigatorKey,
      debugLogDiagnostics: true,
      initialLocation: "/splash",
      errorBuilder: (context, state) {
        return const Scaffold(
          body: Text('error'),
        );
      },
      redirect: (context, state) {
        if (noLoginRequireds.contains(state.location)) {
          return state.location;
        }

        UserBloc userbloc = BlocProvider.of<UserBloc>(context);

        if (userbloc.user == null) {
          return "/login";
        } else {
          return state.location;
        }
      },
      routes: [
        GoRoute(
            path: '/',
            name: HomeScreen.routeName,
            builder: ((context, state) => BlocProvider(
                  create: (context) => HomeBloc(),
                  child: const HomeScreen(),
                )),
            routes: [
              GoRoute(
                path: 'splash',
                name: SplashScreen.routeName,
                builder: (context, state) => const SplashScreen(),
              ),
              GoRoute(
                path: 'user',
                name: UserScreen.routeName,
                builder: (context, state) => const UserScreen(),
              ),
              GoRoute(
                path: 'login',
                name: LoginScreen.routeName,
                builder: (context, state) {
                  return LoginScreen();
                },
                routes: [
                  GoRoute(
                    path: 'register',
                    name: RegisterScreen.routeName,
                    builder: (context, state) => BlocProvider(
                      create: (context) => RegisterBloc(),
                      child: const RegisterScreen(),
                    ),
                  ),
                ],
              ),
              GoRoute(
                path: 'link/register',
                name: LinkRegisterScreen.routeName,
                builder: (context, state) => LinkRegisterScreen(),
              ),
            ])
      ],
    );
  }
}
