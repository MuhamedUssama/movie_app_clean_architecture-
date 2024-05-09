import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/config/theme/app_colors.dart';
import 'package:movie_app/core/utils/app_images.dart';

import 'wishlist_icon.dart';

Widget cardImageOfFilm({
  required BuildContext context,
  required String imagePath,
  bool withDetails = false,
  required int moveID,
  double heightOfImage = 0,
  double widthOfImage = 0,
  double heightOfTicket = 0,
  double widthOfTicket = 0,
  bool inDetails = false,
}) =>
    InkWell(
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
            child: CachedNetworkImage(
              imageUrl: imagePath,
              errorWidget: (_, __, ___) => Image.asset(
                AppImages.imageTest,
                height: MediaQuery.of(context).size.height * .1,
                width: MediaQuery.of(context).size.width * .4,
                fit: BoxFit.cover,
              ),
              height: heightOfImage == 0
                  ? MediaQuery.of(context).size.height * .18
                  : heightOfImage,
              width: widthOfImage == 0
                  ? MediaQuery.of(context).size.width * .26
                  : widthOfImage,
              fit: BoxFit.cover,
            ),
          ),
          CustomWishListIcon(
            heightOfTicket: heightOfTicket,
            widthOfTicket: widthOfTicket,
          ),
        ],
      ),
    );
