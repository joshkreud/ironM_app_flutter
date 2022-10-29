import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iron_app/main.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:iron_app/constants.dart';

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
    final uri = Uri.parse(ApiConstants.baseUrl + ApiConstants.joinGameEndpoint);

    final joinParameters = {
      'gameID': veranstaltungsCodeController.text,
      'credentials': {'teamName': teamNameController.text}
    };

    final joinHeaders = {
      'accept': 'text/plain',
      'Content-Type': 'application/json',
    };

    final response = await http.post(uri,
        headers: joinHeaders, body: jsonEncode(joinParameters));

    if (response.statusCode == 200) {
      print(jsonDecode(response.body));
    } else {
      final statusCode = response.statusCode;
      throw Exception('Ehm ... got HTTP: $statusCode');
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
        body: Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: TextField(
                  controller: veranstaltungsCodeController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Veranstaltungscode',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: TextField(
                  controller: teamNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Teamname',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  // onPressed: () => context.go('/page2'),
                  onPressed: () => joinGame(),
                  child: const Text('Login'),
                ),
              ),
            ],
          ),
        ),
      );
}
