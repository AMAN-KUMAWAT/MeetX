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
    apiKey: 'AIzaSyChLkm55BO5W-HANEWt52SRrfQkozoww8c',
    appId: '1:853796840191:web:05916c48fa6373354ea2ca',
    messagingSenderId: '853796840191',
    projectId: 'meetx-45cfb',
    authDomain: 'meetx-45cfb.firebaseapp.com',
    storageBucket: 'meetx-45cfb.firebasestorage.app',
    measurementId: 'G-TH45J7FCJ8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAWOsx5PDqFS1-VXdtuRowjPrj_3wtvOLo',
    appId: '1:853796840191:android:f865b13c6480cc384ea2ca',
    messagingSenderId: '853796840191',
    projectId: 'meetx-45cfb',
    storageBucket: 'meetx-45cfb.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDuyOZtmzCAlq1GFgS7Q-4lFoH9QQnuV6s',
    appId: '1:853796840191:ios:84866144211d62354ea2ca',
    messagingSenderId: '853796840191',
    projectId: 'meetx-45cfb',
    storageBucket: 'meetx-45cfb.firebasestorage.app',
    iosBundleId: 'com.example.project',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDuyOZtmzCAlq1GFgS7Q-4lFoH9QQnuV6s',
    appId: '1:853796840191:ios:84866144211d62354ea2ca',
    messagingSenderId: '853796840191',
    projectId: 'meetx-45cfb',
    storageBucket: 'meetx-45cfb.firebasestorage.app',
    iosBundleId: 'com.example.project',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyChLkm55BO5W-HANEWt52SRrfQkozoww8c',
    appId: '1:853796840191:web:05ed49a99b8f73d74ea2ca',
    messagingSenderId: '853796840191',
    projectId: 'meetx-45cfb',
    authDomain: 'meetx-45cfb.firebaseapp.com',
    storageBucket: 'meetx-45cfb.firebasestorage.app',
    measurementId: 'G-PZXELJEL72',
  );
}
