import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:game_quizz/Screens/home.dart';
import 'package:game_quizz/Screens/Register.dart';
import 'package:game_quizz/Screens/login.dart';
import 'package:game_quizz/play/routes/routes.dart';
import 'package:game_quizz/play/views/logo_page.dart';
import 'package:game_quizz/provider/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'Screens/Start_Screens.dart';
import 'Screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
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
     home: LoginApp(),
    ),
    );
  
}
