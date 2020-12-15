import 'package:flutter/material.dart';

class MyFlexible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RowColumn')),
      body: Container(
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 60,
              child: Text(
                'T-34-85',
                style: TextStyle(fontSize: 14, color: Colors.black87),
                softWrap: true, // Текст не вылазит за границы родителя
                overflow: TextOverflow
                    .visible, // Если текст не влез, то он вылезет за границы
              ),
            ),
            Icon(
              Icons.favorite,
              size: 60,
              color: Colors.red,
            ),
            Image.network(
                'https://www.southwarknews.co.uk/wp-content/uploads/2020/04/Bermondsey-tank.jpg'),

            /*BiggerColorBox(),
            Flexible(
                fit: FlexFit
                    .tight, //FlexFit показывает как элемент будет занимать все доступное пространство
                flex:
                    2, //flex показывает долю которыю забирает себе каждый гибкий виджет
                child: ColorBox()),

            /*SizedBox(
              width: 40,
            ),

            SizedBox(width: 100, height: 100, child: ColorBox()),*/

            Spacer(
              flex: 1,
            ),

            Expanded(flex: 4, child: ColorBox()),
            //Expanded(child: null) // тот же Flexible где fit = tight*/
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
