import 'package:iron_app/models/IronGame.swagger.dart';

class ApplicationModel {
  List<QuestionDto>? questions;
  List<PlayerDto>? player;
  List<AnswerDto>? answer;
  NewGameMessage? newGameModel;
  String? authentication;
  int CurrentQuestion = 0;
  int myself = 0;
}
