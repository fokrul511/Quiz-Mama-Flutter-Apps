import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_apps_flutter/screens/quiz_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.off(() => const QuizScreen());
  }

  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            _logo(),
            const Spacer(),
            const CircularProgressIndicator(),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }

  Widget _logo() => const Image(image: AssetImage('assets/quiz-logo.png'),width: 200,);
}
