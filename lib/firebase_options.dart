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
    apiKey: 'AIzaSyB3N9MuXq-ipoYCMANrnvoXduTeAlc01kA',
    appId: '1:123705868278:web:71b66edf40bd1d6a4411d7',
    messagingSenderId: '123705868278',
    projectId: 'px103012023',
    authDomain: 'px103012023.firebaseapp.com',
    storageBucket: 'px103012023.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAIMUH9nKxc5qDWX9Gp6xiULV2jRlD1Nuc',
    appId: '1:123705868278:android:ce460911232280b14411d7',
    messagingSenderId: '123705868278',
    projectId: 'px103012023',
    storageBucket: 'px103012023.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBumBWJdpeGaXgJa_Kn_2NpEQ8ZfgHcrkg',
    appId: '1:123705868278:ios:6d1f1bbcca91058e4411d7',
    messagingSenderId: '123705868278',
    projectId: 'px103012023',
    storageBucket: 'px103012023.appspot.com',
    iosClientId: '123705868278-hvjsgcv13bgdn094hka3qagrnr7cotr3.apps.googleusercontent.com',
    iosBundleId: 'com.eje0802frb.eje0802',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBumBWJdpeGaXgJa_Kn_2NpEQ8ZfgHcrkg',
    appId: '1:123705868278:ios:6d1f1bbcca91058e4411d7',
    messagingSenderId: '123705868278',
    projectId: 'px103012023',
    storageBucket: 'px103012023.appspot.com',
    iosClientId: '123705868278-hvjsgcv13bgdn094hka3qagrnr7cotr3.apps.googleusercontent.com',
    iosBundleId: 'com.eje0802frb.eje0802',
  );
}
