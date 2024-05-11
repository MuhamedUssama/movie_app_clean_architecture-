import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/features/tabs/search/domain/models/search_dto.dart';

import '../../config/theme/app_colors.dart';
import '../../config/theme/app_text.dart';
import '../utils/app_images.dart';

class ListOfSeparatedMovied extends StatelessWidget {
  final List<SearchDto>? movies;
  const ListOfSeparatedMovied({super.key, this.movies});
  String truncateTitle(String title) {
    List<String> words = title.split(' ');
    if (words.length <= 4) {
      return title;
    } else {
      return "${words.sublist(0, 4).join(' ')}..";
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: movies?.length ?? 0,
      separatorBuilder: (context, index) => Container(
        height: 0.5,
        margin: EdgeInsets.symmetric(vertical: 12.h),
        width: MediaQuery.of(context).size.width * .8,
        color: AppColors.grey,
      ),
      itemBuilder: (context, index) {
        return Row(
          children: [
            Expanded(
              flex: 45,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.r),
                child: CachedNetworkImage(
                  imageUrl:
                      "https://image.tmdb.org/t/p/original/${movies?[index].backdropPath}",
                  errorWidget: (_, __, ___) => Image.asset(
                    AppImages.imageTest,
                    height: 90.h,
                    width: 140.w,
                    fit: BoxFit.fitWidth,
                  ),
                  height: 90.h,
                  width: 140.w,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              flex: 55,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movies?[index].originalTitle ?? "",
                    style: AppText.searchMovieTitle,
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    movies?[index].releaseDate ?? "No date available",
                    style: AppText.searchDate,
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    truncateTitle(movies?[index].overview ?? ""),
                    style: AppText.searchDate,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
