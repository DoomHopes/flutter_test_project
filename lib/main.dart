import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:provider/provider.dart';

import 'models/data.dart';
import 'pages/card_view.dart';
import 'pages/home_page.dart';
import 'pages/menu.dart';
import 'pages/my_flexible.dart';

void main() {
  debugPaintSizeEnabled = false; // Показывает границы виджетов
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context) => Data(),
      child: MaterialApp(
          title: 'App',
          theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.black,
          ),
          home: Menu()),
    );
  }
}
