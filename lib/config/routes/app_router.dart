import 'package:flutter/material.dart';
import 'package:movie_app/config/routes/routes_name.dart';
import 'package:movie_app/features/splash/splash_screen.dart';
import 'package:movie_app/features/tabs/presentation_screen.dart';

class AppRouters {
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );

      case RoutesName.presentationScreen:
        return MaterialPageRoute(
          builder: (context) => PresentationScreen(),
        );

      default:
        return MaterialPageRoute(builder: (context) => unDefinePageRoute());
    }
  }

  static Widget unDefinePageRoute() {
    return const Scaffold(
      body: Center(
        child: Text("Un Defined PageRoute"),
      ),
    );
  }
}
