import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:iron_app/models/IronGame.swagger.dart';
import 'package:iron_app/models/singleton/ApplicationModel.dart';
import 'package:iron_app/screens/frage.dart';

GetIt locator = GetIt.instance;

class FragenScreen extends StatefulWidget {
  const FragenScreen({super.key});

  /// Creates a [FragenScreen].

  @override
  State<FragenScreen> createState() =>
      _FragenScreenState(applicationmodel: locator.get<ApplicationModel>());
}

class _FragenScreenState extends State<FragenScreen> {
  _FragenScreenState({required this.applicationmodel});

  final ApplicationModel applicationmodel;
  void _change(int change) {
    applicationmodel.CurrentQuestion += change;
  }

  void _answer(String answer) {
    if (applicationmodel.answer != null) {
      applicationmodel.answer?.add(
          AnswerDto(answerText: answer, playerId: applicationmodel.myself));
      _change(1);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("IronMap"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("Hier könnte ihre frage stehen."),
            ],
          ),
        ),
      );
}
