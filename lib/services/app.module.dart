import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:psyc_fit/routing/router.gr.dart';
import 'package:psyc_fit/services/unity.service.dart';
import 'package:injectable/injectable.dart';

import 'firebase.service.dart';
import 'notification.service.dart';

@module
abstract class AppModule {
  @preResolve
  Future<FirebaseService> get fireService => FirebaseService.init();

  @preResolve
  Future<UnityService> get unityService => UnityService.init();

  @injectable
  FirebaseFirestore get store => FirebaseFirestore.instance;

  @injectable
  FirebaseAuth get auth => FirebaseAuth.instance;

  @injectable
  FirebaseMessaging get messaging => FirebaseMessaging.instance;

  @injectable
  FirebaseAnalytics get analytics => FirebaseAnalytics.instance;

  @injectable
  AppRouter get appRouter => AppRouter();

// @preResolve
// Future<NotificationService> get notificationService async =>
//     await NotificationService.init();
}
