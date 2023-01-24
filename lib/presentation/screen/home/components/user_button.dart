part of '../home_screen.dart';

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
