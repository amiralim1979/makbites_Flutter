import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart'; // مسیر فایل صفحه خوش‌آمدگویی

void main() {
  runApp(const MAKApp());
}

class MAKApp extends StatelessWidget {
  const MAKApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // حذف بنر Debug
      home: WelcomeScreen(), // صفحه اصلی
    );
  }
}
