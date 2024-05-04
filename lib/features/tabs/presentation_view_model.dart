import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tabs/browse/ui/browse_tab.dart';
import 'package:movie_app/features/tabs/home/ui/home_tab.dart';
import 'package:movie_app/features/tabs/search/ui/search_tab.dart';
import 'package:movie_app/features/tabs/watch_list/ui/watch_list_tab.dart';

@injectable
class PresentationScreenViewModel extends Cubit<PresentationScreenStates> {
  @factoryMethod
  PresentationScreenViewModel() : super(HomeTabState());

  int currentIndex = 0;

  List<Widget> tabs = [
    HomeTab(),
    SearchTab(),
    BrowseTab(),
    WatchListTab(),
  ];

  void onTabClick(int tabIndex) {
    if (tabIndex == 0) {
      currentIndex = 0;
      emit(HomeTabState());
    } else if (tabIndex == 1) {
      currentIndex = 1;
      emit(SearchTabState());
    } else if (tabIndex == 2) {
      currentIndex = 2;
      emit(BrowseTabState());
    } else if (tabIndex == 3) {
      currentIndex = 3;
      emit(WatchListTabState());
    }
  }
}

abstract class PresentationScreenStates {}

class HomeTabState extends PresentationScreenStates {}

class SearchTabState extends PresentationScreenStates {}

class BrowseTabState extends PresentationScreenStates {}

class WatchListTabState extends PresentationScreenStates {}
