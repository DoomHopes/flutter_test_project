import 'package:flutter/material.dart';

class MyCardView extends StatelessWidget {
  final List<String> elements = [
    "Zero",
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "A Million Billion Trillion",
    "A much, much longer text that will still fit"
  ];

  @override
  Widget build(context) => Scaffold(
        body: ListView.builder(
          itemCount: elements.length,
          itemBuilder: (context, i) => Card(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(elements[i]),
              ),
            ),
          ),
        ),
      );
}
