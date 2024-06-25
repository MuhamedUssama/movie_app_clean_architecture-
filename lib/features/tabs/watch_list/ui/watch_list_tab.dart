import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/core/di/di.dart';
import 'package:movie_app/core/widgets/list_separated_movies.dart';
import 'package:movie_app/features/tabs/watch_list/ui/cubit/watch_list_states.dart';

import '../../../../core/widgets/error_widget.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../core/widgets/no_movies_found.dart';

import 'cubit/watch_list_viw_model.dart';

class WatchListTab extends StatefulWidget {
  const WatchListTab({super.key});

  @override
  State<WatchListTab> createState() => _WatchListTabState();
}

class _WatchListTabState extends State<WatchListTab> {
  final WatchListViewModel viewModel = getIt.get<WatchListViewModel>();
  @override
  void initState() {
    super.initState();
    viewModel.getWatchListMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved Movies'),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 20.h,
          right: 20.w,
          left: 20.w,
        ),
        child: BlocBuilder<WatchListViewModel, WatchListStates>(
          bloc: viewModel,
          builder: (context, state) {
            if (state is WatchListInitialState) {
              return const NoMoviesFoundWidget();
            } else if (state is WatchListLoadingState) {
              return const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: LoadingWidget()),
                  ],
                ),
              );
            } else if (state is WatchListErrorState) {
              return CustomErrorWidget(message: state.message);
            } else if (state is WatchListSuccessState) {
              return Expanded(
                child: ListOfSeparatedMovies(movies: state.movies),
              );
            } else {
              return const NoMoviesFoundWidget();
            }
          },
        ),
      ),
    );
  }
}
