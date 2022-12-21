import 'package:classic/bloc/composer/auto_complete/composer_autocomplete_bloc.dart';
import 'package:classic/bloc/composer/auto_complete/composer_autocomplete_event.dart';
import 'package:classic/bloc/home/home_bloc.dart';
import 'package:classic/bloc/home/home_state.dart';
import 'package:classic/bloc/user/user_bloc.dart';
import 'package:classic/bloc/user/user_state.dart';
import 'package:classic/presentation/color/light_color.dart';
import 'package:classic/presentation/screen/link/link_register_screen.dart';
import 'package:classic/presentation/screen/link/link_screen.dart';
import 'package:classic/presentation/screen/login/login_screen.dart';
import 'package:classic/presentation/screen/user_info/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              centerTitle: true,
              title: const Text(
                "classic",
              ),
              actions: const [
                _GoUser(),
              ],
            ),
            floatingActionButton: FloatingActionButton.small(
              backgroundColor: lightColorTheme.primaryColor,
              child: const Icon(Icons.add),
              onPressed: () {
                BlocProvider.of<ComposerAutoCompleteBloc>(context)
                    .add(ComposerAutoCompleteEvent.resetSelect());
                context.pushNamed(LinkRegisterScreen.routeName);
              },
            ),
            body: const LinkScreen(),
          );
        },
      ),
    );
  }
}

class _GoUser extends StatelessWidget {
  const _GoUser();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        if (state.isLogin) {
          return InkWell(
            onTap: () {
              context.goNamed(UserScreen.routeName);
            },
            child: Row(
              children: const [
                Icon(Icons.person),
                SizedBox(width: 20),
              ],
            ),
          );
        }

        return InkWell(
          onTap: () {
            context.goNamed(LoginScreen.routeName);
          },
          child: Row(
            children: const [
              Text('로그인'),
              SizedBox(width: 20),
            ],
          ),
        );
      },
    );
  }
}
