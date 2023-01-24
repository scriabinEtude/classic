import 'package:classic/common/config/bloc_observer.dart';
import 'package:classic/common/config/providers.dart';
import 'package:classic/common/module/firebase/fb.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:classic/common/config/di.dart';
import 'package:classic/common/config/app_config.dart';
import 'package:classic/presentation/screen/classic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void mainCommon(AppConfig appConfig) async {
  WidgetsFlutterBinding.ensureInitialized();
  await FB.init();
  await Di.setup(appConfig);
  Bloc.observer = AppBlocObserver();

  runApp(
    MultiBlocProvider(
      providers: Providers.providers(),
      child: ScreenUtilInit(
          designSize: const Size(430, 932),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: ((context, child) {
            return const Classic();
          })),
    ),
  );
}
