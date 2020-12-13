import 'package:flutter/material.dart';

class MyFlexible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RowColumn')),
      body: Container(
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            BiggerColorBox(),
            Flexible(
                fit: FlexFit
                    .tight, //FlexFit показывает как элемент будет занимать все доступное пространство
                child: ColorBox()),
            Flexible(fit: FlexFit.tight, child: ColorBox()),
          ],
        ),
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(color: Colors.red[900], border: Border.all()),
      child: Text('123'),
    );
  }
}

class BiggerColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 80,
      decoration: BoxDecoration(color: Colors.green, border: Border.all()),
    );
  }
}
