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
    apiKey: 'AIzaSyBTYVBuBgmcO922yv65BJ32hZ_036gt2i0',
    appId: '1:974188323196:web:59507d1d12c5992f10c4f9',
    messagingSenderId: '974188323196',
    projectId: 'mynotes-sina',
    authDomain: 'mynotes-sina.firebaseapp.com',
    storageBucket: 'mynotes-sina.appspot.com',
    measurementId: 'G-XPPSCTZMVZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA8N_AX71loCQ3W0rB49LcvLWKhpKhxp-w',
    appId: '1:974188323196:android:1f58b22a2df2ca2f10c4f9',
    messagingSenderId: '974188323196',
    projectId: 'mynotes-sina',
    storageBucket: 'mynotes-sina.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAzJCu3OGT6IXTYFjTPXt50z5EQn1XsqoQ',
    appId: '1:974188323196:ios:a609604f9093b42010c4f9',
    messagingSenderId: '974188323196',
    projectId: 'mynotes-sina',
    storageBucket: 'mynotes-sina.appspot.com',
    iosClientId: '974188323196-bv6vb1t4308q7pp4fbegsfmrhs25dgq1.apps.googleusercontent.com',
    iosBundleId: 'com.exitree.mynotes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAzJCu3OGT6IXTYFjTPXt50z5EQn1XsqoQ',
    appId: '1:974188323196:ios:3f5037c4b972e01610c4f9',
    messagingSenderId: '974188323196',
    projectId: 'mynotes-sina',
    storageBucket: 'mynotes-sina.appspot.com',
    iosClientId: '974188323196-h441nsut4sov5ls1pe9qpaslfqonsnic.apps.googleusercontent.com',
    iosBundleId: 'com.exitree.mynotes.RunnerTests',
  );
}
