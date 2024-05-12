// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/movie_details/data/api/api_manager.dart' as _i7;
import '../../features/movie_details/data/data_sources/remote/movie_deatils/movie_details_data_source.dart'
    as _i8;
import '../../features/movie_details/data/data_sources/remote/movie_deatils/movie_details_data_source_impl.dart'
    as _i9;
import '../../features/movie_details/data/data_sources/remote/similar_movies/similar_movies_data_source.dart'
    as _i30;
import '../../features/movie_details/data/data_sources/remote/similar_movies/similar_movies_data_source_impl.dart'
    as _i31;
import '../../features/movie_details/data/repository_impl/movie_details_repository_impl.dart'
    as _i11;
import '../../features/movie_details/data/repository_impl/similar_movies_repository_impl.dart'
    as _i33;
import '../../features/movie_details/domain/repository/movie_details_repository.dart'
    as _i10;
import '../../features/movie_details/domain/repository/similar_movies_repository.dart'
    as _i32;
import '../../features/movie_details/domain/usecases/movie_details_usecase.dart'
    as _i12;
import '../../features/movie_details/domain/usecases/similar_movies_usecase.dart'
    as _i34;
import '../../features/movie_details/ui/cubits/movie_details/movie_details_view_model.dart'
    as _i13;
import '../../features/movie_details/ui/cubits/similar_movies/similar_movies_view_model.dart'
    as _i35;
import '../../features/tabs/browse/data/api/categories_api_manager.dart' as _i6;
import '../../features/tabs/browse/data/data_sources/remote/online_categories_data_source.dart'
    as _i14;
import '../../features/tabs/browse/data/data_sources/remote/online_categories_data_source_impl.dart'
    as _i15;
import '../../features/tabs/browse/data/repository_impl/categories_repository_impl.dart'
    as _i49;
import '../../features/tabs/browse/domain/repository/categories_repository.dart'
    as _i48;
import '../../features/tabs/browse/domain/usecases/online_categories_usecase.dart'
    as _i50;
import '../../features/tabs/browse/ui/cubit/categories_list/categories_view_model.dart'
    as _i51;
import '../../features/tabs/home/data/api/api_manager.dart' as _i5;
import '../../features/tabs/home/data/data_source/remote/popular_movies/popular_movies_data_source.dart'
    as _i16;
import '../../features/tabs/home/data/data_source/remote/popular_movies/popular_movies_data_source_impl.dart'
    as _i17;
import '../../features/tabs/home/data/data_source/remote/top_rated_movies/top_rated_movies_data_source.dart'
    as _i36;
import '../../features/tabs/home/data/data_source/remote/top_rated_movies/top_rated_movies_data_source_impl.dart'
    as _i37;
import '../../features/tabs/home/data/data_source/remote/up_comming_movies/up_comming_movies_data_source.dart'
    as _i42;
import '../../features/tabs/home/data/data_source/remote/up_comming_movies/up_comming_movies_data_source_impl.dart'
    as _i43;
import '../../features/tabs/home/data/repository_impl/popular_movies_repository_impl.dart'
    as _i19;
import '../../features/tabs/home/data/repository_impl/top_rated_movies_repository_impl.dart'
    as _i39;
import '../../features/tabs/home/data/repository_impl/up_comming_movies_repository_impl.dart'
    as _i45;
import '../../features/tabs/home/domain/repository/popular_movies_repository.dart'
    as _i18;
import '../../features/tabs/home/domain/repository/top_rated_movies_repository.dart'
    as _i38;
import '../../features/tabs/home/domain/repository/up_comming_movies_repository.dart'
    as _i44;
import '../../features/tabs/home/domain/usecases/popular_movies_usecase.dart'
    as _i20;
import '../../features/tabs/home/domain/usecases/top_rated_movies_usecase.dart'
    as _i40;
import '../../features/tabs/home/domain/usecases/up_comming_movies_usecase.dart'
    as _i46;
import '../../features/tabs/home/ui/cubit/popular_movies/popular_movies_view_model.dart'
    as _i21;
import '../../features/tabs/home/ui/cubit/top_rated_movies/top_rated_view_model.dart'
    as _i41;
import '../../features/tabs/home/ui/cubit/up_comming_movies/up_comming_view_model.dart'
    as _i47;
import '../../features/tabs/presentation_view_model.dart' as _i22;
import '../../features/tabs/search/data/api/search_api_manager.dart' as _i23;
import '../../features/tabs/search/data/data_sources/search_data_source.dart'
    as _i24;
import '../../features/tabs/search/data/data_sources/search_data_source_impl.dart'
    as _i25;
import '../../features/tabs/search/data/repository_impl/search_repository_impl.dart'
    as _i27;
import '../../features/tabs/search/domain/repository/search_repository.dart'
    as _i26;
import '../../features/tabs/search/domain/usecases/search_usecase.dart' as _i28;
import '../../features/tabs/search/ui/cubit/search_view_model.dart' as _i29;
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
    gh.singleton<_i7.MovieDetailsFeatureApiManager>(
        () => _i7.MovieDetailsFeatureApiManager(gh<_i3.ApiConsumer>()));
    gh.factory<_i8.MovieDetailsOnlineDataSource>(() =>
        _i9.MovieDetailsOnlineDataSourceImpl(
            gh<_i7.MovieDetailsFeatureApiManager>()));
    gh.factory<_i10.MovieDetailsRepository>(() =>
        _i11.MovieDetailsRepositoryImpl(
            gh<_i8.MovieDetailsOnlineDataSource>()));
    gh.factory<_i12.MovieDetailsUseCase>(
        () => _i12.MovieDetailsUseCase(gh<_i10.MovieDetailsRepository>()));
    gh.factory<_i13.MovieDetailsViewModel>(
        () => _i13.MovieDetailsViewModel(gh<_i12.MovieDetailsUseCase>()));
    gh.factory<_i14.OnlineCategoriesDataSource>(() =>
        _i15.OnlineCatgoriesDataSourceImpl(gh<_i6.CategoriesApiManager>()));
    gh.factory<_i16.PopularMoviesDataSource>(
        () => _i17.PopularMoviesDataSourceImpl(gh<_i5.ApiManager>()));
    gh.factory<_i18.PopularMoviesRepository>(() =>
        _i19.PopularMoviesRepositoryImpl(gh<_i16.PopularMoviesDataSource>()));
    gh.factory<_i20.PopularMoviesUseCase>(
        () => _i20.PopularMoviesUseCase(gh<_i18.PopularMoviesRepository>()));
    gh.factory<_i21.PopularMoviesViewModel>(
        () => _i21.PopularMoviesViewModel(gh<_i20.PopularMoviesUseCase>()));
    gh.factory<_i22.PresentationScreenViewModel>(
        () => _i22.PresentationScreenViewModel());
    gh.singleton<_i23.SearchApimanager>(
        () => _i23.SearchApimanager(gh<_i3.ApiConsumer>()));
    gh.factory<_i24.SearchDataSource>(
        () => _i25.SearchDataSourceImpl(gh<_i23.SearchApimanager>()));
    gh.factory<_i26.SearchRepository>(
        () => _i27.SearchRepositoryImpl(gh<_i24.SearchDataSource>()));
    gh.factory<_i28.SearchUseCase>(
        () => _i28.SearchUseCase(gh<_i26.SearchRepository>()));
    gh.factory<_i29.SearchViewModel>(
        () => _i29.SearchViewModel(gh<_i28.SearchUseCase>()));
    gh.factory<_i30.SimilarMoviesOnlineDataSource>(() =>
        _i31.SimilarMoviesOnlineDataSourceImpl(
            gh<_i7.MovieDetailsFeatureApiManager>()));
    gh.factory<_i32.SimilarMoviesRepository>(() =>
        _i33.SimilarMoviesRepositoryImpl(
            gh<_i30.SimilarMoviesOnlineDataSource>()));
    gh.factory<_i34.SimilarMoviesUseCase>(
        () => _i34.SimilarMoviesUseCase(gh<_i32.SimilarMoviesRepository>()));
    gh.factory<_i35.SimilarMoviesViewModel>(
        () => _i35.SimilarMoviesViewModel(gh<_i34.SimilarMoviesUseCase>()));
    gh.factory<_i36.TopRatedMoviesDataSource>(
        () => _i37.TopRatedMoviesDataSourceImpl(gh<_i5.ApiManager>()));
    gh.factory<_i38.TopRatedMoviesRepository>(() =>
        _i39.TopRatedMoviesRepositoryImpl(gh<_i36.TopRatedMoviesDataSource>()));
    gh.factory<_i40.TopRatedMoviesUseCase>(
        () => _i40.TopRatedMoviesUseCase(gh<_i38.TopRatedMoviesRepository>()));
    gh.factory<_i41.TopRatedViewModel>(
        () => _i41.TopRatedViewModel(gh<_i40.TopRatedMoviesUseCase>()));
    gh.factory<_i42.UpCommingMoviesDataSource>(
        () => _i43.UpCommingMoviesDataSourceImpl(gh<_i5.ApiManager>()));
    gh.factory<_i44.UpCommingMoviesRepository>(() =>
        _i45.UpCommingMoviesRepositoryImpl(
            gh<_i42.UpCommingMoviesDataSource>()));
    gh.factory<_i46.UpCommingMoviesUseCase>(() =>
        _i46.UpCommingMoviesUseCase(gh<_i44.UpCommingMoviesRepository>()));
    gh.factory<_i47.UpCommingMoviesViewModel>(
        () => _i47.UpCommingMoviesViewModel(gh<_i46.UpCommingMoviesUseCase>()));
    gh.factory<_i48.CategoriesRepository>(() =>
        _i49.CategoriesRepositoryImpl(gh<_i14.OnlineCategoriesDataSource>()));
    gh.factory<_i50.OnlineCategoriesUseCase>(
        () => _i50.OnlineCategoriesUseCase(gh<_i48.CategoriesRepository>()));
    gh.factory<_i51.CategoriesViewModel>(
        () => _i51.CategoriesViewModel(gh<_i50.OnlineCategoriesUseCase>()));
    return this;
  }
}
