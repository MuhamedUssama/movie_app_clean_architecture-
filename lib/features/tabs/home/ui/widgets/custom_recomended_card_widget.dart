import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/config/theme/app_colors.dart';
import 'package:movie_app/config/theme/app_text.dart';
import 'package:movie_app/core/utils/app_images.dart';
import 'package:movie_app/features/tabs/home/ui/widgets/wishlist_icon.dart';

class CustomRecomendedCardWidget extends StatelessWidget {
  final String imagePath;
  final int moveID;
  final double voteAverage;
  final String movieTitle;
  final String releaseDate;
  final double heightOfImage = 0;
  final double widthOfImage = 0;
  final double heightOfTicket = 0;
  final double widthOfTicket = 0;
  final bool inDetails = false;
  final bool withDetails = false;

  const CustomRecomendedCardWidget({
    super.key,
    required BuildContext context,
    required this.imagePath,
    required this.moveID,
    required this.voteAverage,
    required this.movieTitle,
    required this.releaseDate,
  });

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
    return InkWell(
      onTap: () {
        // if (inDetails == false) {
        //   Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //           builder: (context) => FilmDetailsScreen("$moveID")));
        // }
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
            child: Container(
              width: 140,
              color: AppColors.cardBackground,
              child: Column(
                children: [
                  CachedNetworkImage(
                    imageUrl: imagePath,
                    errorWidget: (_, __, ___) => Image.asset(
                      AppImages.imageTest,
                      height: MediaQuery.of(context).size.height * .1,
                      width: MediaQuery.of(context).size.width * .4,
                      fit: BoxFit.fitWidth,
                    ),
                    height: heightOfImage == 0
                        ? MediaQuery.of(context).size.height * .18
                        : heightOfImage,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.star_rate_rounded,
                              color: AppColors.accent,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              "$voteAverage",
                              style: AppText.cardTitleAndAverageCount,
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Text(
                          truncateTitle(movieTitle),
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: AppText.cardTitleAndAverageCount,
                        ),
                        const SizedBox(height: 8),
                        Text(releaseDate, style: AppText.date),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomWishListIcon(
            heightOfTicket: heightOfTicket,
            widthOfTicket: widthOfTicket,
          ),
        ],
      ),
    );
  }
}
