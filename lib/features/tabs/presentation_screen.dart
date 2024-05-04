import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/config/theme/app_colors.dart';
import 'package:movie_app/core/di/di.dart';
import 'package:movie_app/features/tabs/presentation_view_model.dart';

class PresentationScreen extends StatelessWidget {
  PresentationScreen({super.key});

  final PresentationScreenViewModel viewModel =
      getIt.get<PresentationScreenViewModel>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PresentationScreenViewModel, PresentationScreenStates>(
      bloc: viewModel,
      builder: (context, state) {
        return Scaffold(
          body: viewModel.tabs[viewModel.currentIndex],
          bottomNavigationBar: _bottomNavigationBarWidget(context),
        );
      },
    );
  }

  Widget _bottomNavigationBarWidget(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: AppColors.bottomNavBar,
      ),
      child: BottomNavigationBar(
        onTap: (index) {
          viewModel.onTabClick(index);
        },
        currentIndex: viewModel.currentIndex,
        unselectedItemColor: AppColors.grey,
        selectedItemColor: AppColors.accent,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
              size: 28,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_rounded,
              size: 28,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_movies_rounded,
              size: 28,
            ),
            label: "Browse",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              size: 28,
            ),
            label: "WatchList",
          ),
        ],
      ),
    );
  }
}
