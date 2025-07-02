import 'package:flutter/material.dart';
import 'package:myapp1/first_page.dart';
import 'package:myapp1/second_page.dart';
import 'package:myapp1/detail_page.dart';

class AppRoutes {
  static const first = '/';
  static const second = '/second';
  static const detail = '/detail';

  static Map<String, WidgetBuilder> get routes => {
    first: (context) => const FirstPage(),
    second: (context) => const SecondPage(),
    detail: (context) => const DetailPage(),
  };
}
