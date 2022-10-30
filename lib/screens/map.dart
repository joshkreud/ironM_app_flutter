import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:iron_app/models/singleton/ApplicationModel.dart';

GetIt locator = GetIt.instance;

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

@override
class _MapScreenState extends State<MapScreen> {
  void showQuestion() {
    context.go("/fragen");
  }

  void showHelp() {
    context.go("/help");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IronMap"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Stack(children: [
        Align(
          alignment: Alignment.bottomRight,
          child: SizedBox(
            width: 200,
            child: FloatingActionButton(
              heroTag: "QuestionButton",
              onPressed: () => showQuestion(),
              backgroundColor: Colors.green,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              child: const Text("zu den Aufgaben"),
            ),
          ),
        ),
        Align(
          alignment: FractionalOffset.bottomLeft,
          child: FloatingActionButton(
            heroTag: "HelpButton",
            onPressed: () => showHelp(),
            backgroundColor: Colors.green,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Icon(Icons.question_mark),
          ),
        ),
      ]),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(50.558757, 9.688264),
          zoom: 9.2,
        ),
        nonRotatedChildren: [
          AttributionWidget.defaultWidget(
            source: 'OpenStreetMap contributors',
            onSourceTapped: null,
          ),
        ],
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'iron.app',
          ),
        ],
      ),
    );
  }
}
