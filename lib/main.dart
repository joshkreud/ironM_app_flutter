// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iron_app/constants.dart';
import 'package:iron_app/models/singleton/ApplicationModel.dart';
import 'package:iron_app/screens/fragen.dart';
import 'package:iron_app/screens/help.dart';
import 'package:iron_app/screens/login.dart';
import 'package:iron_app/screens/map.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void main() {
  initLocator();
  runApp(App());
}

initLocator() {
  locator.registerSingleton<ApplicationModel>(ApplicationModel());
}

/// The main app.
class App extends StatelessWidget {
  /// Creates an [App].
  App({Key? key}) : super(key: key);

  /// The title of the app.
  static const String title = 'Iron App';

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerConfig: _router,
        title: title,
        theme: ThemeData(primaryColor: AppConstants.primaryColor),
      );

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const LoginScreen(),
        routes: <GoRoute>[
          GoRoute(
            path: 'map',
            builder: (BuildContext context, GoRouterState state) =>
                const MapScreen(),
          ),
          GoRoute(
            path: 'fragen',
            builder: (BuildContext context, GoRouterState state) =>
                const FragenScreen(),
          ),
          GoRoute(
            path: 'help',
            builder: (BuildContext context, GoRouterState state) =>
                const HelpScreen(),
          ),
        ],
      ),
    ],
  );
}
