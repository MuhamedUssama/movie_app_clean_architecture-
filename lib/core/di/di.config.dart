// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/movie_details/data/api/api_manager.dart' as _i6;
import '../../features/movie_details/data/data_sources/remote/movie_deatils/movie_details_data_source.dart'
    as _i7;
import '../../features/movie_details/data/data_sources/remote/movie_deatils/movie_details_data_source_impl.dart'
    as _i8;
import '../../features/movie_details/data/data_sources/remote/similar_movies/similar_movies_data_source.dart'
    as _i25;
import '../../features/movie_details/data/data_sources/remote/similar_movies/similar_movies_data_source_impl.dart'
    as _i26;
import '../../features/movie_details/data/repository_impl/movie_details_repository_impl.dart'
    as _i10;
import '../../features/movie_details/data/repository_impl/similar_movies_repository_impl.dart'
    as _i28;
import '../../features/movie_details/domain/repository/movie_details_repository.dart'
    as _i9;
import '../../features/movie_details/domain/repository/similar_movies_repository.dart'
    as _i27;
import '../../features/movie_details/domain/usecases/movie_details_usecase.dart'
    as _i11;
import '../../features/movie_details/domain/usecases/similar_movies_usecase.dart'
    as _i29;
import '../../features/movie_details/ui/cubits/movie_details/movie_details_view_model.dart'
    as _i12;
import '../../features/movie_details/ui/cubits/similar_movies/similar_movies_view_model.dart'
    as _i30;
import '../../features/tabs/home/data/api/api_manager.dart' as _i5;
import '../../features/tabs/home/data/data_source/remote/popular_movies/popular_movies_data_source.dart'
    as _i13;
import '../../features/tabs/home/data/data_source/remote/popular_movies/popular_movies_data_source_impl.dart'
    as _i14;
import '../../features/tabs/home/data/data_source/remote/top_rated_movies/top_rated_movies_data_source.dart'
    as _i31;
import '../../features/tabs/home/data/data_source/remote/top_rated_movies/top_rated_movies_data_source_impl.dart'
    as _i32;
import '../../features/tabs/home/data/data_source/remote/up_comming_movies/up_comming_movies_data_source.dart'
    as _i37;
import '../../features/tabs/home/data/data_source/remote/up_comming_movies/up_comming_movies_data_source_impl.dart'
    as _i38;
import '../../features/tabs/home/data/repository_impl/popular_movies_repository_impl.dart'
    as _i16;
import '../../features/tabs/home/data/repository_impl/top_rated_movies_repository_impl.dart'
    as _i34;
import '../../features/tabs/home/data/repository_impl/up_comming_movies_repository_impl.dart'
    as _i40;
import '../../features/tabs/home/domain/repository/popular_movies_repository.dart'
    as _i15;
import '../../features/tabs/home/domain/repository/top_rated_movies_repository.dart'
    as _i33;
import '../../features/tabs/home/domain/repository/up_comming_movies_repository.dart'
    as _i39;
import '../../features/tabs/home/domain/usecases/popular_movies_usecase.dart'
    as _i17;
import '../../features/tabs/home/domain/usecases/top_rated_movies_usecase.dart'
    as _i35;
import '../../features/tabs/home/domain/usecases/up_comming_movies_usecase.dart'
    as _i41;
import '../../features/tabs/home/ui/cubit/popular_movies/popular_movies_view_model.dart'
    as _i18;
import '../../features/tabs/home/ui/cubit/top_rated_movies/top_rated_view_model.dart'
    as _i36;
import '../../features/tabs/home/ui/cubit/up_comming_movies/up_comming_view_model.dart'
    as _i42;
import '../../features/tabs/presentation_view_model.dart' as _i19;
import '../../features/tabs/search/data/api/search_api_manager.dart' as _i20;
import '../../features/tabs/search/data/data_sources/search_data_source.dart'
    as _i21;
import '../../features/tabs/search/data/data_sources/search_data_source_impl.dart'
    as _i22;
import '../../features/tabs/search/data/repository_impl/search_repository_impl.dart'
    as _i24;
import '../../features/tabs/search/domain/repository/search_repository.dart'
    as _i23;
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
    gh.singleton<_i6.MovieDetailsFeatureApiManager>(
        () => _i6.MovieDetailsFeatureApiManager(gh<_i3.ApiConsumer>()));
    gh.factory<_i7.MovieDetailsOnlineDataSource>(() =>
        _i8.MovieDetailsOnlineDataSourceImpl(
            gh<_i6.MovieDetailsFeatureApiManager>()));
    gh.factory<_i9.MovieDetailsRepository>(() =>
        _i10.MovieDetailsRepositoryImpl(
            gh<_i7.MovieDetailsOnlineDataSource>()));
    gh.factory<_i11.MovieDetailsUseCase>(
        () => _i11.MovieDetailsUseCase(gh<_i9.MovieDetailsRepository>()));
    gh.factory<_i12.MovieDetailsViewModel>(
        () => _i12.MovieDetailsViewModel(gh<_i11.MovieDetailsUseCase>()));
    gh.factory<_i13.PopularMoviesDataSource>(
        () => _i14.PopularMoviesDataSourceImpl(gh<_i5.ApiManager>()));
    gh.factory<_i15.PopularMoviesRepository>(() =>
        _i16.PopularMoviesRepositoryImpl(gh<_i13.PopularMoviesDataSource>()));
    gh.factory<_i17.PopularMoviesUseCase>(
        () => _i17.PopularMoviesUseCase(gh<_i15.PopularMoviesRepository>()));
    gh.factory<_i18.PopularMoviesViewModel>(
        () => _i18.PopularMoviesViewModel(gh<_i17.PopularMoviesUseCase>()));
    gh.factory<_i19.PresentationScreenViewModel>(
        () => _i19.PresentationScreenViewModel());
    gh.singleton<_i20.SearchApimanager>(
        () => _i20.SearchApimanager(gh<_i3.ApiConsumer>()));
    gh.factory<_i21.SearchDataSource>(
        () => _i22.SearchDataSourceImpl(gh<_i20.SearchApimanager>()));
    gh.factory<_i23.SearchRepository>(
        () => _i24.SearchRepositoryImpl(gh<_i21.SearchDataSource>()));
    gh.factory<_i25.SimilarMoviesOnlineDataSource>(() =>
        _i26.SimilarMoviesOnlineDataSourceImpl(
            gh<_i6.MovieDetailsFeatureApiManager>()));
    gh.factory<_i27.SimilarMoviesRepository>(() =>
        _i28.SimilarMoviesRepositoryImpl(
            gh<_i25.SimilarMoviesOnlineDataSource>()));
    gh.factory<_i29.SimilarMoviesUseCase>(
        () => _i29.SimilarMoviesUseCase(gh<_i27.SimilarMoviesRepository>()));
    gh.factory<_i30.SimilarMoviesViewModel>(
        () => _i30.SimilarMoviesViewModel(gh<_i29.SimilarMoviesUseCase>()));
    gh.factory<_i31.TopRatedMoviesDataSource>(
        () => _i32.TopRatedMoviesDataSourceImpl(gh<_i5.ApiManager>()));
    gh.factory<_i33.TopRatedMoviesRepository>(() =>
        _i34.TopRatedMoviesRepositoryImpl(gh<_i31.TopRatedMoviesDataSource>()));
    gh.factory<_i35.TopRatedMoviesUseCase>(
        () => _i35.TopRatedMoviesUseCase(gh<_i33.TopRatedMoviesRepository>()));
    gh.factory<_i36.TopRatedViewModel>(
        () => _i36.TopRatedViewModel(gh<_i35.TopRatedMoviesUseCase>()));
    gh.factory<_i37.UpCommingMoviesDataSource>(
        () => _i38.UpCommingMoviesDataSourceImpl(gh<_i5.ApiManager>()));
    gh.factory<_i39.UpCommingMoviesRepository>(() =>
        _i40.UpCommingMoviesRepositoryImpl(
            gh<_i37.UpCommingMoviesDataSource>()));
    gh.factory<_i41.UpCommingMoviesUseCase>(() =>
        _i41.UpCommingMoviesUseCase(gh<_i39.UpCommingMoviesRepository>()));
    gh.factory<_i42.UpCommingMoviesViewModel>(
        () => _i42.UpCommingMoviesViewModel(gh<_i41.UpCommingMoviesUseCase>()));
    return this;
  }
}
