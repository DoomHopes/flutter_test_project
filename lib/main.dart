import 'package:flutter/material.dart';
import 'package:flutter_test_project/row_column.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App',
        theme: ThemeData(primarySwatch: Colors.green),
        home: MyRowColumn());
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
