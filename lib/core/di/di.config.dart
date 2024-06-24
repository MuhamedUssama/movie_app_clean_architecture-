// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/movie_details/data/api/api_manager.dart' as _i14;
import '../../features/movie_details/data/data_sources/remote/movie_deatils/movie_details_data_source.dart'
    as _i15;
import '../../features/movie_details/data/data_sources/remote/movie_deatils/movie_details_data_source_impl.dart'
    as _i16;
import '../../features/movie_details/data/data_sources/remote/similar_movies/similar_movies_data_source.dart'
    as _i37;
import '../../features/movie_details/data/data_sources/remote/similar_movies/similar_movies_data_source_impl.dart'
    as _i38;
import '../../features/movie_details/data/repository_impl/movie_details_repository_impl.dart'
    as _i18;
import '../../features/movie_details/data/repository_impl/similar_movies_repository_impl.dart'
    as _i40;
import '../../features/movie_details/domain/repository/movie_details_repository.dart'
    as _i17;
import '../../features/movie_details/domain/repository/similar_movies_repository.dart'
    as _i39;
import '../../features/movie_details/domain/usecases/movie_details_usecase.dart'
    as _i19;
import '../../features/movie_details/domain/usecases/similar_movies_usecase.dart'
    as _i41;
import '../../features/movie_details/ui/cubits/movie_details/movie_details_view_model.dart'
    as _i20;
import '../../features/movie_details/ui/cubits/similar_movies/similar_movies_view_model.dart'
    as _i42;
import '../../features/movies_in_category/data/api/category_movies_api_manager.dart'
    as _i7;
import '../../features/movies_in_category/data/data_source/category_movies_data_source.dart'
    as _i8;
import '../../features/movies_in_category/data/data_source/category_movies_data_source_impl.dart'
    as _i9;
import '../../features/movies_in_category/data/repository_impl/category_movies_repository_impl.dart'
    as _i11;
import '../../features/movies_in_category/domain/repository/category_movies_repository.dart'
    as _i10;
import '../../features/movies_in_category/domain/usecases/category_movies_usecase.dart'
    as _i12;
import '../../features/movies_in_category/ui/cubit/category_movies_view_model.dart'
    as _i13;
import '../../features/tabs/browse/data/api/categories_api_manager.dart' as _i6;
import '../../features/tabs/browse/data/data_sources/remote/online_categories_data_source.dart'
    as _i21;
import '../../features/tabs/browse/data/data_sources/remote/online_categories_data_source_impl.dart'
    as _i22;
import '../../features/tabs/browse/data/repository_impl/categories_repository_impl.dart'
    as _i57;
import '../../features/tabs/browse/domain/repository/categories_repository.dart'
    as _i56;
import '../../features/tabs/browse/domain/usecases/online_categories_usecase.dart'
    as _i58;
import '../../features/tabs/browse/ui/cubit/categories_view_model.dart' as _i59;
import '../../features/tabs/home/data/api/api_manager.dart' as _i5;
import '../../features/tabs/home/data/data_source/remote/popular_movies/popular_movies_data_source.dart'
    as _i23;
import '../../features/tabs/home/data/data_source/remote/popular_movies/popular_movies_data_source_impl.dart'
    as _i24;
import '../../features/tabs/home/data/data_source/remote/top_rated_movies/top_rated_movies_data_source.dart'
    as _i43;
import '../../features/tabs/home/data/data_source/remote/top_rated_movies/top_rated_movies_data_source_impl.dart'
    as _i44;
import '../../features/tabs/home/data/data_source/remote/up_comming_movies/up_comming_movies_data_source.dart'
    as _i49;
import '../../features/tabs/home/data/data_source/remote/up_comming_movies/up_comming_movies_data_source_impl.dart'
    as _i50;
import '../../features/tabs/home/data/repository_impl/popular_movies_repository_impl.dart'
    as _i26;
import '../../features/tabs/home/data/repository_impl/top_rated_movies_repository_impl.dart'
    as _i46;
import '../../features/tabs/home/data/repository_impl/up_comming_movies_repository_impl.dart'
    as _i52;
import '../../features/tabs/home/domain/repository/popular_movies_repository.dart'
    as _i25;
import '../../features/tabs/home/domain/repository/top_rated_movies_repository.dart'
    as _i45;
import '../../features/tabs/home/domain/repository/up_comming_movies_repository.dart'
    as _i51;
import '../../features/tabs/home/domain/usecases/popular_movies_usecase.dart'
    as _i27;
import '../../features/tabs/home/domain/usecases/top_rated_movies_usecase.dart'
    as _i47;
import '../../features/tabs/home/domain/usecases/up_comming_movies_usecase.dart'
    as _i53;
import '../../features/tabs/home/ui/cubit/popular_movies/popular_movies_view_model.dart'
    as _i28;
import '../../features/tabs/home/ui/cubit/top_rated_movies/top_rated_view_model.dart'
    as _i48;
import '../../features/tabs/home/ui/cubit/up_comming_movies/up_comming_view_model.dart'
    as _i54;
import '../../features/tabs/presentation_view_model.dart' as _i29;
import '../../features/tabs/search/data/api/search_api_manager.dart' as _i30;
import '../../features/tabs/search/data/data_sources/search_data_source.dart'
    as _i31;
import '../../features/tabs/search/data/data_sources/search_data_source_impl.dart'
    as _i32;
import '../../features/tabs/search/data/repository_impl/search_repository_impl.dart'
    as _i34;
import '../../features/tabs/search/domain/repository/search_repository.dart'
    as _i33;
import '../../features/tabs/search/domain/usecases/search_usecase.dart' as _i35;
import '../../features/tabs/search/ui/cubit/search_view_model.dart' as _i36;
import '../../features/tabs/watch_list/ui/cubit/watch_list_viw_model.dart'
    as _i55;
import '../api/api_consumer.dart' as _i3;
import '../api/dio_consumer.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ApiConsumer>(() => _i4.DioConsumer());
    gh.singleton<_i5.ApiManager>(() => _i5.ApiManager(gh<_i3.ApiConsumer>()));
    gh.singleton<_i6.CategoriesApiManager>(
        () => _i6.CategoriesApiManager(gh<_i3.ApiConsumer>()));
    gh.factory<_i7.CategoryMoviesApiManager>(
        () => _i7.CategoryMoviesApiManager(gh<_i3.ApiConsumer>()));
    gh.factory<_i8.CategoryMoviesDataSource>(() =>
        _i9.CategoryMoviesDataSourceImpl(gh<_i7.CategoryMoviesApiManager>()));
    gh.factory<_i10.CategoryMoviesRepository>(() =>
        _i11.CategoryMoviesRepositoryImpl(gh<_i8.CategoryMoviesDataSource>()));
    gh.factory<_i12.CategoryMoviesUseCase>(
        () => _i12.CategoryMoviesUseCase(gh<_i10.CategoryMoviesRepository>()));
    gh.factory<_i13.CategoryMoviesViewModel>(
        () => _i13.CategoryMoviesViewModel(gh<_i12.CategoryMoviesUseCase>()));
    gh.singleton<_i14.MovieDetailsFeatureApiManager>(
        () => _i14.MovieDetailsFeatureApiManager(gh<_i3.ApiConsumer>()));
    gh.factory<_i15.MovieDetailsOnlineDataSource>(() =>
        _i16.MovieDetailsOnlineDataSourceImpl(
            gh<_i14.MovieDetailsFeatureApiManager>()));
    gh.factory<_i17.MovieDetailsRepository>(() =>
        _i18.MovieDetailsRepositoryImpl(
            gh<_i15.MovieDetailsOnlineDataSource>()));
    gh.factory<_i19.MovieDetailsUseCase>(
        () => _i19.MovieDetailsUseCase(gh<_i17.MovieDetailsRepository>()));
    gh.factory<_i20.MovieDetailsViewModel>(
        () => _i20.MovieDetailsViewModel(gh<_i19.MovieDetailsUseCase>()));
    gh.factory<_i21.OnlineCategoriesDataSource>(() =>
        _i22.OnlineCatgoriesDataSourceImpl(gh<_i6.CategoriesApiManager>()));
    gh.factory<_i23.PopularMoviesDataSource>(
        () => _i24.PopularMoviesDataSourceImpl(gh<_i5.ApiManager>()));
    gh.factory<_i25.PopularMoviesRepository>(() =>
        _i26.PopularMoviesRepositoryImpl(gh<_i23.PopularMoviesDataSource>()));
    gh.factory<_i27.PopularMoviesUseCase>(
        () => _i27.PopularMoviesUseCase(gh<_i25.PopularMoviesRepository>()));
    gh.factory<_i28.PopularMoviesViewModel>(
        () => _i28.PopularMoviesViewModel(gh<_i27.PopularMoviesUseCase>()));
    gh.factory<_i29.PresentationScreenViewModel>(
        () => _i29.PresentationScreenViewModel());
    gh.singleton<_i30.SearchApimanager>(
        () => _i30.SearchApimanager(gh<_i3.ApiConsumer>()));
    gh.factory<_i31.SearchDataSource>(
        () => _i32.SearchDataSourceImpl(gh<_i30.SearchApimanager>()));
    gh.factory<_i33.SearchRepository>(
        () => _i34.SearchRepositoryImpl(gh<_i31.SearchDataSource>()));
    gh.factory<_i35.SearchUseCase>(
        () => _i35.SearchUseCase(gh<_i33.SearchRepository>()));
    gh.factory<_i36.SearchViewModel>(
        () => _i36.SearchViewModel(gh<_i35.SearchUseCase>()));
    gh.factory<_i37.SimilarMoviesOnlineDataSource>(() =>
        _i38.SimilarMoviesOnlineDataSourceImpl(
            gh<_i14.MovieDetailsFeatureApiManager>()));
    gh.factory<_i39.SimilarMoviesRepository>(() =>
        _i40.SimilarMoviesRepositoryImpl(
            gh<_i37.SimilarMoviesOnlineDataSource>()));
    gh.factory<_i41.SimilarMoviesUseCase>(
        () => _i41.SimilarMoviesUseCase(gh<_i39.SimilarMoviesRepository>()));
    gh.factory<_i42.SimilarMoviesViewModel>(
        () => _i42.SimilarMoviesViewModel(gh<_i41.SimilarMoviesUseCase>()));
    gh.factory<_i43.TopRatedMoviesDataSource>(
        () => _i44.TopRatedMoviesDataSourceImpl(gh<_i5.ApiManager>()));
    gh.factory<_i45.TopRatedMoviesRepository>(() =>
        _i46.TopRatedMoviesRepositoryImpl(gh<_i43.TopRatedMoviesDataSource>()));
    gh.factory<_i47.TopRatedMoviesUseCase>(
        () => _i47.TopRatedMoviesUseCase(gh<_i45.TopRatedMoviesRepository>()));
    gh.factory<_i48.TopRatedViewModel>(
        () => _i48.TopRatedViewModel(gh<_i47.TopRatedMoviesUseCase>()));
    gh.factory<_i49.UpCommingMoviesDataSource>(
        () => _i50.UpCommingMoviesDataSourceImpl(gh<_i5.ApiManager>()));
    gh.factory<_i51.UpCommingMoviesRepository>(() =>
        _i52.UpCommingMoviesRepositoryImpl(
            gh<_i49.UpCommingMoviesDataSource>()));
    gh.factory<_i53.UpCommingMoviesUseCase>(() =>
        _i53.UpCommingMoviesUseCase(gh<_i51.UpCommingMoviesRepository>()));
    gh.factory<_i54.UpCommingMoviesViewModel>(
        () => _i54.UpCommingMoviesViewModel(gh<_i53.UpCommingMoviesUseCase>()));
    gh.factory<_i55.WatchListViewModel>(() => _i55.WatchListViewModel());
    gh.factory<_i56.CategoriesRepository>(() =>
        _i57.CategoriesRepositoryImpl(gh<_i21.OnlineCategoriesDataSource>()));
    gh.factory<_i58.OnlineCategoriesUseCase>(
        () => _i58.OnlineCategoriesUseCase(gh<_i56.CategoriesRepository>()));
    gh.factory<_i59.CategoriesViewModel>(
        () => _i59.CategoriesViewModel(gh<_i58.OnlineCategoriesUseCase>()));
    return this;
  }
}
