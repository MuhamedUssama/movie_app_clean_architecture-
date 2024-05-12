import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/config/theme/app_colors.dart';
import 'package:movie_app/config/theme/app_text.dart';
import 'package:movie_app/core/di/di.dart';
import 'package:movie_app/core/utils/app_images.dart';
import 'package:movie_app/core/widgets/error_widget.dart';
import 'package:movie_app/core/widgets/loading_widget.dart';
import 'package:movie_app/features/tabs/home/domain/models/popular_movies/popular_movie.dart';
import 'package:movie_app/features/tabs/home/domain/models/top_rated_movies/top_rated_movie.dart';
import 'package:movie_app/features/tabs/home/domain/models/up_comming_movies/up_coming_movies.dart';
import 'package:movie_app/features/tabs/home/ui/cubit/popular_movies/popular_movies_view_model.dart';
import 'package:movie_app/features/tabs/home/ui/cubit/top_rated_movies/top_rated_view_model.dart';
import 'package:movie_app/features/tabs/home/ui/cubit/up_comming_movies/up_comming_view_model.dart';

import 'cubit/popular_movies/popular_movies_states.dart';
import 'cubit/top_rated_movies/top_rated_movies_states.dart';
import 'cubit/up_comming_movies/up_comming_states.dart';
import '../../../../core/widgets/card_of_film.dart';
import '../../../../core/widgets/custom_recomended_card_widget.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    PopularMoviesViewModel popularMoviesViewModel =
        getIt.get<PopularMoviesViewModel>();

    TopRatedViewModel topRatedViewModel = getIt.get<TopRatedViewModel>();

    UpCommingMoviesViewModel upCommingViewModel =
        getIt.get<UpCommingMoviesViewModel>();

    popularMoviesViewModel.getPopularMovies();
    topRatedViewModel.getTopRatedMovies();
    upCommingViewModel.getUpCommingMovies();
    return SingleChildScrollView(
      child: Column(
        children: [
          BlocBuilder<PopularMoviesViewModel, PopularMoviesStates>(
            bloc: popularMoviesViewModel,
            builder: (context, state) {
              if (state is PopularMoviesSuccessState) {
                return buildPopularWidget(state.data, context);
              } else if (state is PopularMoviesErrorState) {
                return CustomErrorWidget(message: state.message);
              } else {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * .35,
                  child: const Center(child: LoadingWidget()),
                );
              }
            },
          ),
          const SizedBox(height: 24),
          BlocBuilder<TopRatedViewModel, TopRatedMoviesStates>(
            bloc: topRatedViewModel,
            builder: (context, state) {
              if (state is TopRatedMoviesSuccessState) {
                return buildNewReleases(state.data);
              } else if (state is TopRatedMoviesErrorState) {
                return CustomErrorWidget(message: state.message);
              } else {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * .35,
                  child: const Center(child: LoadingWidget()),
                );
              }
            },
          ),
          const SizedBox(height: 24),
          BlocBuilder<UpCommingMoviesViewModel, UpCommingMoviesStates>(
            bloc: upCommingViewModel,
            builder: (context, state) {
              if (state is UpCommingMoviesSuccessState) {
                return buildRecomended(state.data!);
              } else if (state is UpCommingMoviesErrorState) {
                return CustomErrorWidget(message: state.message);
              } else {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * .35,
                  child: const Center(child: LoadingWidget()),
                );
              }
            },
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget buildPopularWidget(
      List<PopularMovie>? popularMovie, BuildContext context) {
    double heightOfImage = 0;
    return CarouselSlider(
      items: popularMovie!.map((move) {
        return Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CachedNetworkImage(
                  imageUrl:
                      "https://image.tmdb.org/t/p/original/${move.backdropPath}",
                  errorWidget: (_, __, ___) => Image.asset(
                    AppImages.imageTest,
                    height: MediaQuery.of(context).size.height * .24,
                    fit: BoxFit.cover,
                  ),
                  height: heightOfImage == 0
                      ? MediaQuery.of(context).size.height * .24
                      : heightOfImage,
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 5,
                    top: 12,
                    right: 10,
                    left: MediaQuery.of(context).size.width * .4,
                  ),
                  child: Text(
                    move.originalTitle ?? "",
                    style: const TextStyle(
                      color: AppColors.white,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.start,
                    maxLines: 3,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 10,
                    top: 5,
                    right: 10,
                    left: MediaQuery.of(context).size.width * .4,
                  ),
                  child: Text(
                    move.releaseDate ?? "",
                    style: const TextStyle(
                      color: AppColors.grey,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.start,
                    maxLines: 3,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 21.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: cardImageOfFilm(
                  context: context,
                  imagePath:
                      "https://image.tmdb.org/t/p/original/${move.backdropPath}",
                  moveID: move.id!,
                ),
              ),
            ),
          ],
        );
      }).toList(),
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * .34,
        aspectRatio: 16 / 9,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.ease,
      ),
    );
  }

  Widget buildNewReleases(List<TopRatedMovie>? topRatedMovie) {
    return Container(
      height: 220,
      width: double.infinity,
      color: AppColors.backgroundList,
      child: Padding(
        padding: const EdgeInsets.only(left: 21.0, bottom: 12, top: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("New Releases", style: AppText.listTitle),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: topRatedMovie!.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: cardImageOfFilm(
                      context: context,
                      imagePath:
                          "https://image.tmdb.org/t/p/original/${topRatedMovie[index].posterPath}",
                      moveID: topRatedMovie[index].id!,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRecomended(List<UpComingMovie> recomendedMovie) {
    return Container(
      height: 320,
      width: double.infinity,
      color: AppColors.backgroundList,
      child: Padding(
        padding: const EdgeInsets.only(left: 21.0, bottom: 12, top: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Recomended", style: AppText.listTitle),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: recomendedMovie.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: CustomRecomendedCardWidget(
                    context: context,
                    imagePath:
                        "https://image.tmdb.org/t/p/original/${recomendedMovie[index].posterPath}",
                    moveID: recomendedMovie[index].id!,
                    movieTitle: recomendedMovie[index].title ?? "",
                    voteAverage: recomendedMovie[index].voteAverage!,
                    releaseDate: recomendedMovie[index].releaseDate ?? "",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
