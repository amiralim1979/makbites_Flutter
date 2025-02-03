import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;

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
        apiKey: "AIzaSy...your-api-key...",
        appId: "1:1234567890:web:abcd1234",
        messagingSenderId: "1234567890",
        projectId: "your-project-id",
        authDomain: "your-project.firebaseapp.com",
        storageBucket: "your-project.appspot.com",
      );
    } else if (isIOS) {
      // تنظیمات برای iOS (از GoogleService-Info.plist)
      return FirebaseOptions(
        apiKey: "AIzaSy...your-api-key...",
        appId: "1:1234567890:web:abcd1234",
        messagingSenderId: "1234567890",
        projectId: "your-project-id",
        authDomain: "your-project.firebaseapp.com",
        storageBucket: "your-project.appspot.com",
      );
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }
}

// این متغیرها برای شناسایی پلتفرم مورد استفاده در کد قرار می‌گیرند
bool get isWeb => identical(0, 0.0); // وب
bool get isAndroid => defaultTargetPlatform == TargetPlatform.android; // اندروید
bool get isIOS => defaultTargetPlatform == TargetPlatform.iOS; // iOS
