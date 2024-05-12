import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/config/theme/app_text.dart';
import 'package:movie_app/core/di/di.dart';
import 'package:movie_app/core/widgets/error_widget.dart';
import 'package:movie_app/core/widgets/loading_widget.dart';

import 'cubit/categories_list/categories_states.dart';
import 'cubit/categories_list/categories_view_model.dart';
import 'widgets/custom_category_widget.dart';

class BrowseTab extends StatelessWidget {
  const BrowseTab({super.key});

  @override
  Widget build(BuildContext context) {
    CategoriesViewModel viewModel = getIt.get<CategoriesViewModel>();
    viewModel.getCategires();
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          top: 40.h,
          left: 18.w,
          right: 18.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Browse Category", style: AppText.categoryScreenTitle),
            SizedBox(height: 18.h),
            BlocBuilder<CategoriesViewModel, CategoriesStates>(
              bloc: viewModel,
              builder: (context, state) {
                if (state is CategoriesErrorState) {
                  return CustomErrorWidget(message: state.errorMessage);
                } else if (state is CategoriesSuccessState) {
                  print(
                      "Number of categories >>>>>>>>>>> ${state.categories?.length}");
                  return Expanded(
                    child: GridView.builder(
                      itemCount: state.categories?.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 30.w,
                        mainAxisSpacing: 36.h,
                        childAspectRatio: 16 / 10,
                      ),
                      itemBuilder: (context, index) => CustomCategoryWidget(
                        categoryName: state.categories?[index].name ?? "",
                      ),
                    ),
                  );
                } else {
                  return const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(child: LoadingWidget()),
                      ],
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
