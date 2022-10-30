import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iron_app/main.dart';

class MapScreen extends StatelessWidget {
  /// Creates a [MapScreen].
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text(App.title)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[const Text("Hier könnte ihre Map sein")],
          ),
        ),
      );
}
