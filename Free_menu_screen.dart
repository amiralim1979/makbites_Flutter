import 'package:flutter/material.dart';

class FreeMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Free Menu"),
        backgroundColor: Color(0xFF2B4D3C),
      ),
      body: Center(
        child: Text(
          "This is the Free Menu Screen",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
