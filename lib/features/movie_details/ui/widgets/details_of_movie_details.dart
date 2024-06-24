import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/features/movie_details/domain/models/movie_details/movie_details.dart';

import '../../../../config/theme/app_colors.dart';
import '../../../../config/theme/app_text.dart';
import 'custom_geners_widget.dart';
import 'custom_movie_image_card.dart';

class DetailsOfMovieDetails extends StatelessWidget {
  final MovieDetails movie;

  const DetailsOfMovieDetails({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            movie.title ?? "",
            style: AppText.movieDetailsTitle,
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                movie.releaseDate ?? "",
                style: AppText.movieDetailsDate,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star_rate_rounded,
                    color: AppColors.accent,
                  ),
                  SizedBox(width: 6.w),
                  Text(
                    "${movie.voteAverage}",
                    style: AppText.movieDetailsOverView,
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              Expanded(
                flex: 35,
                child: customMovieDetailsImageCard(
                  context: context,
                  movie: movie,
                  heightOfImage: 200.h,
                  widthOfImage: 130.w,
                  heightOfTicket: 36.h,
                  widthOfTicket: 27.w,
                  iconSize: 18,
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                flex: 65,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      spacing: 6.w,
                      runSpacing: 6.h,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      verticalDirection: VerticalDirection.down,
                      children: [
                        for (var genre in movie.genres!)
                          customGenersWidget(genre.name),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      movie.overview ?? "",
                      style: AppText.movieDetailsOverView,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
