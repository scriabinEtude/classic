import 'package:classic/bloc/composer/auto_complete/autocomplete_bloc.dart';
import 'package:classic/bloc/composer/auto_complete/autocomplete_event.dart';
import 'package:classic/bloc/home/home_bloc.dart';
import 'package:classic/bloc/home/home_state.dart';
import 'package:classic/bloc/user/user_bloc.dart';
import 'package:classic/bloc/user/user_state.dart';
import 'package:classic/presentation/color/light_color.dart';
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
                const _SearchButton(),
                SizedBox(width: 16.w),
                const _GoUser(),
              ],
            ),
            floatingActionButton: FloatingActionButton.small(
              backgroundColor: lightColorTheme.primaryColor,
              child: const Icon(Icons.add),
              onPressed: () {
                BlocProvider.of<AutoCompleteBloc>(context)
                    .add(AutoCompleteEvent.resetSelect());
                context.goNamed(LinkRegisterScreen.routeName);
              },
            ),
            body: const LinkScreen(),
          );
        },
      ),
    );
  }
}
