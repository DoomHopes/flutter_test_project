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
          /*decoration: BoxDecoration(
              // Если color находится не в decoration, то будет ошибка
              border: Border.all(),
              color: Colors.amber[600]),
          alignment: Alignment.center,
          width: 250,
          height: 250,
          margin: const EdgeInsets.all(50.0), //margin внешний отступ
          padding: const EdgeInsets.all(10.0), //padding внутрений отступ*/
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.network(
                        'https://nationalinterest.org/sites/default/files/main_images/5320036.jpg')
                    .image,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(30)),
          child: Text(
            'Abrams',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
