import 'package:classic/bloc/home/home_bloc.dart';
import 'package:classic/bloc/home/home_state.dart';
import 'package:classic/bloc/user/user_bloc.dart';
import 'package:classic/bloc/user/user_state.dart';
import 'package:classic/data/enum/search_type.dart';
import 'package:classic/presentation/screen/link/link_register_screen.dart';
import 'package:classic/presentation/screen/link/link_screen.dart';
import 'package:classic/presentation/screen/login/login_screen.dart';
import 'package:classic/presentation/screen/search/search_screen.dart';
import 'package:classic/presentation/screen/user_info/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

part 'components/user_button.dart';
part 'components/search_button.dart';
part 'components/link_register_button.dart';

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
              centerTitle: false,
              title: const Text(
                "Largo",
              ),
              actions: [
                const _LinkRegisterButton(),
                const _SearchButton(),
                const _GoUser(),
                SizedBox(width: 6.w),
              ],
            ),
            body: const LinkScreen(),
          );
        },
      ),
    );
  }
}
