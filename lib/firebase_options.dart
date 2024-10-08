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
    apiKey: 'AIzaSyCsjnbDgpgX5JnRSjlibYXc-Eh535HshTo',
    appId: '1:318436618202:web:fa7834262dd97cd3569ae3',
    messagingSenderId: '318436618202',
    projectId: 'cyberapp-f6ff7',
    authDomain: 'cyberapp-f6ff7.firebaseapp.com',
    storageBucket: 'cyberapp-f6ff7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyByKLMqgAujr6JH3D5XXZ0zXXJLrzf31HE',
    appId: '1:318436618202:android:b4763b902e03fcb2569ae3',
    messagingSenderId: '318436618202',
    projectId: 'cyberapp-f6ff7',
    storageBucket: 'cyberapp-f6ff7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDEyoGw8Kgg5NGhbNIIOyS1ftWWRfzET0k',
    appId: '1:318436618202:ios:bf6f666d425039bb569ae3',
    messagingSenderId: '318436618202',
    projectId: 'cyberapp-f6ff7',
    storageBucket: 'cyberapp-f6ff7.appspot.com',
    iosBundleId: 'com.neekeetuh.cyberapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDEyoGw8Kgg5NGhbNIIOyS1ftWWRfzET0k',
    appId: '1:318436618202:ios:bf6f666d425039bb569ae3',
    messagingSenderId: '318436618202',
    projectId: 'cyberapp-f6ff7',
    storageBucket: 'cyberapp-f6ff7.appspot.com',
    iosBundleId: 'com.neekeetuh.cyberapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCsjnbDgpgX5JnRSjlibYXc-Eh535HshTo',
    appId: '1:318436618202:web:1b15409edbad79e4569ae3',
    messagingSenderId: '318436618202',
    projectId: 'cyberapp-f6ff7',
    authDomain: 'cyberapp-f6ff7.firebaseapp.com',
    storageBucket: 'cyberapp-f6ff7.appspot.com',
  );
}
