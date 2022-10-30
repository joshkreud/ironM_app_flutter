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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IronMap"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showQuestion(),
        backgroundColor: Colors.green,
        child: const Icon(Icons.question_answer),
      ),
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
