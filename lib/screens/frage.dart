import 'package:flutter/material.dart';
import 'package:iron_app/models/IronGame.swagger.dart';

class FrageScreen extends StatelessWidget {
  FrageScreen(
      {super.key, this.question, required this.change, required this.answer});

  QuestionDto? question;
  final ValueChanged<int> change;
  final ValueChanged<String> answer;

  final antwortCtl = TextEditingController();
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(question?.questionText ?? ""),
              TextField(
                controller: antwortCtl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Teamname',
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
                child: const Text(
                  'Absenden',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      );
}
