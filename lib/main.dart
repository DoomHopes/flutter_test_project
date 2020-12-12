import 'package:flutter/material.dart';
import 'package:flutter_test_project/my%20container.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

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
        home: MyContainer());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Testing')),
        body: Container(
          child: Center(
            child: Text('TODO something'),
          ),
        ));
  }
}
