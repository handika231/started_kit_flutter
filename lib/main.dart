import 'package:belajar_networking/controller/cubit/user_cubit.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'routes/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return BlocProvider(
          create: (context) => UserCubit(),
          child: MaterialApp.router(
            routerConfig: _appRouter.config(),
            theme: FlexThemeData.light(
              scheme: FlexScheme.mandyRed,
              visualDensity: FlexColorScheme.comfortablePlatformDensity,
            ),
            themeMode: ThemeMode.system,
            debugShowCheckedModeBanner: false,
            title: 'Belajar Networking',
          ),
        );
      },
    );
  }
}
