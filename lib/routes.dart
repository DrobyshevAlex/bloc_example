import 'package:bloc_example/ui/ui.dart';
import 'package:flutter/material.dart';

/*
  Хелпер для навигации
 */
class Routes {

  /*
    Экран статьи
   */
  static MaterialPageRoute<void> article(int id) {
    return MaterialPageRoute<void>(builder: (_) => ArticleViewPage(id));
  }
}
