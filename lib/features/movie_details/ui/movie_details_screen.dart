import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/config/theme/app_colors.dart';
import 'package:movie_app/config/theme/app_text.dart';
import 'package:movie_app/core/di/di.dart';
import 'package:movie_app/core/widgets/custom_recomended_card_widget.dart';
import 'package:movie_app/core/widgets/loading_widget.dart';
import 'package:movie_app/features/movie_details/domain/models/movie_details/movie_details.dart';
import 'package:movie_app/features/movie_details/domain/models/similar_movies/similar_movie.dart';
import 'package:movie_app/features/movie_details/ui/cubits/similar_movies/similar_movies_states.dart';
import 'package:movie_app/features/movie_details/ui/cubits/similar_movies/similar_movies_view_model.dart';

import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/widgets/error_widget.dart';
import 'cubits/movie_details/movie_details_states.dart';
import 'cubits/movie_details/movie_details_view_model.dart';
import 'widgets/details_of_movie_details.dart';

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
    var similarMoviesViewModel = getIt.get<SimilarMoviesViewModel>();
    similarMoviesViewModel.getSimilarMovies(movieId);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          movie.title ?? "",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(height: 12.h),
            DetailsOfMovieDetails(movie: movie),
            SizedBox(height: 20.h),
            Container(
              height: 300.h,
              width: double.infinity,
              color: AppColors.backgroundList,
              child: Padding(
                padding: EdgeInsets.only(left: 18.w, top: 10.h, bottom: 14.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "More Like This",
                      style: AppText.MovieDetailslistTitle,
                    ),
                    SizedBox(height: 14.h),
                    BlocBuilder<SimilarMoviesViewModel, SimilarMoviesStates>(
                      bloc: similarMoviesViewModel,
                      builder: (context, state) {
                        if (state is SimilarMoviesErrorState) {
                          return CustomErrorWidget(message: state.errorMessage);
                        } else if (state is SimilarMoviesSuccessState) {
                          return buildSimilarMoviesList(state.movies, context);
                        } else {
                          return SizedBox(
                            height: MediaQuery.of(context).size.height,
                            child: const Center(
                              child: LoadingWidget(),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSimilarMoviesList(
      List<SimilarMovie>? movies, BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: movies!.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: CustomRecomendedCardWidget(
            context: context,
            moveID: movies[index].id ?? 1041613,
            imagePath:
                AppStrings.networkImageBaseUrl + movies[index].posterPath!,
            movieTitle: movies[index].title ?? "",
            releaseDate: movies[index].releaseDate ?? "",
            voteAverage: movies[index].voteAverage ?? 0,
          ),
        ),
      ),
    );
  }
}
