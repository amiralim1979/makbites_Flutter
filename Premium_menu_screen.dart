import 'package:flutter/material.dart';

class PremiumMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Premium Menu"),
        backgroundColor: Color(0xFF2B4D3C),
      ),
      body: Center(
        child: Text(
          "This is the Premium Menu Screen",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
