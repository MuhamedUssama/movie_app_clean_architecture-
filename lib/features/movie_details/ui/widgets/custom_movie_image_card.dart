import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/app_images.dart';
import 'package:movie_app/features/movie_details/domain/models/movie_details/movie_details.dart';

import '../../../../core/utils/app_strings.dart';
import '../movie_details_screen.dart';
import 'custom_movie_details_watch_list.dart';

Widget customMovieDetailsImageCard({
  required BuildContext context,
  bool withDetails = false,
  double heightOfImage = 0,
  double widthOfImage = 0,
  double heightOfTicket = 0,
  double widthOfTicket = 0,
  bool inDetails = false,
  double iconSize = 0,
  required MovieDetails movie,
}) =>
    InkWell(
      onTap: () {
        if (inDetails == false) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MovieDetailsScreen(movieId: "${movie.id}"),
            ),
          );
        }
      },
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusDirectional.only(
              topStart: const Radius.circular(10),
              topEnd: const Radius.circular(10),
              bottomStart:
                  withDetails ? Radius.zero : const Radius.circular(10),
              bottomEnd: withDetails ? Radius.zero : const Radius.circular(10),
            ),
            child: CachedNetworkImage(
              imageUrl: AppStrings.networkImageBaseUrl + movie.posterPath!,
              errorWidget: (_, __, ___) => Image.asset(
                AppImages.imageTest,
                height: MediaQuery.of(context).size.height * .1,
                width: MediaQuery.of(context).size.width * .4,
                fit: BoxFit.cover,
              ),
              height: heightOfImage == 0
                  ? MediaQuery.of(context).size.height * .2
                  : heightOfImage,
              width: widthOfImage == 0
                  ? MediaQuery.of(context).size.width * .3
                  : widthOfImage,
              fit: BoxFit.cover,
            ),
          ),
          CustomWatchList(
            heightOfTicket: heightOfTicket,
            widthOfTicket: widthOfTicket,
            iconSize: iconSize,
            movieDetails: movie,
          ),
        ],
      ),
    );
