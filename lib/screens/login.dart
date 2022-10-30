import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:iron_app/main.dart';
import 'package:iron_app/constants.dart';
import 'package:iron_app/models/IronGame.swagger.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import 'package:iron_app/models/singleton/ApplicationModel.dart';

GetIt locator = GetIt.instance;

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
  final eventCodeCtrl = TextEditingController();
  final teamNameCtl = TextEditingController();

  void joinGame() async {
    final ironService = IronGame.create(baseUrl: ApiConstants.baseUrl);
    final joinBody = JoinGameMessage(
        gameId: eventCodeCtrl.text,
        credentials: Credentials(teamName: teamNameCtl.text));

    final response =
        await ironService.apiQuizRegistrationJoingamePost(body: joinBody);

    if (response.isSuccessful) {
      // Successful request
      final body = response.body;

      print(body);
      final questions = await ironService.apiQuizGetquestionsPost(
          authorization: 'bearer ' + (body?.bearerToken ?? 'null'));

      if (!mounted) return;

      final abc = locator<ApplicationModel>();
      abc.newGameModel = body;
      abc.questions = questions.body;
      context.go("/map");
    } else {
      // Error code received from server
      final code = response.statusCode;
      final error = response.error;
      print("Error");
      print(code);
      print(error);
    }
  }

  Future<void> scanQR() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    if (barcodeScanRes.toString() == '-1') return;

    eventCodeCtrl.text = barcodeScanRes;
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    eventCodeCtrl.dispose();
    teamNameCtl.dispose();
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
                  controller: teamNameCtl,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Teamname',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: TextField(
                  controller: eventCodeCtrl,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () => scanQR(),
                      icon: const Icon(Icons.qr_code),
                    ),
                    border: const OutlineInputBorder(),
                    hintText: 'Veranstaltungscode',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () => joinGame(),
                    child: const Text(
                      'Login to Game',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
