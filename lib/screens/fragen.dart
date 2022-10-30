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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("Hier dlsfnlsein"),
            ],
          ),
        ),
      );
}
