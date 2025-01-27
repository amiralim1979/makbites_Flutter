import 'package:flutter/material.dart';

class PreferencesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Preferences')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Please fill out your preferences'),
            // فرم مربوط به آلرژی‌ها و تنظیمات دیگر
          ],
        ),
      ),
    );
  }
}
