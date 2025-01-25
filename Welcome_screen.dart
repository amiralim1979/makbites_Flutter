import 'package:flutter/material.dart';

void main() {
  runApp(const MAKApp());
}

class MAKApp extends StatelessWidget {
  const MAKApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2B4D3C), // رنگ پس‌زمینه
      body: Center(
        child: Text(
          "Welcome to MAK Bites!",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
