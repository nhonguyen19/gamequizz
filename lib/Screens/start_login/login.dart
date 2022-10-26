import 'package:flutter/material.dart';
import 'package:game_quizz/Screens/start_login/widgets.dart';
import 'Register.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // _image(context),
            _input(context),
            _signup(context),
          ],
        ),
      ),
    );
  }
}

// _image(context) {
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.spaceAround,
//     children: [
//       SizedBox(height: 30,),
//       Image.asset(
//         "assets/image.png",
//         width: 100,
//         height: 100,
//       ), 
//       text_quizz(context),
//     ],
//   );
// }


_input(context) {
  const edgeInsets = EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0);
  return Container(
    padding: edgeInsets,
    child: Column(
      children: [
         
      Image.asset(
        "assets/image.png",
        width: 100,
        height: 100,
      ), 
      text_quizz(context),
      SizedBox(height: 30),
        TextField(
          decoration: InputDecoration(
            hintText: "Tên đăng nhập",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.person),
          ),
        ),
        SizedBox(height: 30),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Mật khẩu",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.key),
          ),
        ),
        SizedBox(height: 30),
        ElevatedButton(
            onPressed: () {},
            child: Text(
              "Đăng nhập",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w400),
            ),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(200, 60),
              shape: StadiumBorder(),
              padding: edgeInsets,
            ))
      ],
    ),
  );
}

_signup(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Bạn chưa có tài khoản? ",
        style: TextStyle(color: Colors.black54, fontSize: 20),
      ),
      TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Register()));
          },
          child: Text(
            "Đăng kí",
            style: TextStyle(fontSize: 20),
          ))
    ],
  );
}
