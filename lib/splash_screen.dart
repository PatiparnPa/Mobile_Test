import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'welcome_page.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Delay navigation to welcome page
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => WelcomePage()));
    });

    return Scaffold(
      backgroundColor: Color(0xFFD9D9D9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo.png',
              width: 150,
              height: 200,
            ),
            SizedBox(height: 10),
            Text(
              'CarCal',
              style: GoogleFonts.niconne(
                textStyle: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Small changes, big impact',
              style: GoogleFonts.niconne(
                textStyle: TextStyle(
                  fontSize: 28,
                  color: Color(0xFF2D6936),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
