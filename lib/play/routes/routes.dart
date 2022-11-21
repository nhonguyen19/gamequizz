import 'package:flutter/material.dart';
import 'package:game_quizz/play/views/logo_page.dart';
import 'package:game_quizz/play/views/questions_page.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes() {
    return {
      LogoPage.id: (context) => LogoPage(),
      QuestionsPage.id: (context) => QuestionsPage(),
    };
  }
}
