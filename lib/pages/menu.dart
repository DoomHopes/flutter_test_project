import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(context) {
    return Scaffold(
      body: ListView(children: [
        FlatButton(
            onPressed: () {
              showToast('First link',
                  duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
            },
            child: ListTile(
              leading: Icon(Icons.looks_one),
              title: Text("First Link"),
            )),
        FlatButton(
            onPressed: () {
              showToast('Second link',
                  duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
            },
            child: ListTile(
              leading: Icon(Icons.looks_two),
              title: Text("Second Link"),
            ))
      ]),
    );
  }

  void showToast(String msg, {int duration, int gravity}) {
    Toast.show(msg, context, duration: duration, gravity: gravity);
  }
}
