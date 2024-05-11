import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/core/di/di.dart';
import 'package:movie_app/features/tabs/search/ui/cubit/search_states.dart';

import '../../../../core/widgets/error_widget.dart';
import '../../../../core/widgets/list_separated_movies.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../core/widgets/no_movies_found.dart';
import 'cubit/search_view_model.dart';
import 'widgets/custom_search_textfield.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({super.key});

  @override
  State<SearchTab> createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  SearchViewModel viewModel = getIt.get<SearchViewModel>();

  @override
  void initState() {
    super.initState();
    viewModel.getSearchedMovies();
  }

  @override
  void dispose() {
    super.dispose();
    viewModel.searchQuery.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          children: [
            CustomSearchTextField(
              controller: viewModel.searchQuery,
              function: viewModel.getSearchedMovies,
            ),
            SizedBox(height: 20.h),
            BlocBuilder<SearchViewModel, SearchStates>(
              bloc: viewModel,
              builder: (context, state) {
                if (state is SearchLoadingState) {
                  return const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(child: LoadingWidget()),
                      ],
                    ),
                  );
                } else if (state is SearchErrorState) {
                  return CustomErrorWidget(message: state.errorMessage);
                } else if (state is SearchSuccessState) {
                  return Expanded(
                      child:
                          ListOfSeparatedMovied(movies: state.searchResults));
                } else if (state is SearchInitialState) {
                  return const NoMoviesFoundWidget();
                } else {
                  return const NoMoviesFoundWidget();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
