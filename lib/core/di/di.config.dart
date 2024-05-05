// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/tabs/home/data/api/api_manager.dart' as _i6;
import '../../features/tabs/home/data/data_source/remote/popular_movies/popular_movies_data_source.dart'
    as _i7;
import '../../features/tabs/home/data/data_source/remote/popular_movies/popular_movies_data_source_impl.dart'
    as _i8;
import '../../features/tabs/home/data/data_source/remote/top_rated_movies/top_rated_movies_data_source.dart'
    as _i14;
import '../../features/tabs/home/data/data_source/remote/top_rated_movies/top_rated_movies_data_source_impl.dart'
    as _i15;
import '../../features/tabs/home/data/data_source/remote/up_comming_movies/up_comming_movies_data_source.dart'
    as _i20;
import '../../features/tabs/home/data/data_source/remote/up_comming_movies/up_comming_movies_data_source_impl.dart'
    as _i21;
import '../../features/tabs/home/data/repository_impl/popular_movies_repository_impl.dart'
    as _i10;
import '../../features/tabs/home/data/repository_impl/top_rated_movies_repository_impl.dart'
    as _i17;
import '../../features/tabs/home/data/repository_impl/up_comming_movies_repository_impl.dart'
    as _i23;
import '../../features/tabs/home/domain/repository/popular_movies_repository.dart'
    as _i9;
import '../../features/tabs/home/domain/repository/top_rated_movies_repository.dart'
    as _i16;
import '../../features/tabs/home/domain/repository/up_comming_movies_repository.dart'
    as _i22;
import '../../features/tabs/home/domain/usecases/popular_movies_usecase.dart'
    as _i11;
import '../../features/tabs/home/domain/usecases/top_rated_movies_usecase.dart'
    as _i18;
import '../../features/tabs/home/domain/usecases/up_comming_movies_usecase.dart'
    as _i24;
import '../../features/tabs/home/ui/cubit/popular_movies_view_model.dart'
    as _i12;
import '../../features/tabs/home/ui/cubit/top_rated_view_model.dart' as _i19;
import '../../features/tabs/home/ui/cubit/up_comming_view_model.dart' as _i25;
import '../../features/tabs/presentation_view_model.dart' as _i13;
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
    gh.factory<_i3.ApiConsumer>(() => _i4.DioConsumer(client: gh<_i5.Dio>()));
    gh.singleton<_i6.ApiManager>(() => _i6.ApiManager(gh<_i3.ApiConsumer>()));
    gh.factory<_i7.PopularMoviesDataSource>(
        () => _i8.PopularMoviesDataSourceImpl(gh<_i6.ApiManager>()));
    gh.factory<_i9.PopularMoviesRepository>(() =>
        _i10.PopularMoviesRepositoryImpl(gh<_i7.PopularMoviesDataSource>()));
    gh.factory<_i11.PopularMoviesUseCase>(
        () => _i11.PopularMoviesUseCase(gh<_i9.PopularMoviesRepository>()));
    gh.factory<_i12.PopularMoviesViewModel>(
        () => _i12.PopularMoviesViewModel(gh<_i11.PopularMoviesUseCase>()));
    gh.factory<_i13.PresentationScreenViewModel>(
        () => _i13.PresentationScreenViewModel());
    gh.factory<_i14.TopRatedMoviesDataSource>(
        () => _i15.TopRatedMoviesDataSourceImpl(gh<_i6.ApiManager>()));
    gh.factory<_i16.TopRatedMoviesRepository>(() =>
        _i17.TopRatedMoviesRepositoryImpl(gh<_i14.TopRatedMoviesDataSource>()));
    gh.factory<_i18.TopRatedMoviesUseCase>(
        () => _i18.TopRatedMoviesUseCase(gh<_i16.TopRatedMoviesRepository>()));
    gh.factory<_i19.TopRatedViewModel>(
        () => _i19.TopRatedViewModel(gh<_i18.TopRatedMoviesUseCase>()));
    gh.factory<_i20.UpCommingMoviesDataSource>(
        () => _i21.UpCommingMoviesDataSourceImpl(gh<_i6.ApiManager>()));
    gh.factory<_i22.UpCommingMoviesRepository>(() =>
        _i23.UpCommingMoviesRepositoryImpl(
            gh<_i20.UpCommingMoviesDataSource>()));
    gh.factory<_i24.UpCommingMoviesUseCase>(() =>
        _i24.UpCommingMoviesUseCase(gh<_i22.UpCommingMoviesRepository>()));
    gh.factory<_i25.UpCommingMoviesViewModel>(
        () => _i25.UpCommingMoviesViewModel(gh<_i24.UpCommingMoviesUseCase>()));
    return this;
  }
}
