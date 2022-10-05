// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_analytics/firebase_analytics.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_messaging/firebase_messaging.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'objectbox.g.dart' as _i9;
import 'routing/router.gr.dart' as _i3;
import 'services/app.module.dart' as _i11;
import 'services/firebase.service.dart' as _i8;
import 'services/unity.service.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  gh.factory<_i3.AppRouter>(() => appModule.appRouter);
  gh.factory<_i4.FirebaseAnalytics>(() => appModule.analytics);
  gh.factory<_i5.FirebaseAuth>(() => appModule.auth);
  gh.factory<_i6.FirebaseFirestore>(() => appModule.store);
  gh.factory<_i7.FirebaseMessaging>(() => appModule.messaging);
  await gh.factoryAsync<_i8.FirebaseService>(
    () => appModule.fireService,
    preResolve: true,
  );
  await gh.factoryAsync<_i9.Store>(
    () => appModule.objectBox,
    preResolve: true,
  );
  await gh.factoryAsync<_i10.UnityService>(
    () => appModule.unityService,
    preResolve: true,
  );
  return get;
}

class _$AppModule extends _i11.AppModule {}
