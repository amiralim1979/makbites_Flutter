import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // متد ثبت‌نام با ایمیل و رمز عبور
  Future<User?> signUpWithEmail(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      print("❌ Error in signUpWithEmail: $e");
      return null;
    }
  }

  // متد ورود با ایمیل و رمز عبور
  Future<User?> signInWithEmail(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      print("❌ Error in signInWithEmail: $e");
      return null;
    }
  }

  // متد خروج از حساب
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
