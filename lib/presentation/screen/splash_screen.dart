import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:classic/presentation/components/logo.dart';
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
      moveHome();
    });
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
