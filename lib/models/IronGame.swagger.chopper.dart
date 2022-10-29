// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'IronGame.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$IronGame extends IronGame {
  _$IronGame([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = IronGame;

  @override
  Future<Response<List<PlayerDto>>> _apiQuizGetplayerPost() {
    final String $url = '/api/Quiz/getplayer';
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<List<PlayerDto>, PlayerDto>($request);
  }

  @override
  Future<Response<List<QuestionDto>>> _apiQuizGetquestionsPost() {
    final String $url = '/api/Quiz/getquestions';
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<List<QuestionDto>, QuestionDto>($request);
  }

  @override
  Future<Response<dynamic>> _apiQuizSendquestionPost(
      {required NewQuestionMessage? body}) {
    final String $url = '/api/Quiz/sendquestion';
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<AnswerDto>>> _apiQuizGetanswersPost() {
    final String $url = '/api/Quiz/getanswers';
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<List<AnswerDto>, AnswerDto>($request);
  }

  @override
  Future<Response<dynamic>> _apiQuizSendanswerPost(
      {required NewAnswerMessage? body}) {
    final String $url = '/api/Quiz/sendanswer';
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiQuizDeletequestionPost(
      {required DeleteQuestion? body}) {
    final String $url = '/api/Quiz/deletequestion';
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiQuizEditquestionPost(
      {required EditQuestion? body}) {
    final String $url = '/api/Quiz/editquestion';
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<NewGameMessage>> _apiQuizRegistrationNewgamePost(
      {required Credentials? body}) {
    final String $url = '/api/QuizRegistration/newgame';
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<NewGameMessage, NewGameMessage>($request);
  }

  @override
  Future<Response<NewGameMessage>> _apiQuizRegistrationJoingamePost(
      {required JoinGameMessage? body}) {
    final String $url = '/api/QuizRegistration/joingame';
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<NewGameMessage, NewGameMessage>($request);
  }
}
