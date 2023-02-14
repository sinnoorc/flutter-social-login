import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyCU-7ylWhytl9Tees3QmWdwfQTZomkGQBQ',
    appId: '1:149098176087:web:425679539108689f2dcd12',
    messagingSenderId: '149098176087',
    projectId: 'login-with-399f5',
    authDomain: 'login-with-399f5.firebaseapp.com',
    storageBucket: 'login-with-399f5.appspot.com',
    measurementId: 'G-S75SQ4HQY9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBOuEOVpPiy4CbIVbz1V8WolhOuM6wTsNE',
    appId: '1:149098176087:android:d3212b2b751a12a32dcd12',
    messagingSenderId: '149098176087',
    projectId: 'login-with-399f5',
    storageBucket: 'login-with-399f5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBDma2uYPsxDxRXNAEYKbKj-_DJwkINCeQ',
    appId: '1:149098176087:ios:3e7b01c4b4fbe4902dcd12',
    messagingSenderId: '149098176087',
    projectId: 'login-with-399f5',
    storageBucket: 'login-with-399f5.appspot.com',
    iosClientId: '149098176087-9oa1ia2vkqbg3edktedphgk7ud1j8b6t.apps.googleusercontent.com',
    iosBundleId: 'com.sinnoor.login',
  );
}
