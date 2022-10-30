import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:iron_app/constants.dart';
import 'package:iron_app/models/IronGame.swagger.dart';
import 'package:iron_app/models/singleton/ApplicationModel.dart';
import 'package:iron_app/screens/frage.dart';
import 'package:iron_app/texts.dart';

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
    if ((applicationmodel?.CurrentQuestion ?? 0) + 1 >
        (applicationmodel?.questions?.length ?? 0)) {
      applicationmodel.CurrentQuestion =
          (applicationmodel?.questions?.length ?? 1) - 1;
    }
    if ((applicationmodel?.CurrentQuestion ?? 0) < 1) {
      applicationmodel?.CurrentQuestion = 0;
    }
  }

  void _answer(String answer) async {
    final model = locator<ApplicationModel>();
    final ironService = IronGame.create(baseUrl: ApiConstants.baseUrl);
    final currentquestion =
        applicationmodel.questions?[applicationmodel.CurrentQuestion];
    final response = await ironService.apiQuizSendanswerPost(
        authorization: model.authentication,
        body: NewAnswerMessage(
            answerText: answer, questionId: currentquestion?.id));
    print(response);
    _change(1);
  }

  @override
  Widget build(BuildContext context) {
    _change(0);
    return Scaffold(
      appBar: AppBar(
        title: Text(ScreenHeaders.questionScreen),
      ),
      body: Center(
        child:
            // Text("asdas")
            FrageScreen(
                answer: _answer,
                change: _change,
                question: applicationmodel
                    .questions?[applicationmodel.CurrentQuestion]),
      ),
    );
  }
}
