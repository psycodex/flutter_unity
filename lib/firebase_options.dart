// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyACmxr9-NeGm-17vvrQFn1EsLdFj1A5650',
    appId: '1:150015187293:web:aa4b96df6f2e9b8a5bb0b4',
    messagingSenderId: '150015187293',
    projectId: 'psyc-fit',
    authDomain: 'psyc-fit.firebaseapp.com',
    storageBucket: 'psyc-fit.appspot.com',
    measurementId: 'G-V9ZP91TFQ3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDyHPj3F_lZbx3qJoGl1JYOf5O6AUqj4UM',
    appId: '1:150015187293:android:63211b82cc090f155bb0b4',
    messagingSenderId: '150015187293',
    projectId: 'psyc-fit',
    storageBucket: 'psyc-fit.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBwgRxIxBiQcFMRil5vzWcugBIg6Q2kqQE',
    appId: '1:150015187293:ios:55a4040145121dd95bb0b4',
    messagingSenderId: '150015187293',
    projectId: 'psyc-fit',
    storageBucket: 'psyc-fit.appspot.com',
    iosClientId: '150015187293-3c3mrtqbl8f963c4v89j7ajm258vn7fs.apps.googleusercontent.com',
    iosBundleId: 'com.psycodex.psycfit',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBwgRxIxBiQcFMRil5vzWcugBIg6Q2kqQE',
    appId: '1:150015187293:ios:602585e46d629aec5bb0b4',
    messagingSenderId: '150015187293',
    projectId: 'psyc-fit',
    storageBucket: 'psyc-fit.appspot.com',
    iosClientId: '150015187293-fsi28kvnr2045k4b36kgvpmn8gidb8tn.apps.googleusercontent.com',
    iosBundleId: 'com.psycodex.psyfit',
  );
}
