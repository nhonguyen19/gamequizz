import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:game_quizz/Screens/home.dart';
import 'package:game_quizz/Screens/home_screen.dart';
import 'package:game_quizz/Screens/login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';


class GoogleSignInProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();
  
  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;
  Future googleLogin(context) async {
    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) return;
    _user = googleUser;
    final googleAuth = await googleUser.authentication;
    if (googleAuth.accessToken != null && googleAuth.idToken != null) {
      try {
        final credential =GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
        await FirebaseAuth.instance.signInWithCredential(credential);

        print("successfully login!");
      } catch (e) {
        print("failed login!");
      }
    }
    notifyListeners();
  }

  Future googleLogout(context) async {
            await googleSignIn.signOut();
  }
}
