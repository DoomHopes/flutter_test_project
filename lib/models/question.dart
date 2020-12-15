import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({@required this.title, @required this.answers});
}

class QuestionDate {
  final _date = [
    Question(title: '2*2', answers: [
      {'answer': '1'},
      {'answer': '3'},
      {'answer': '5'},
      {'answer': '4', 'isCorect': 1}
    ]),
    Question(title: '555 + 123', answers: [
      {'answer': '700'},
      {'answer': '15'},
      {'answer': '678', 'isCorect': 1},
      {'answer': '675'}
    ]),
    Question(title: '30*10', answers: [
      {'answer': '15'},
      {'answer': '6'},
      {'answer': '300', 'isCorect': 1},
      {'answer': '600'}
    ]),
  ];

  List<Question> get questions => [..._date];
}
