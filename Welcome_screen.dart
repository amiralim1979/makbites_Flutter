import 'package:flutter/material.dart';
import 'free_menu_screen.dart';
import 'premium_menu_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2B4D3C), // رنگ پس‌زمینه
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to MAK Bites!",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FreeMenuScreen()),
                );
              },
              child: Text("Free Account"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PremiumMenuScreen()),
                );
              },
              child: Text("Premium Account"),
            ),
          ],
        ),
      ),
    );
  }
}
