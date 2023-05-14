import 'package:carcal_mobile_project/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatefulWidget {
  final double totalCarbonTons;

  const ResultPage({Key? key, required this.totalCarbonTons}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late String grade;
  late String content;
  late String recommendation;

  @override
  void initState() {
    super.initState();

    if (widget.totalCarbonTons < 40) {
      grade = 'A';
      content = 'You are doing great! Keep up the good work!';
      recommendation =
          "Recommendation You are doing great! Keep up the good work!";
    } else if (widget.totalCarbonTons < 70) {
      grade = 'B';
      content = 'You are doing great! Keep up the good work!';
      recommendation =
          "Recommendation You are doing great! Keep up the good work!";
    } else if (widget.totalCarbonTons < 100) {
      grade = 'C';
      content = 'You are doing great! Keep up the good work!';
      recommendation =
          "Recommendation You are doing great! Keep up the good work!";
    } else if (widget.totalCarbonTons < 140) {
      grade = 'D';
      content = 'You are doing great! Keep up the good work!';
      recommendation =
          "Recommendation You are doing great! Keep up the good work!";
    } else {
      grade = 'F';
      content = 'You are doing great! Keep up the good work!';
      recommendation =
          "Recommendation You are doing great! Keep up the good work!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9D9D9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Result',
          style: TextStyle(
            color: Color(0xFF2D6936),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF2D6936),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Grade ${grade}',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '${widget.totalCarbonTons} metric ton',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF2D6936),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              content,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Recommendation',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 5),
            Text(
              recommendation,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 20.0,
                  ),
                  child: Text(
                    'Go to home page',
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF5D8262),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
