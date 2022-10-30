import 'package:flutter/material.dart';
import 'package:iron_app/models/IronGame.swagger.dart';
import 'package:iron_app/texts.dart';

class FrageScreen extends StatelessWidget {
  FrageScreen(
      {super.key, this.question, required this.change, required this.answer});

  QuestionDto? question;
  final ValueChanged<int> change;
  final ValueChanged<String> answer;

  final antwortCtl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    change(0);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(question?.questionText ?? ""),
        TextField(
          controller: antwortCtl,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: HintTexts.answer,
          ),
        ),
        ElevatedButton(
          onPressed: () => change(-1),
          child: const Text(
            '<',
            style: TextStyle(fontSize: 18),
          ),
        ),
        ElevatedButton(
          onPressed: () => change(1),
          child: const Text(
            '>',
            style: TextStyle(fontSize: 18),
          ),
        ),
        ElevatedButton(
          onPressed: () => answer(antwortCtl.text),
          child: Text(
            HintTexts.sendAnswer,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
