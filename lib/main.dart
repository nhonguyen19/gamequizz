import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:game_quizz/screens/home.dart';
import 'package:game_quizz/screens/Register.dart';
import 'package:game_quizz/screens/leaderboard_screen.dart';
import 'package:game_quizz/screens/login.dart';
import 'package:game_quizz/play/routes/routes.dart';
import 'package:game_quizz/provider/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'screens/Start_Screens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context)=> GoogleSignInProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
     home: StartScreen(),
    ),
    );
  
}
