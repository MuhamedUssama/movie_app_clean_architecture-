import 'package:flutter/material.dart';
import 'package:movie_app/config/theme/app_colors.dart';

class PresentationScreen extends StatelessWidget {
  const PresentationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBarWidget(context),
    );
  }

  Widget _bottomNavigationBarWidget(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: AppColors.bottomNavBar,
      ),
      child: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_movies), label: "Browse"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "WatchList"),
        ],
      ),
    );
  }
}
