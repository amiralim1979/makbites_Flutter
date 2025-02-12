import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (isWeb) {
      // تنظیمات برای وب
      return FirebaseOptions(
        apiKey: "AIzaSyCrK-z_R0Br7B70JXACprHw3Pl1CHUE95c",
        appId: "1:905421959706:web:06404485f774f903bb17a3",
        messagingSenderId: "905421959706",
        projectId: "makbites-13388",
        authDomain: "makbites-13388.firebaseapp.com",
        storageBucket: "makbites-13388.firebasestorage.app",
      );
    } else if (isAndroid) {
      // تنظیمات برای اندروید (از google-services.json)
      return FirebaseOptions(
        apiKey: "AIzaSyA02lwgQqhMKvRtHNbdTh5Es8UubpORMnY",
        appId: "1:905421959706:android:6979e33f0b680e3fbb17a3",
        messagingSenderId: "905421959706",
        projectId: "makbites-13388",
        authDomain: "makbites-13388.firebaseapp.com",
        storageBucket: "makbites-13388.appspot.com",
      );
    } else if (isIOS) {
      // تنظیمات برای iOS (از GoogleService-Info.plist)
      return FirebaseOptions(
        apiKey: "AIzaSyBR643Q0HpRGHTQHUWnBy6ZZoQprefgzAY",
        appId: "1:905421959706:ios:8e1ffiosBundleId481bb17a3",
        iosBundleId: "com.example.makbitesv1",
        messagingSenderId: "905421959706",
        projectId: "makbites-13388",
        authDomain: "makbites-13388.firebaseapp.com",
        storageBucket: "makbites-13388.appspot.com",
      );
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }
}

// این متغیرها برای شناسایی پلتفرم مورد استفاده در کد قرار می‌گیرند
//bool get isWeb => identical(0, 0.0); // وب
//bool get isAndroid => defaultTargetPlatform == TargetPlatform.android; // اندروید
//bool get isIOS => defaultTargetPlatform == TargetPlatform.iOS; // iOS
