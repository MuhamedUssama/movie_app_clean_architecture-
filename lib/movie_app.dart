import 'package:flutter/material.dart';
import 'package:movie_app/config/routes/app_router.dart';
import 'package:movie_app/config/routes/routes_name.dart';

import 'config/theme/app_theme.dart';

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.movieDetailsScreen,
      onGenerateRoute: (settings) => AppRouters.onGenerate(settings),
    );
  }
}
