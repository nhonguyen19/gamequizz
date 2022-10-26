import 'package:flutter/material.dart';
import 'package:game_quizz/Screens/start_login/Home_Screen/home.dart';
import 'package:game_quizz/Screens/start_login/Register.dart';
import 'package:game_quizz/Screens/start_login/login.dart';
import 'Screens/start_login/Start_Screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen (),
    );
  }
}
