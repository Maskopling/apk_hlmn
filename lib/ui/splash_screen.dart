import 'package:flutter/material.dart';
import 'package:tugas_uts/ui/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    openHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'image/logokampus.jpg',
          scale: 10,
        ),
      ),
    );
  }

  openHome() {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const MainScreen()));
    });
  }
}