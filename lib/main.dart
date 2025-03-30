import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/quiz_page.dart';
import 'pages/result_page.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Kuis',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(
          username: ModalRoute.of(context)?.settings.arguments as String? ?? 'Pengguna',
        ),
        '/quiz': (context) => QuizPage(),
        '/result': (context) {
          final score = ModalRoute.of(context)!.settings.arguments as int;
          return ResultPage(score: score);
        },
      },
    );
  }
}

