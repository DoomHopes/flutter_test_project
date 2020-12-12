import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              // Если color находится не в decoration, то будет ошибка
              shape: BoxShape.circle,
              border: Border.all(),
              color: Colors.amber[600]),
          alignment: Alignment.center,
          width: 250,
          height: 250,
          margin: const EdgeInsets.all(0.0), //margin внешний отступ
          padding: const EdgeInsets.all(0.0), //padding внутрений отступ
          child: Text('Some text'),
        ),
      ),
    );
  }
}
