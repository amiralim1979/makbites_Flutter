import 'package:flutter/material.dart';
import 'package:makbites/screens/free_menu_screen.dart';
import 'package:makbites/screens/premium_menu_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // رنگ پس‌زمینه
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // تصویر لوگو
            Image.asset(
              'assets/images/logo.png',  // مسیر تصویر لوگو
              height: 150,  // اندازه ارتفاع
              width: 150,   // اندازه عرض
            ),
            SizedBox(height: 40), // فاصله بین تصویر و متن

            // متن خوش‌آمدگویی
            Text(
              "Welcome to MAK Bites!",
              style: TextStyle(
                color: Colors.black87,
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
                backgroundColor: Colors.deepOrange, // رنگ پس‌زمینه دکمه
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
                backgroundColor: Color(0xFF2B4D3C), // رنگ پس‌زمینه دکمه
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
