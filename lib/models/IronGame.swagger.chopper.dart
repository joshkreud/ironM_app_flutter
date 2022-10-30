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
  Future<Response<List<PlayerDto>>> _apiQuizGetplayerPost(
      {String? authorization}) {
    final String $url = '/api/Quiz/getplayer';
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<PlayerDto>, PlayerDto>($request);
  }

  @override
  Future<Response<List<QuestionDto>>> _apiQuizGetquestionsPost(
      {String? authorization}) {
    final String $url = '/api/Quiz/getquestions';
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<QuestionDto>, QuestionDto>($request);
  }

  @override
  Future<Response<dynamic>> _apiQuizSendquestionPost({
    String? authorization,
    required NewQuestionMessage? body,
  }) {
    final String $url = '/api/Quiz/sendquestion';
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<AnswerDto>>> _apiQuizGetanswersPost(
      {String? authorization}) {
    final String $url = '/api/Quiz/getanswers';
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<AnswerDto>, AnswerDto>($request);
  }

  @override
  Future<Response<dynamic>> _apiQuizSendanswerPost({
    String? authorization,
    required NewAnswerMessage? body,
  }) {
    final String $url = '/api/Quiz/sendanswer';
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiQuizDeletequestionPost({
    String? authorization,
    required DeleteQuestion? body,
  }) {
    final String $url = '/api/Quiz/deletequestion';
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiQuizEditquestionPost({
    String? authorization,
    required EditQuestion? body,
  }) {
    final String $url = '/api/Quiz/editquestion';
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<GameCreated>> _apiQuizRegistrationNewgamePost(
      {String? authorization}) {
    final String $url = '/api/QuizRegistration/newgame';
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<GameCreated, GameCreated>($request);
  }

  @override
  Future<Response<NewGameMessage>> _apiQuizRegistrationJoingamePost({
    String? authorization,
    required JoinGameMessage? body,
  }) {
    final String $url = '/api/QuizRegistration/joingame';
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<NewGameMessage, NewGameMessage>($request);
  }
}
