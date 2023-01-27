import 'package:classic/bloc/user/user_bloc.dart';
import 'package:classic/bloc/user/user_event.dart';
import 'package:classic/common/imports.dart';
import 'package:classic/presentation/widget/logo.dart';
import 'package:classic/presentation/screen/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const routeName = '/splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      autoLogin();
      moveHome();
    });
  }

  autoLogin() async {
    BlocProvider.of<UserBloc>(context).add(const UserEvent.autoLogin());
  }

  moveHome() {
    context.goNamed(HomeScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Logo(),
      ),
    );
  }
}
