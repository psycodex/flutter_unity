import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_unity_widget_example/services/unity.service.dart';
import 'package:injectable/injectable.dart';

import 'firebase.service.dart';
import 'notification.service.dart';

@module
abstract class AppModule {
  // @preResolve
  // Future<FirebaseService> get fireService => FirebaseService.init();

  @preResolve
  Future<UnityService> get unityService => UnityService.init();

  // @injectable
  // FirebaseFirestore get store => FirebaseFirestore.instance;

  // @injectable
  // FirebaseAuth get auth => FirebaseAuth.instance;

  // @injectable
  // AppRouter get appRouter => AppRouter();

  @preResolve
  Future<NotificationService> get notificationService async =>
      await NotificationService.init();
}
