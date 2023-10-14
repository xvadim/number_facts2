// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../domain/numbers_api_repository.dart' as _i7;
import '../../infrastructure/api/numbers_api_client_impl.dart' as _i6;
import '../../infrastructure/api/retrofit_client.dart' as _i4;
import '../../infrastructure/numbers_api_repository_impl.dart' as _i8;
import '../api/numbers_api_client.dart' as _i5;
import 'modules/api_module.dart' as _i9;

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
    final apiModule = _$ApiModule();
    gh.singleton<_i3.Dio>(apiModule.dioClient());
    gh.lazySingleton<_i4.RetrofitClient>(
        () => _i4.RetrofitClient(gh<_i3.Dio>()));
    gh.singleton<_i5.NumbersApiClient>(
        _i6.NumbersApiClientImpl(gh<_i4.RetrofitClient>()));
    gh.factory<_i7.NumberApiRepository>(
        () => _i8.NumberApiRepositoryImpl(gh<_i5.NumbersApiClient>()));
    return this;
  }
}

class _$ApiModule extends _i9.ApiModule {}
