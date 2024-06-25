import 'package:movie_app/features/movie_details/domain/models/movie_details/movie_details.dart';

abstract class WatchListStates {}

class WatchListInitialState extends WatchListStates {}

class WatchListLoadingState extends WatchListStates {}

class WatchListErrorState extends WatchListStates {
  String? message;
  WatchListErrorState(this.message);
}

class WatchListSuccessState extends WatchListStates {
  List<MovieDetails>? movies;
  WatchListSuccessState(this.movies);
}
