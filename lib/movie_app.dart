import 'package:flutter/material.dart';
import 'package:movie_app/config/routes/app_router.dart';
import 'package:movie_app/config/routes/routes_name.dart';
import 'package:movie_app/config/theme/app_colors.dart';

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.splashScreen,
      onGenerateRoute: (settings) => AppRouters.onGenerate(settings),
      theme: ThemeData(scaffoldBackgroundColor: AppColors.scaffoldColor),
    );
  }
}
