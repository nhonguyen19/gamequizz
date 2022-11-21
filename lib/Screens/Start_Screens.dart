import 'package:flutter/material.dart';
import 'package:game_quizz/Screens/login.dart';
import 'package:game_quizz/Screens/widgets.dart';
import 'package:game_quizz/main.dart';

const edgeInsets = EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0);

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                Image.asset(
                  "assets/image.png",
                  width: 100,
                  height: 100,
                ),
                text_quizz(context),
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginApp()));
                    },
                    child: Text(
                      'Start',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(200, 60),
                      shape: StadiumBorder(),
                      padding: edgeInsets,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
