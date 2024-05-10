import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/core/di/di.dart';
import 'package:movie_app/core/widgets/loading_widget.dart';
import 'package:movie_app/features/movie_details/domain/models/movie_details/movie_details.dart';

import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/widgets/error_widget.dart';
import 'cubits/movie_details/movie_details_states.dart';
import 'cubits/movie_details/movie_details_view_model.dart';

class MovieDetailsScreen extends StatelessWidget {
  final String movieId;
  const MovieDetailsScreen({super.key, required this.movieId});

  @override
  Widget build(BuildContext context) {
    var movieDetailsVewModel = getIt.get<MovieDetailsViewModel>();

    movieDetailsVewModel.getMovie(movieId);

    return BlocBuilder<MovieDetailsViewModel, MovieDetailsStates>(
      bloc: movieDetailsVewModel,
      builder: (context, state) {
        if (state is MovieDetailsErrorState) {
          return CustomErrorWidget(message: state.errorMessage);
        } else if (state is MovieDetailsSuccessState) {
          return buildMovieDetailsScreen(state.movieDetails!, context);
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

  Widget buildMovieDetailsScreen(MovieDetails movie, BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          movie.title ?? "",
        ),
      ),
      body: Column(
        children: [
          CachedNetworkImage(
            height: 218.h,
            width: double.infinity,
            imageUrl: AppStrings.networkImageBaseUrl + movie.backdropPath!,
            errorWidget: (_, __, ___) => Image.asset(
              AppImages.imageTest,
              height: MediaQuery.of(context).size.height * .24,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
