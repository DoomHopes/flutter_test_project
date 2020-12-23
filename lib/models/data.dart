import 'package:flutter/foundation.dart';

class Data with ChangeNotifier {
  String _data = 'data';

  String get getData => _data;

  void changeString(String newString) {
    _data = newString;

    notifyListeners();
  }
}
