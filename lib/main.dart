import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

import 'pages/home_page.dart';

void main() {
  debugPaintSizeEnabled = false; // Показывает границы виджетов
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App',
        theme: ThemeData(primarySwatch: Colors.green),
        home: HomePage());
  }
}
