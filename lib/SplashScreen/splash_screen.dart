import 'package:e_commerce_project/HomeScreen/home_screen.dart';
import 'package:e_commerce_project/LoginScreen/page/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBEDE4),
      body: Center(
        child: Text(
          'NBA STORE',
          style: GoogleFonts.luckiestGuy(
            fontSize: 40,
            color: const Color(0xff2C2C2C),
          ),
        ),
      ),
    );
  }
}
