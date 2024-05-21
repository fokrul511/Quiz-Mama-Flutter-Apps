import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_apps_flutter/screens/splash_screen.dart';

import '/screens/quiz_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark().copyWith(),
      home: const SplashScreen(),
    );
  }
}
