import 'package:flutter/material.dart';

class FragenScreen extends StatefulWidget {
  const FragenScreen({super.key});

  /// Creates a [FragenScreen].

  @override
  State<FragenScreen> createState() => _FragenScreenState();
}

class _FragenScreenState extends State<FragenScreen> {
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
