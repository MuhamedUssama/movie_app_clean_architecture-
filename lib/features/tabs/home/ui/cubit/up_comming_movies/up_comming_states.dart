import 'package:movie_app/features/tabs/home/domain/models/up_comming_movies/up_coming_movies.dart';

abstract class UpCommingMoviesStates {}

class UpCommingMoviesLoadingState extends UpCommingMoviesStates {}

class UpCommingMoviesErrorState extends UpCommingMoviesStates {
  String? message;
  UpCommingMoviesErrorState(this.message);
}

class UpCommingMoviesSuccessState extends UpCommingMoviesStates {
  List<UpComingMovie>? data;
  UpCommingMoviesSuccessState(this.data);
}
