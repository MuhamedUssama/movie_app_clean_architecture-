// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/movie_details/data/api/api_manager.dart' as _i8;
import '../../features/movie_details/data/data_sources/remote/movie_deatils/movie_details_data_source.dart'
    as _i9;
import '../../features/movie_details/data/data_sources/remote/movie_deatils/movie_details_data_source_impl.dart'
    as _i10;
import '../../features/movie_details/data/data_sources/remote/similar_movies/similar_movies_data_source.dart'
    as _i31;
import '../../features/movie_details/data/data_sources/remote/similar_movies/similar_movies_data_source_impl.dart'
    as _i32;
import '../../features/movie_details/data/repository_impl/movie_details_repository_impl.dart'
    as _i12;
import '../../features/movie_details/data/repository_impl/similar_movies_repository_impl.dart'
    as _i34;
import '../../features/movie_details/domain/repository/movie_details_repository.dart'
    as _i11;
import '../../features/movie_details/domain/repository/similar_movies_repository.dart'
    as _i33;
import '../../features/movie_details/domain/usecases/movie_details_usecase.dart'
    as _i13;
import '../../features/movie_details/domain/usecases/similar_movies_usecase.dart'
    as _i35;
import '../../features/movie_details/ui/cubits/movie_details/movie_details_view_model.dart'
    as _i14;
import '../../features/movie_details/ui/cubits/similar_movies/similar_movies_view_model.dart'
    as _i36;
import '../../features/movies_in_category/data/api/category_movies_api_manager.dart'
    as _i7;
import '../../features/tabs/browse/data/api/categories_api_manager.dart' as _i6;
import '../../features/tabs/browse/data/data_sources/remote/online_categories_data_source.dart'
    as _i15;
import '../../features/tabs/browse/data/data_sources/remote/online_categories_data_source_impl.dart'
    as _i16;
import '../../features/tabs/browse/data/repository_impl/categories_repository_impl.dart'
    as _i50;
import '../../features/tabs/browse/domain/repository/categories_repository.dart'
    as _i49;
import '../../features/tabs/browse/domain/usecases/online_categories_usecase.dart'
    as _i51;
import '../../features/tabs/browse/ui/cubit/categories_view_model.dart' as _i52;
import '../../features/tabs/home/data/api/api_manager.dart' as _i5;
import '../../features/tabs/home/data/data_source/remote/popular_movies/popular_movies_data_source.dart'
    as _i17;
import '../../features/tabs/home/data/data_source/remote/popular_movies/popular_movies_data_source_impl.dart'
    as _i18;
import '../../features/tabs/home/data/data_source/remote/top_rated_movies/top_rated_movies_data_source.dart'
    as _i37;
import '../../features/tabs/home/data/data_source/remote/top_rated_movies/top_rated_movies_data_source_impl.dart'
    as _i38;
import '../../features/tabs/home/data/data_source/remote/up_comming_movies/up_comming_movies_data_source.dart'
    as _i43;
import '../../features/tabs/home/data/data_source/remote/up_comming_movies/up_comming_movies_data_source_impl.dart'
    as _i44;
import '../../features/tabs/home/data/repository_impl/popular_movies_repository_impl.dart'
    as _i20;
import '../../features/tabs/home/data/repository_impl/top_rated_movies_repository_impl.dart'
    as _i40;
import '../../features/tabs/home/data/repository_impl/up_comming_movies_repository_impl.dart'
    as _i46;
import '../../features/tabs/home/domain/repository/popular_movies_repository.dart'
    as _i19;
import '../../features/tabs/home/domain/repository/top_rated_movies_repository.dart'
    as _i39;
import '../../features/tabs/home/domain/repository/up_comming_movies_repository.dart'
    as _i45;
import '../../features/tabs/home/domain/usecases/popular_movies_usecase.dart'
    as _i21;
import '../../features/tabs/home/domain/usecases/top_rated_movies_usecase.dart'
    as _i41;
import '../../features/tabs/home/domain/usecases/up_comming_movies_usecase.dart'
    as _i47;
import '../../features/tabs/home/ui/cubit/popular_movies/popular_movies_view_model.dart'
    as _i22;
import '../../features/tabs/home/ui/cubit/top_rated_movies/top_rated_view_model.dart'
    as _i42;
import '../../features/tabs/home/ui/cubit/up_comming_movies/up_comming_view_model.dart'
    as _i48;
import '../../features/tabs/presentation_view_model.dart' as _i23;
import '../../features/tabs/search/data/api/search_api_manager.dart' as _i24;
import '../../features/tabs/search/data/data_sources/search_data_source.dart'
    as _i25;
import '../../features/tabs/search/data/data_sources/search_data_source_impl.dart'
    as _i26;
import '../../features/tabs/search/data/repository_impl/search_repository_impl.dart'
    as _i28;
import '../../features/tabs/search/domain/repository/search_repository.dart'
    as _i27;
import '../../features/tabs/search/domain/usecases/search_usecase.dart' as _i29;
import '../../features/tabs/search/ui/cubit/search_view_model.dart' as _i30;
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
    gh.singleton<_i8.MovieDetailsFeatureApiManager>(
        () => _i8.MovieDetailsFeatureApiManager(gh<_i3.ApiConsumer>()));
    gh.factory<_i9.MovieDetailsOnlineDataSource>(() =>
        _i10.MovieDetailsOnlineDataSourceImpl(
            gh<_i8.MovieDetailsFeatureApiManager>()));
    gh.factory<_i11.MovieDetailsRepository>(() =>
        _i12.MovieDetailsRepositoryImpl(
            gh<_i9.MovieDetailsOnlineDataSource>()));
    gh.factory<_i13.MovieDetailsUseCase>(
        () => _i13.MovieDetailsUseCase(gh<_i11.MovieDetailsRepository>()));
    gh.factory<_i14.MovieDetailsViewModel>(
        () => _i14.MovieDetailsViewModel(gh<_i13.MovieDetailsUseCase>()));
    gh.factory<_i15.OnlineCategoriesDataSource>(() =>
        _i16.OnlineCatgoriesDataSourceImpl(gh<_i6.CategoriesApiManager>()));
    gh.factory<_i17.PopularMoviesDataSource>(
        () => _i18.PopularMoviesDataSourceImpl(gh<_i5.ApiManager>()));
    gh.factory<_i19.PopularMoviesRepository>(() =>
        _i20.PopularMoviesRepositoryImpl(gh<_i17.PopularMoviesDataSource>()));
    gh.factory<_i21.PopularMoviesUseCase>(
        () => _i21.PopularMoviesUseCase(gh<_i19.PopularMoviesRepository>()));
    gh.factory<_i22.PopularMoviesViewModel>(
        () => _i22.PopularMoviesViewModel(gh<_i21.PopularMoviesUseCase>()));
    gh.factory<_i23.PresentationScreenViewModel>(
        () => _i23.PresentationScreenViewModel());
    gh.singleton<_i24.SearchApimanager>(
        () => _i24.SearchApimanager(gh<_i3.ApiConsumer>()));
    gh.factory<_i25.SearchDataSource>(
        () => _i26.SearchDataSourceImpl(gh<_i24.SearchApimanager>()));
    gh.factory<_i27.SearchRepository>(
        () => _i28.SearchRepositoryImpl(gh<_i25.SearchDataSource>()));
    gh.factory<_i29.SearchUseCase>(
        () => _i29.SearchUseCase(gh<_i27.SearchRepository>()));
    gh.factory<_i30.SearchViewModel>(
        () => _i30.SearchViewModel(gh<_i29.SearchUseCase>()));
    gh.factory<_i31.SimilarMoviesOnlineDataSource>(() =>
        _i32.SimilarMoviesOnlineDataSourceImpl(
            gh<_i8.MovieDetailsFeatureApiManager>()));
    gh.factory<_i33.SimilarMoviesRepository>(() =>
        _i34.SimilarMoviesRepositoryImpl(
            gh<_i31.SimilarMoviesOnlineDataSource>()));
    gh.factory<_i35.SimilarMoviesUseCase>(
        () => _i35.SimilarMoviesUseCase(gh<_i33.SimilarMoviesRepository>()));
    gh.factory<_i36.SimilarMoviesViewModel>(
        () => _i36.SimilarMoviesViewModel(gh<_i35.SimilarMoviesUseCase>()));
    gh.factory<_i37.TopRatedMoviesDataSource>(
        () => _i38.TopRatedMoviesDataSourceImpl(gh<_i5.ApiManager>()));
    gh.factory<_i39.TopRatedMoviesRepository>(() =>
        _i40.TopRatedMoviesRepositoryImpl(gh<_i37.TopRatedMoviesDataSource>()));
    gh.factory<_i41.TopRatedMoviesUseCase>(
        () => _i41.TopRatedMoviesUseCase(gh<_i39.TopRatedMoviesRepository>()));
    gh.factory<_i42.TopRatedViewModel>(
        () => _i42.TopRatedViewModel(gh<_i41.TopRatedMoviesUseCase>()));
    gh.factory<_i43.UpCommingMoviesDataSource>(
        () => _i44.UpCommingMoviesDataSourceImpl(gh<_i5.ApiManager>()));
    gh.factory<_i45.UpCommingMoviesRepository>(() =>
        _i46.UpCommingMoviesRepositoryImpl(
            gh<_i43.UpCommingMoviesDataSource>()));
    gh.factory<_i47.UpCommingMoviesUseCase>(() =>
        _i47.UpCommingMoviesUseCase(gh<_i45.UpCommingMoviesRepository>()));
    gh.factory<_i48.UpCommingMoviesViewModel>(
        () => _i48.UpCommingMoviesViewModel(gh<_i47.UpCommingMoviesUseCase>()));
    gh.factory<_i49.CategoriesRepository>(() =>
        _i50.CategoriesRepositoryImpl(gh<_i15.OnlineCategoriesDataSource>()));
    gh.factory<_i51.OnlineCategoriesUseCase>(
        () => _i51.OnlineCategoriesUseCase(gh<_i49.CategoriesRepository>()));
    gh.factory<_i52.CategoriesViewModel>(
        () => _i52.CategoriesViewModel(gh<_i51.OnlineCategoriesUseCase>()));
    return this;
  }
}
