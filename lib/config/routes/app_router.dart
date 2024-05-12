import 'package:flutter/material.dart';
import 'package:movie_app/config/routes/routes_name.dart';
import 'package:movie_app/features/movie_details/domain/models/movie_details/movie_details.dart';
import 'package:movie_app/features/movie_details/ui/movie_details_screen.dart';
import 'package:movie_app/features/movies_in_category/ui/category_movies_screen.dart';
import 'package:movie_app/features/splash/splash_screen.dart';
import 'package:movie_app/features/tabs/browse/domain/models/category_dto.dart';
import 'package:movie_app/features/tabs/presentation_screen.dart';

class AppRouters {
  static MovieDetails movieDetails = MovieDetails();
  static CategoryDto categoryDto = CategoryDto();

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

      case RoutesName.movieDetailsScreen:
        return MaterialPageRoute(
          builder: (context) =>
              MovieDetailsScreen(movieId: "${movieDetails.id}"),
        );

      case RoutesName.categoryMoviesScreen:
        return MaterialPageRoute(
          builder: (context) => CategoryMoviesScreen(
            genreId: categoryDto.id.toString(),
            categoryName: categoryDto.name ?? "",
          ),
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
