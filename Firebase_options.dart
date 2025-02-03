import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    return FirebaseOptions(
      apiKey: "AIzaSy...your-api-key...",
      appId: "1:1234567890:web:abcd1234",
      messagingSenderId: "1234567890",
      projectId: "your-project-id",
      authDomain: "your-project.firebaseapp.com",
      storageBucket: "your-project.appspot.com",
    );
  }
}
