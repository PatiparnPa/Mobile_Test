import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9D9D9),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/logo.png',
            height: 250,
          ),
          SizedBox(height: 30),
          Text(
            'Welcome',
            style: GoogleFonts.roboto(
              fontSize: 40,
              color: Color(0xFF2D6936),
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Welcome to our carbon calculator app! Measure your carbon footprint, reduce your impact, and make a difference. Let\'s get started!',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                fontSize: 18,
                color: Color(0xFF2D6936),
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(height: 100),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                'Let\'s get started',
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF2D6936),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
