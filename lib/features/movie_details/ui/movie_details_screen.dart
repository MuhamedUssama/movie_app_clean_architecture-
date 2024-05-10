import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/di/di.dart';
import 'package:movie_app/core/widgets/loading_widget.dart';

import '../../../core/widgets/error_widget.dart';
import 'cubits/movie_details/movie_details_states.dart';
import 'cubits/movie_details/movie_details_view_model.dart';

class MovieDetailsScreen extends StatefulWidget {
  final String movieId;
  const MovieDetailsScreen({super.key, required this.movieId});

  @override
  State<MovieDetailsScreen> createState() => _MovieDetailsScreenState();
}

class _MovieDetailsScreenState extends State<MovieDetailsScreen> {
  var movieDetailsVewModel = getIt.get<MovieDetailsViewModel>();

  @override
  void initState() {
    super.initState();
    movieDetailsVewModel.getMovie(widget.movieId);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailsViewModel, MovieDetailsStates>(
      bloc: movieDetailsVewModel,
      builder: (context, state) {
        if (state is MovieDetailsErrorState) {
          return CustomErrorWidget(message: state.errorMessage);
        } else if (state is MovieDetailsSuccessState) {
          return Scaffold(
            appBar: AppBar(
              title: Text(state.movieDetails!.title ?? ""),
            ),
            body: Center(
              child: Text(
                'ID: ${widget.movieId}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                ),
              ),
            ),
          );
        } else {
          return SizedBox(
            height: MediaQuery.of(context).size.height,
            child: const Center(
              child: LoadingWidget(),
            ),
          );
        }
      },
    );
  }
}
