// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBccC-8UxnLL7DgKBqQOWKH4u2ff2SgHUU',
    appId: '1:815479749819:web:8a8a61ca26b270927d7d9e',
    messagingSenderId: '815479749819',
    projectId: 'air-guard-01',
    authDomain: 'air-guard-01.firebaseapp.com',
    databaseURL: 'https://air-guard-01-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'air-guard-01.appspot.com',
    measurementId: 'G-E9BTHK15HG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBWF0A1wpMnD79_TZucRqOXqxDoUPJVOdM',
    appId: '1:815479749819:android:e1b73c5ad46116d47d7d9e',
    messagingSenderId: '815479749819',
    projectId: 'air-guard-01',
    databaseURL: 'https://air-guard-01-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'air-guard-01.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyABDH16tkt3uqf8bt-FKjxxX8m1fM7ke88',
    appId: '1:815479749819:ios:e5adf0466ca020417d7d9e',
    messagingSenderId: '815479749819',
    projectId: 'air-guard-01',
    databaseURL: 'https://air-guard-01-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'air-guard-01.appspot.com',
    iosBundleId: 'com.example.airguard',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyABDH16tkt3uqf8bt-FKjxxX8m1fM7ke88',
    appId: '1:815479749819:ios:e5adf0466ca020417d7d9e',
    messagingSenderId: '815479749819',
    projectId: 'air-guard-01',
    databaseURL: 'https://air-guard-01-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'air-guard-01.appspot.com',
    iosBundleId: 'com.example.airguard',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBccC-8UxnLL7DgKBqQOWKH4u2ff2SgHUU',
    appId: '1:815479749819:web:7309069a3ffdd7c57d7d9e',
    messagingSenderId: '815479749819',
    projectId: 'air-guard-01',
    authDomain: 'air-guard-01.firebaseapp.com',
    databaseURL: 'https://air-guard-01-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'air-guard-01.appspot.com',
    measurementId: 'G-YBEDD2MTWS',
  );
}
