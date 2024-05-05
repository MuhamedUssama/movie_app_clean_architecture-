import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/config/theme/app_colors.dart';
import 'package:movie_app/core/di/di.dart';
import 'package:movie_app/core/utils/app_images.dart';
import 'package:movie_app/features/tabs/home/domain/models/popular_movies/popular_movie.dart';
import 'package:movie_app/features/tabs/home/ui/cubit/home_tab_states.dart';
import 'package:movie_app/features/tabs/home/ui/cubit/popular_movies_view_model.dart';
import 'package:movie_app/features/tabs/home/ui/cubit/top_rated_view_model.dart';
import 'package:movie_app/features/tabs/home/ui/cubit/up_comming_view_model.dart';

import 'widgets/card_of_film.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  PopularMoviesViewModel popularMoviesViewModel =
      getIt.get<PopularMoviesViewModel>();

  TopRatedViewModel topRatedViewModel = getIt.get<TopRatedViewModel>();

  UpCommingMoviesViewModel upCommingViewModel =
      getIt.get<UpCommingMoviesViewModel>();

  @override
  void initState() {
    super.initState();
    popularMoviesViewModel.getPopularMovies();
    topRatedViewModel.getTopRatedMovies();
    upCommingViewModel.getUpCommingMovies();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BlocBuilder<PopularMoviesViewModel, HomeTabStates>(
            bloc: popularMoviesViewModel,
            builder: (context, state) {
              if (state is SuccessState) {
                return buildPopularWidget(state.data as List<PopularMovie>?);
              } else if (state is BaseRequestErrorState) {
                return ErrorView(message: state.message);
              } else {
                return SizedBox(
                    height: MediaQuery.of(context).size.height * .35,
                    child: Center(child: LoadingWidget()));
              }
            },
          ),
        ],
      ),
    );
  }

  Widget buildPopularWidget(List<PopularMovie>? popularMovie) {
    return CarouselSlider(
      items: popularMovie!.map((move) {
        return Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network(
                  move.backdropPath ?? AppImages.imageTest,
                  height: MediaQuery.of(context).size.height * .24,
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 5,
                    top: 12,
                    right: 10,
                    left: MediaQuery.of(context).size.width * .36,
                  ),
                  child: Text(
                    move.originalTitle!,
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
                    left: MediaQuery.of(context).size.width * .36,
                  ),
                  child: Text(
                    move.releaseDate!,
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
                  imagePath: move.posterPath!,
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
}
