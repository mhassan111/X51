import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

import 'env/env.dart';

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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
      apiKey: Env.apiKey,
      appId: Env.appId,
      messagingSenderId: Env.messagingSenderId,
      projectId: Env.projectId,
      authDomain: Env.authDomain,
      storageBucket: Env.storageBucket
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC-UQrx582MIQFWOGNN9tfAr0nkDnd6nTU',
    appId: '1:852788491165:android:028cbd7bbabeadc36ab574',
    messagingSenderId: '852788491165',
    projectId: 'facebook-clone-d35c7',
    storageBucket: 'facebook-clone-d35c7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCfo70UUsJFiVjiOun5GYDDip-VMkO5hXE',
    appId: '1:852788491165:ios:2d64d7d926f8ad576ab574',
    messagingSenderId: '852788491165',
    projectId: 'facebook-clone-d35c7',
    storageBucket: 'facebook-clone-d35c7.appspot.com',
    iosClientId: '852788491165-7pgkn1471rha752r17gmp13bujhj186n.apps.googleusercontent.com',
    iosBundleId: 'com.codehq.facebookClone',
  );
}
