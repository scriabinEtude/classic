import 'package:classic/common/object/status/status.dart';
import 'package:classic/data/const/code.dart';
import 'package:classic/presentation/screen/login/components/fail_text.dart';
import 'package:classic/presentation/screen/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:classic/bloc/register/register_bloc.dart';
import 'package:classic/bloc/register/register_event.dart';
import 'package:classic/bloc/register/register_state.dart';
import 'package:classic/presentation/widget/logo.dart';
import 'package:classic/presentation/screen/login/components/filled_button.dart';

import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  static const routeName = "/login/register";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _nicknameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _idController.dispose();
    _nicknameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: BlocConsumer<RegisterBloc, RegisterState>(
        listener: (context, state) {
          state.status.whenOrNull(success: (code) {
            if (code == CODE_USER_REGISTER_SUCCESS) {
              context.goNamed(LoginScreen.routeName);
            }
          });
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
            floatingActionButton: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: LoginScreenFilledButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() == true) {
                    BlocProvider.of<RegisterBloc>(context)
                        .add(RegisterEvent.regist(
                      _idController.text,
                      _nicknameController.text,
                      _passwordController.text,
                    ));
                  }
                },
                text: '완료',
                status: state.status,
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const Logo(),
                      const Text(
                        '회원 가입',
                        style: TextStyle(fontSize: 16),
                      ),
                      if (state.status is StatusFail)
                        FailText((state.status as StatusFail).message),
                    ],
                  ),
                  _NamePasswordForm(
                    formKey: _formKey,
                    idController: _idController,
                    nicknameController: _nicknameController,
                    passwordController: _passwordController,
                  ),
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

class _NamePasswordForm extends StatelessWidget {
  const _NamePasswordForm({
    required this.formKey,
    required this.idController,
    required this.nicknameController,
    required this.passwordController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController idController;
  final TextEditingController nicknameController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            controller: idController,
            decoration: const InputDecoration(
              label: Text('이메일'),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "이메일을 입력해주세요.";
              } else {
                return null;
              }
            },
          ),
          TextFormField(
            controller: nicknameController,
            decoration: const InputDecoration(
              label: Text('닉네임'),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "닉네임을 입력해 주세요";
              } else if (value.length > 16) {
                return "닉네임은 16자리를 넘을 수 없습니다.";
              } else {
                return null;
              }
            },
          ),
          TextFormField(
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              label: Text('비밀번호'),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "비밀번호를 입력해 주세요";
              } else if (value.length > 16 || 8 > value.length) {
                return "비밀번호는 8~16자리여야 합니다.";
              } else if (!RegExp(
                      r'^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^*+=-]).{8,16}$')
                  .hasMatch(value)) {
                return "영문 대소문자, 숫자, 특수문자를 포함해야 합니다.";
              } else {
                return null;
              }
            },
          ),
        ],
      ),
    );
  }
}
