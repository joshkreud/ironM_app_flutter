import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iron_app/main.dart';
import 'package:get_it/get_it.dart';

import 'package:iron_app/models/singleton/ApplicationModel.dart';

GetIt locator = GetIt.instance;

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  void showQuestion() {
    context.go("/fragen");
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text(App.title)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("Hier könnte ihre Map sein"),
              ElevatedButton(
                onPressed: () => showQuestion(),
                child: const Text(
                  'Gehe zu Fragen',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      );
}
