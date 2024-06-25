import 'package:flutter/material.dart';
import 'package:movie_app/features/movie_details/domain/models/movie_details/movie_details.dart';

import '../../../../config/theme/app_colors.dart';
import '../../data/data_sources/local/cache_movie_details.dart';

class CustomWatchList extends StatefulWidget {
  final double heightOfTicket;
  final double widthOfTicket;
  final double? iconSize;
  final MovieDetails movieDetails;
  const CustomWatchList({
    super.key,
    required this.heightOfTicket,
    required this.widthOfTicket,
    this.iconSize,
    required this.movieDetails,
  });

  @override
  State<CustomWatchList> createState() => _CustomWatchListState();
}

class _CustomWatchListState extends State<CustomWatchList> {
  bool isClicked = false;

  @override
  void initState() {
    super.initState();
    _loadInitialState();
  }

  Future<void> _loadInitialState() async {
    bool saved = await CacheMovieDetails.isMovieSaved(widget.movieDetails.id!);
    setState(() {
      isClicked = saved;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (isClicked) {
          await CacheMovieDetails.removeMovieDetails(widget.movieDetails.id!);
        } else {
          await CacheMovieDetails.saveMovieDetails(widget.movieDetails);
        }
        setState(() {
          isClicked = !isClicked;
        });
      },
      child: Container(
        height: widget.heightOfTicket == 0
            ? MediaQuery.of(context).size.height * .064
            : widget.heightOfTicket,
        width: widget.widthOfTicket == 0
            ? MediaQuery.of(context).size.width * .09
            : widget.widthOfTicket,
        decoration: BoxDecoration(
          color:
              isClicked ? AppColors.accent : AppColors.wishListBackgorundColor,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(10)),
        ),
        child: Center(
          child: Icon(
            Icons.add,
            color: AppColors.white,
            size: widget.iconSize == 0
                ? MediaQuery.of(context).size.width * .08
                : widget.iconSize,
          ),
        ),
      ),
    );
  }
}
