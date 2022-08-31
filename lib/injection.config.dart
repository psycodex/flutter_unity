// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'routing/router.gr.dart' as _i3;
import 'services/app.module.dart' as _i6;
import 'services/notification.service.dart' as _i4;
import 'services/unity.service.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule();
  gh.factory<_i3.AppRouter>(() => appModule.appRouter);
  await gh.factoryAsync<_i4.NotificationService>(
      () => appModule.notificationService,
      preResolve: true);
  await gh.factoryAsync<_i5.UnityService>(() => appModule.unityService,
      preResolve: true);
  return get;
}

class _$AppModule extends _i6.AppModule {}
