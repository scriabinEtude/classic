import 'package:classic/bloc/composer/register/composer_register_bloc.dart';
import 'package:classic/bloc/home/home_bloc.dart';
import 'package:classic/bloc/link/register/link_register_bloc.dart';
import 'package:classic/bloc/user/user_event.dart';
import 'package:classic/data/model/link.dart';
import 'package:classic/presentation/screen/composer/composer_register_screen.dart';
import 'package:classic/presentation/screen/composer/musical_form_register_screen.dart';
import 'package:classic/presentation/screen/era/era_register_screen.dart';
import 'package:classic/presentation/screen/link/link_detail_screen.dart';
import 'package:classic/presentation/screen/link/link_register_screen.dart';
import 'package:classic/presentation/screen/music/music_register_screen.dart';
import 'package:classic/presentation/screen/player/player_register_screen.dart';
import 'package:classic/presentation/screen/search/search_screen.dart';
import 'package:classic/data/enum/search_type.dart';
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
import 'package:classic/presentation/screen/person/person_register_screen.dart';

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
          body: Center(child: Text('잘못된 접근입니다.')),
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
                  BlocProvider.of<UserBloc>(context)
                      .add(const UserEvent.initStatus());
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
                  path: 'search/:searchType',
                  builder: (context, state) {
                    return SearchScreen(
                      type: SearchType
                          .values[int.parse(state.params['searchType']!)],
                    );
                  },
                  routes: [
                    GoRoute(
                      path: ':initSearch',
                      builder: (context, state) {
                        return SearchScreen(
                          type: SearchType
                              .values[int.parse(state.params['searchType']!)],
                          initSearch: state.params['initSearch'],
                        );
                      },
                    ),
                  ]),
              GoRoute(
                path: 'music/regist/:name',
                name: MusicRegisterScreen.routeName,
                builder: (context, state) => MusicRegisterScreen(
                  name: state.params['name']!,
                ),
              ),
              GoRoute(
                path: 'person/regist/:name',
                name: PersonRegisterScreen.routeName,
                builder: (context, state) => PersonRegisterScreen(
                  name: state.params['name']!,
                ),
              ),
              GoRoute(
                path: 'era/regist/:name',
                name: EraRegisterScreen.routeName,
                builder: (context, state) => EraRegisterScreen(
                  name: state.params['name']!,
                ),
              ),
              GoRoute(
                  path: 'link/detail/:linkId',
                  name: LinkDetailScreen.routeName,
                  builder: ((context, state) {
                    Link link;
                    link = state.extra as Link;
                    return LinkDetailScreen(
                      link: link,
                    );
                  })),
              GoRoute(
                  path: 'link/register',
                  name: LinkRegisterScreen.routeName,
                  builder: (context, state) => BlocProvider(
                      create: (context) => LinkRegisterBloc(),
                      child: const LinkRegisterScreen()),
                  routes: [
                    GoRoute(
                      path: 'composer',
                      name: ComposerRegisterScreen.routeName,
                      builder: (context, state) => BlocProvider(
                          create: (context) => ComposerRegisterBloc(),
                          child: const ComposerRegisterScreen()),
                    ),
                    GoRoute(
                      path: 'player',
                      name: PlayerRegisterScreen.routeName,
                      builder: (context, state) => BlocProvider(
                          create: (context) => ComposerRegisterBloc(),
                          child: const PlayerRegisterScreen()),
                    ),
                    GoRoute(
                      path: ':composerId/musicalForm',
                      builder: (context, state) => BlocProvider(
                          create: (context) => ComposerRegisterBloc(),
                          child: MusicalFormRegisterScreen(
                            composerId: state.params['composerId']!,
                          )),
                    ),
                    // GoRoute(
                    //   path: ':composerId/:musicalFormId/music',
                    //   builder: (context, state) => BlocProvider(
                    //       create: (context) => ComposerRegisterBloc(),
                    //       child: MusicRegisterScreen(
                    //           composerId: state.params['composerId']!,
                    //           musicalFormId: state.params['musicalFormId']!)),
                    // ),
                  ]),
            ])
      ],
    );
  }
}
