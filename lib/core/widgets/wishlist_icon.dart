import 'package:flutter/material.dart';

import '../../config/theme/app_colors.dart';

class CustomWishListIcon extends StatelessWidget {
  final double heightOfTicket;
  final double widthOfTicket;
  final double? iconSize;
  const CustomWishListIcon(
      {super.key,
      required this.heightOfTicket,
      required this.widthOfTicket,
      this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightOfTicket == 0
          ? MediaQuery.of(context).size.height * .064
          : heightOfTicket,
      width: widthOfTicket == 0
          ? MediaQuery.of(context).size.width * .09
          : widthOfTicket,
      decoration: const BoxDecoration(
        color: AppColors.wishListBackgorundColor,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
      ),
      child: Center(
        child: Icon(
          Icons.add,
          color: AppColors.white,
          size: iconSize == 0
              ? MediaQuery.of(context).size.width * .08
              : iconSize,
        ),
      ),
    );
  }
}
