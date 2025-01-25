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
            // متن خوش‌آمدگویی
            Text(
              "Welcome to MAK Bites!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40), // فاصله بین متن و دکمه‌ها

            // دکمه Free Account
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FreeMenuScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // رنگ پس‌زمینه دکمه
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // گوشه‌های گرد
                ),
              ),
              child: Text(
                "Free Account",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(height: 20), // فاصله بین دکمه‌ها

            // دکمه Premium Account
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PremiumMenuScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // رنگ پس‌زمینه دکمه
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // گوشه‌های گرد
                ),
              ),
              child: Text(
                "Premium Account",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
