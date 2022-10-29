import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iron_app/main.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:iron_app/constants.dart';
import 'package:chopper/chopper.dart';
import 'package:iron_app/models/IronGame.swagger.dart';
import 'package:iron_app/models/client_index.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _LoginScreenState extends State<LoginScreen> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final veranstaltungsCodeController = TextEditingController();
  final teamNameController = TextEditingController();

  void joinGame() async {
    final ironService =
        IronGame.create(client: ChopperClient(), baseUrl: ApiConstants.baseUrl);
    final joinBody = JoinGameMessage(
        gameId: veranstaltungsCodeController.text,
        credentials: Credentials(teamName: teamNameController.text));

    final response =
        await ironService.apiQuizRegistrationJoingamePost(body: joinBody);

    if (response.isSuccessful) {
      // Successful request
      final body = response.body;
      print(body);
    } else {
      // Error code received from server
      final code = response.statusCode;
      final error = response.error;
      print("Error");
      print(code);
      print(error);
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    veranstaltungsCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text(App.title)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: veranstaltungsCodeController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Veranstaltungscode',
                ),
              ),
              TextField(
                controller: teamNameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Teamname',
                ),
              ),
              ElevatedButton(
                // onPressed: () => context.go('/page2'),
                onPressed: () => joinGame(),
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      );
}
