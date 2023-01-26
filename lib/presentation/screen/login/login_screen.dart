import 'package:classic/common/object/status/status.dart';
import 'package:classic/presentation/screen/login/components/fail_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:classic/bloc/user/user_bloc.dart';
import 'package:classic/bloc/user/user_event.dart';
import 'package:classic/bloc/user/user_state.dart';
import 'package:classic/presentation/color/light_color.dart';
import 'package:classic/presentation/components/logo.dart';
import 'package:go_router/go_router.dart';
import 'package:classic/presentation/screen/home/home_screen.dart';
import 'package:classic/presentation/screen/login/components/app_form.dart';
import 'package:classic/presentation/screen/login/components/filled_button.dart';
import 'package:classic/presentation/screen/login/register_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  static const routeName = '/login';
  final formKey = GlobalKey<FormState>();

  final TextEditingController idController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void onLogin(BuildContext context) {
    if (formKey.currentState?.validate() == true) {
      BlocProvider.of<UserBloc>(context).add(UserEvent.login(
        idController.text,
        passwordController.text,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: BlocConsumer<UserBloc, UserState>(
        listener: (context, state) {
          if (state.user != null) {
            context.goNamed(HomeScreen.routeName);
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    LoginScreenFilledButton(
                      onPressed: () => onLogin(context),
                      text: '로그인',
                      status: state.status,
                    ),
                    const _RegisterButton(),
                  ],
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const Logo(),
                      if (state.status is StatusFail)
                        FailText((state.status as StatusFail).message),
                    ],
                  ),
                  AppForm(
                      formKey: formKey,
                      emailController: idController,
                      passwordController: passwordController,
                      onSubmit: onLogin),
                  const SizedBox.shrink(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _RegisterButton extends StatelessWidget {
  const _RegisterButton();

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => context.goNamed(RegisterScreen.routeName),
      child: const Center(
        child: Text(
          '회원가입',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
