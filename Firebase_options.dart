import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void initializeFirebase(dynamic DefaultFirebaseOptions) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
