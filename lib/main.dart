import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'welcome_page.dart';
import 'home_page.dart';
import 'select_topic_page.dart';
import 'question_page.dart';
import 'result_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: 'splash',
      routes: {
        'splash': (context) => SplashScreen(),
        //'welcome': (context) => WelcomePage(),
        //'home': (context) => HomePage(),
        //'select_topic': (context) => SelectTopicPage(),
        //'question': (context) => QuestionPage(),
        //'result': (context) => ResultPage(),
      },
    );
  }
}
