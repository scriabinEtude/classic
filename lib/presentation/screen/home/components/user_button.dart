part of '../home_screen.dart';

class _GoUser extends StatelessWidget {
  const _GoUser();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        if (state.isLogin) {
          return IconButton(
            onPressed: () {
              context.goNamed(UserScreen.routeName);
            },
            icon: const Icon(Icons.person),
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
