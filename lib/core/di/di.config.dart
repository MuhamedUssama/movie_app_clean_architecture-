// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/movie_details/data/api/api_manager.dart' as _i7;
import '../../features/movie_details/data/data_sources/remote/movie_deatils/movie_details_data_source.dart'
    as _i8;
import '../../features/movie_details/data/data_sources/remote/movie_deatils/movie_details_data_source_impl.dart'
    as _i9;
import '../../features/movie_details/data/data_sources/remote/similar_movies/similar_movies_data_source.dart'
    as _i21;
import '../../features/movie_details/data/data_sources/remote/similar_movies/similar_movies_data_source_impl.dart'
    as _i22;
import '../../features/movie_details/data/repository_impl/movie_details_repository_impl.dart'
    as _i11;
import '../../features/movie_details/data/repository_impl/similar_movies_repository_impl.dart'
    as _i24;
import '../../features/movie_details/domain/repository/movie_details_repository.dart'
    as _i10;
import '../../features/movie_details/domain/repository/similar_movies_repository.dart'
    as _i23;
import '../../features/movie_details/domain/usecases/movie_details_usecase.dart'
    as _i12;
import '../../features/movie_details/domain/usecases/similar_movies_usecase.dart'
    as _i25;
import '../../features/movie_details/ui/cubits/movie_details/movie_details_view_model.dart'
    as _i13;
import '../../features/movie_details/ui/cubits/similar_movies/similar_movies_view_model.dart'
    as _i26;
import '../../features/tabs/home/data/api/api_manager.dart' as _i6;
import '../../features/tabs/home/data/data_source/remote/popular_movies/popular_movies_data_source.dart'
    as _i14;
import '../../features/tabs/home/data/data_source/remote/popular_movies/popular_movies_data_source_impl.dart'
    as _i15;
import '../../features/tabs/home/data/data_source/remote/top_rated_movies/top_rated_movies_data_source.dart'
    as _i27;
import '../../features/tabs/home/data/data_source/remote/top_rated_movies/top_rated_movies_data_source_impl.dart'
    as _i28;
import '../../features/tabs/home/data/data_source/remote/up_comming_movies/up_comming_movies_data_source.dart'
    as _i33;
import '../../features/tabs/home/data/data_source/remote/up_comming_movies/up_comming_movies_data_source_impl.dart'
    as _i34;
import '../../features/tabs/home/data/repository_impl/popular_movies_repository_impl.dart'
    as _i17;
import '../../features/tabs/home/data/repository_impl/top_rated_movies_repository_impl.dart'
    as _i30;
import '../../features/tabs/home/data/repository_impl/up_comming_movies_repository_impl.dart'
    as _i36;
import '../../features/tabs/home/domain/repository/popular_movies_repository.dart'
    as _i16;
import '../../features/tabs/home/domain/repository/top_rated_movies_repository.dart'
    as _i29;
import '../../features/tabs/home/domain/repository/up_comming_movies_repository.dart'
    as _i35;
import '../../features/tabs/home/domain/usecases/popular_movies_usecase.dart'
    as _i18;
import '../../features/tabs/home/domain/usecases/top_rated_movies_usecase.dart'
    as _i31;
import '../../features/tabs/home/domain/usecases/up_comming_movies_usecase.dart'
    as _i37;
import '../../features/tabs/home/ui/cubit/popular_movies/popular_movies_view_model.dart'
    as _i19;
import '../../features/tabs/home/ui/cubit/top_rated_movies/top_rated_view_model.dart'
    as _i32;
import '../../features/tabs/home/ui/cubit/up_comming_movies/up_comming_view_model.dart'
    as _i38;
import '../../features/tabs/presentation_view_model.dart' as _i20;
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
    gh.singleton<Dio>(() => Dio());
    gh.factory<_i3.ApiConsumer>(() => _i4.DioConsumer(client: gh<_i5.Dio>()));
    gh.singleton<_i6.ApiManager>(() => _i6.ApiManager(gh<_i3.ApiConsumer>()));
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
    gh.factory<_i14.PopularMoviesDataSource>(
        () => _i15.PopularMoviesDataSourceImpl(gh<_i6.ApiManager>()));
    gh.factory<_i16.PopularMoviesRepository>(() =>
        _i17.PopularMoviesRepositoryImpl(gh<_i14.PopularMoviesDataSource>()));
    gh.factory<_i18.PopularMoviesUseCase>(
        () => _i18.PopularMoviesUseCase(gh<_i16.PopularMoviesRepository>()));
    gh.factory<_i19.PopularMoviesViewModel>(
        () => _i19.PopularMoviesViewModel(gh<_i18.PopularMoviesUseCase>()));
    gh.factory<_i20.PresentationScreenViewModel>(
        () => _i20.PresentationScreenViewModel());
    gh.factory<_i21.SimilarMoviesOnlineDataSource>(() =>
        _i22.SimilarMoviesOnlineDataSourceImpl(
            gh<_i7.MovieDetailsFeatureApiManager>()));
    gh.factory<_i23.SimilarMoviesRepository>(() =>
        _i24.SimilarMoviesRepositoryImpl(
            gh<_i21.SimilarMoviesOnlineDataSource>()));
    gh.factory<_i25.SimilarMoviesUseCase>(
        () => _i25.SimilarMoviesUseCase(gh<_i23.SimilarMoviesRepository>()));
    gh.factory<_i26.SimilarMoviesViewModel>(
        () => _i26.SimilarMoviesViewModel(gh<_i25.SimilarMoviesUseCase>()));
    gh.factory<_i27.TopRatedMoviesDataSource>(
        () => _i28.TopRatedMoviesDataSourceImpl(gh<_i6.ApiManager>()));
    gh.factory<_i29.TopRatedMoviesRepository>(() =>
        _i30.TopRatedMoviesRepositoryImpl(gh<_i27.TopRatedMoviesDataSource>()));
    gh.factory<_i31.TopRatedMoviesUseCase>(
        () => _i31.TopRatedMoviesUseCase(gh<_i29.TopRatedMoviesRepository>()));
    gh.factory<_i32.TopRatedViewModel>(
        () => _i32.TopRatedViewModel(gh<_i31.TopRatedMoviesUseCase>()));
    gh.factory<_i33.UpCommingMoviesDataSource>(
        () => _i34.UpCommingMoviesDataSourceImpl(gh<_i6.ApiManager>()));
    gh.factory<_i35.UpCommingMoviesRepository>(() =>
        _i36.UpCommingMoviesRepositoryImpl(
            gh<_i33.UpCommingMoviesDataSource>()));
    gh.factory<_i37.UpCommingMoviesUseCase>(() =>
        _i37.UpCommingMoviesUseCase(gh<_i35.UpCommingMoviesRepository>()));
    gh.factory<_i38.UpCommingMoviesViewModel>(
        () => _i38.UpCommingMoviesViewModel(gh<_i37.UpCommingMoviesUseCase>()));
    return this;
  }
}
