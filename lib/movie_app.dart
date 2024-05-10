import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/config/routes/app_router.dart';
import 'package:movie_app/config/routes/routes_name.dart';

import 'config/theme/app_theme.dart';

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // designSize: const Size(412, 892),
      designSize: const Size(360, 820),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Movie App',
        theme: AppTheme.theme,
        debugShowCheckedModeBanner: false,
        initialRoute: RoutesName.splashScreen,
        onGenerateRoute: (settings) => AppRouters.onGenerate(settings),
      ),
    );
  }
}
