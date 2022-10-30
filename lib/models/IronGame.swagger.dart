// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:chopper/chopper.dart' as chopper;

part 'IronGame.swagger.chopper.dart';
part 'IronGame.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class IronGame extends ChopperService {
  static IronGame create({
    ChopperClient? client,
    Authenticator? authenticator,
    String? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$IronGame(client);
    }

    final newClient = ChopperClient(
        services: [_$IronGame()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? 'http://');
    return _$IronGame(newClient);
  }

  ///
  Future<chopper.Response<List<PlayerDto>>> apiQuizGetplayerPost(
      {String? authorization}) {
    generatedMapping.putIfAbsent(PlayerDto, () => PlayerDto.fromJsonFactory);

    return _apiQuizGetplayerPost(authorization: authorization);
  }

  ///
  @Post(
    path: '/api/Quiz/getplayer',
    optionalBody: true,
  )
  Future<chopper.Response<List<PlayerDto>>> _apiQuizGetplayerPost(
      {@Header('Authorization') String? authorization});

  ///
  Future<chopper.Response<List<QuestionDto>>> apiQuizGetquestionsPost(
      {String? authorization}) {
    generatedMapping.putIfAbsent(
        QuestionDto, () => QuestionDto.fromJsonFactory);

    return _apiQuizGetquestionsPost(authorization: authorization);
  }

  ///
  @Post(
    path: '/api/Quiz/getquestions',
    optionalBody: true,
  )
  Future<chopper.Response<List<QuestionDto>>> _apiQuizGetquestionsPost(
      {@Header('Authorization') String? authorization});

  ///
  Future<chopper.Response> apiQuizSendquestionPost({
    String? authorization,
    required NewQuestionMessage? body,
  }) {
    return _apiQuizSendquestionPost(authorization: authorization, body: body);
  }

  ///
  @Post(path: '/api/Quiz/sendquestion')
  Future<chopper.Response> _apiQuizSendquestionPost({
    @Header('Authorization') String? authorization,
    @Body() required NewQuestionMessage? body,
  });

  ///
  Future<chopper.Response<List<AnswerDto>>> apiQuizGetanswersPost(
      {String? authorization}) {
    generatedMapping.putIfAbsent(AnswerDto, () => AnswerDto.fromJsonFactory);

    return _apiQuizGetanswersPost(authorization: authorization);
  }

  ///
  @Post(
    path: '/api/Quiz/getanswers',
    optionalBody: true,
  )
  Future<chopper.Response<List<AnswerDto>>> _apiQuizGetanswersPost(
      {@Header('Authorization') String? authorization});

  ///
  Future<chopper.Response> apiQuizSendanswerPost({
    String? authorization,
    required NewAnswerMessage? body,
  }) {
    return _apiQuizSendanswerPost(authorization: authorization, body: body);
  }

  ///
  @Post(path: '/api/Quiz/sendanswer')
  Future<chopper.Response> _apiQuizSendanswerPost({
    @Header('Authorization') String? authorization,
    @Body() required NewAnswerMessage? body,
  });

  ///
  Future<chopper.Response> apiQuizDeletequestionPost({
    String? authorization,
    required DeleteQuestion? body,
  }) {
    return _apiQuizDeletequestionPost(authorization: authorization, body: body);
  }

  ///
  @Post(path: '/api/Quiz/deletequestion')
  Future<chopper.Response> _apiQuizDeletequestionPost({
    @Header('Authorization') String? authorization,
    @Body() required DeleteQuestion? body,
  });

  ///
  Future<chopper.Response> apiQuizEditquestionPost({
    String? authorization,
    required EditQuestion? body,
  }) {
    return _apiQuizEditquestionPost(authorization: authorization, body: body);
  }

  ///
  @Post(path: '/api/Quiz/editquestion')
  Future<chopper.Response> _apiQuizEditquestionPost({
    @Header('Authorization') String? authorization,
    @Body() required EditQuestion? body,
  });

  ///
  Future<chopper.Response<GameCreated>> apiQuizRegistrationNewgamePost(
      {String? authorization}) {
    generatedMapping.putIfAbsent(
        GameCreated, () => GameCreated.fromJsonFactory);

    return _apiQuizRegistrationNewgamePost(authorization: authorization);
  }

  ///
  @Post(
    path: '/api/QuizRegistration/newgame',
    optionalBody: true,
  )
  Future<chopper.Response<GameCreated>> _apiQuizRegistrationNewgamePost(
      {@Header('Authorization') String? authorization});

  ///
  Future<chopper.Response<NewGameMessage>> apiQuizRegistrationJoingamePost({
    String? authorization,
    required JoinGameMessage? body,
  }) {
    generatedMapping.putIfAbsent(
        NewGameMessage, () => NewGameMessage.fromJsonFactory);

    return _apiQuizRegistrationJoingamePost(
        authorization: authorization, body: body);
  }

  ///
  @Post(path: '/api/QuizRegistration/joingame')
  Future<chopper.Response<NewGameMessage>> _apiQuizRegistrationJoingamePost({
    @Header('Authorization') String? authorization,
    @Body() required JoinGameMessage? body,
  });
}

@JsonSerializable(explicitToJson: true)
class AnswerDto {
  AnswerDto({
    this.id,
    this.answerText,
    this.questionId,
    this.playerId,
  });

  factory AnswerDto.fromJson(Map<String, dynamic> json) =>
      _$AnswerDtoFromJson(json);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'answerText')
  final String? answerText;
  @JsonKey(name: 'questionId')
  final int? questionId;
  @JsonKey(name: 'playerId')
  final int? playerId;
  static const fromJsonFactory = _$AnswerDtoFromJson;
  static const toJsonFactory = _$AnswerDtoToJson;
  Map<String, dynamic> toJson() => _$AnswerDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AnswerDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.answerText, answerText) ||
                const DeepCollectionEquality()
                    .equals(other.answerText, answerText)) &&
            (identical(other.questionId, questionId) ||
                const DeepCollectionEquality()
                    .equals(other.questionId, questionId)) &&
            (identical(other.playerId, playerId) ||
                const DeepCollectionEquality()
                    .equals(other.playerId, playerId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(answerText) ^
      const DeepCollectionEquality().hash(questionId) ^
      const DeepCollectionEquality().hash(playerId) ^
      runtimeType.hashCode;
}

extension $AnswerDtoExtension on AnswerDto {
  AnswerDto copyWith(
      {int? id, String? answerText, int? questionId, int? playerId}) {
    return AnswerDto(
        id: id ?? this.id,
        answerText: answerText ?? this.answerText,
        questionId: questionId ?? this.questionId,
        playerId: playerId ?? this.playerId);
  }

  AnswerDto copyWithWrapped(
      {Wrapped<int?>? id,
      Wrapped<String?>? answerText,
      Wrapped<int?>? questionId,
      Wrapped<int?>? playerId}) {
    return AnswerDto(
        id: (id != null ? id.value : this.id),
        answerText: (answerText != null ? answerText.value : this.answerText),
        questionId: (questionId != null ? questionId.value : this.questionId),
        playerId: (playerId != null ? playerId.value : this.playerId));
  }
}

@JsonSerializable(explicitToJson: true)
class Credentials {
  Credentials({
    this.teamName,
  });

  factory Credentials.fromJson(Map<String, dynamic> json) =>
      _$CredentialsFromJson(json);

  @JsonKey(name: 'teamName')
  final String? teamName;
  static const fromJsonFactory = _$CredentialsFromJson;
  static const toJsonFactory = _$CredentialsToJson;
  Map<String, dynamic> toJson() => _$CredentialsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Credentials &&
            (identical(other.teamName, teamName) ||
                const DeepCollectionEquality()
                    .equals(other.teamName, teamName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(teamName) ^ runtimeType.hashCode;
}

extension $CredentialsExtension on Credentials {
  Credentials copyWith({String? teamName}) {
    return Credentials(teamName: teamName ?? this.teamName);
  }

  Credentials copyWithWrapped({Wrapped<String?>? teamName}) {
    return Credentials(
        teamName: (teamName != null ? teamName.value : this.teamName));
  }
}

@JsonSerializable(explicitToJson: true)
class DeleteQuestion {
  DeleteQuestion({
    this.questionId,
  });

  factory DeleteQuestion.fromJson(Map<String, dynamic> json) =>
      _$DeleteQuestionFromJson(json);

  @JsonKey(name: 'questionId')
  final int? questionId;
  static const fromJsonFactory = _$DeleteQuestionFromJson;
  static const toJsonFactory = _$DeleteQuestionToJson;
  Map<String, dynamic> toJson() => _$DeleteQuestionToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteQuestion &&
            (identical(other.questionId, questionId) ||
                const DeepCollectionEquality()
                    .equals(other.questionId, questionId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(questionId) ^ runtimeType.hashCode;
}

extension $DeleteQuestionExtension on DeleteQuestion {
  DeleteQuestion copyWith({int? questionId}) {
    return DeleteQuestion(questionId: questionId ?? this.questionId);
  }

  DeleteQuestion copyWithWrapped({Wrapped<int?>? questionId}) {
    return DeleteQuestion(
        questionId: (questionId != null ? questionId.value : this.questionId));
  }
}

@JsonSerializable(explicitToJson: true)
class EditQuestion {
  EditQuestion({
    this.questionId,
    this.question,
  });

  factory EditQuestion.fromJson(Map<String, dynamic> json) =>
      _$EditQuestionFromJson(json);

  @JsonKey(name: 'questionId')
  final int? questionId;
  @JsonKey(name: 'question')
  final String? question;
  static const fromJsonFactory = _$EditQuestionFromJson;
  static const toJsonFactory = _$EditQuestionToJson;
  Map<String, dynamic> toJson() => _$EditQuestionToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditQuestion &&
            (identical(other.questionId, questionId) ||
                const DeepCollectionEquality()
                    .equals(other.questionId, questionId)) &&
            (identical(other.question, question) ||
                const DeepCollectionEquality()
                    .equals(other.question, question)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(questionId) ^
      const DeepCollectionEquality().hash(question) ^
      runtimeType.hashCode;
}

extension $EditQuestionExtension on EditQuestion {
  EditQuestion copyWith({int? questionId, String? question}) {
    return EditQuestion(
        questionId: questionId ?? this.questionId,
        question: question ?? this.question);
  }

  EditQuestion copyWithWrapped(
      {Wrapped<int?>? questionId, Wrapped<String?>? question}) {
    return EditQuestion(
        questionId: (questionId != null ? questionId.value : this.questionId),
        question: (question != null ? question.value : this.question));
  }
}

@JsonSerializable(explicitToJson: true)
class GameCreated {
  GameCreated({
    this.gameId,
  });

  factory GameCreated.fromJson(Map<String, dynamic> json) =>
      _$GameCreatedFromJson(json);

  @JsonKey(name: 'gameId')
  final String? gameId;
  static const fromJsonFactory = _$GameCreatedFromJson;
  static const toJsonFactory = _$GameCreatedToJson;
  Map<String, dynamic> toJson() => _$GameCreatedToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GameCreated &&
            (identical(other.gameId, gameId) ||
                const DeepCollectionEquality().equals(other.gameId, gameId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(gameId) ^ runtimeType.hashCode;
}

extension $GameCreatedExtension on GameCreated {
  GameCreated copyWith({String? gameId}) {
    return GameCreated(gameId: gameId ?? this.gameId);
  }

  GameCreated copyWithWrapped({Wrapped<String?>? gameId}) {
    return GameCreated(gameId: (gameId != null ? gameId.value : this.gameId));
  }
}

@JsonSerializable(explicitToJson: true)
class JoinGameMessage {
  JoinGameMessage({
    this.gameId,
    this.credentials,
  });

  factory JoinGameMessage.fromJson(Map<String, dynamic> json) =>
      _$JoinGameMessageFromJson(json);

  @JsonKey(name: 'gameId')
  final String? gameId;
  @JsonKey(name: 'credentials')
  final Credentials? credentials;
  static const fromJsonFactory = _$JoinGameMessageFromJson;
  static const toJsonFactory = _$JoinGameMessageToJson;
  Map<String, dynamic> toJson() => _$JoinGameMessageToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is JoinGameMessage &&
            (identical(other.gameId, gameId) ||
                const DeepCollectionEquality().equals(other.gameId, gameId)) &&
            (identical(other.credentials, credentials) ||
                const DeepCollectionEquality()
                    .equals(other.credentials, credentials)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(gameId) ^
      const DeepCollectionEquality().hash(credentials) ^
      runtimeType.hashCode;
}

extension $JoinGameMessageExtension on JoinGameMessage {
  JoinGameMessage copyWith({String? gameId, Credentials? credentials}) {
    return JoinGameMessage(
        gameId: gameId ?? this.gameId,
        credentials: credentials ?? this.credentials);
  }

  JoinGameMessage copyWithWrapped(
      {Wrapped<String?>? gameId, Wrapped<Credentials?>? credentials}) {
    return JoinGameMessage(
        gameId: (gameId != null ? gameId.value : this.gameId),
        credentials:
            (credentials != null ? credentials.value : this.credentials));
  }
}

@JsonSerializable(explicitToJson: true)
class NewAnswerMessage {
  NewAnswerMessage({
    this.answerText,
    this.questionId,
  });

  factory NewAnswerMessage.fromJson(Map<String, dynamic> json) =>
      _$NewAnswerMessageFromJson(json);

  @JsonKey(name: 'answerText')
  final String? answerText;
  @JsonKey(name: 'questionId')
  final int? questionId;
  static const fromJsonFactory = _$NewAnswerMessageFromJson;
  static const toJsonFactory = _$NewAnswerMessageToJson;
  Map<String, dynamic> toJson() => _$NewAnswerMessageToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewAnswerMessage &&
            (identical(other.answerText, answerText) ||
                const DeepCollectionEquality()
                    .equals(other.answerText, answerText)) &&
            (identical(other.questionId, questionId) ||
                const DeepCollectionEquality()
                    .equals(other.questionId, questionId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(answerText) ^
      const DeepCollectionEquality().hash(questionId) ^
      runtimeType.hashCode;
}

extension $NewAnswerMessageExtension on NewAnswerMessage {
  NewAnswerMessage copyWith({String? answerText, int? questionId}) {
    return NewAnswerMessage(
        answerText: answerText ?? this.answerText,
        questionId: questionId ?? this.questionId);
  }

  NewAnswerMessage copyWithWrapped(
      {Wrapped<String?>? answerText, Wrapped<int?>? questionId}) {
    return NewAnswerMessage(
        answerText: (answerText != null ? answerText.value : this.answerText),
        questionId: (questionId != null ? questionId.value : this.questionId));
  }
}

@JsonSerializable(explicitToJson: true)
class NewGameMessage {
  NewGameMessage({
    this.gameId,
    this.userName,
    this.bearerToken,
    this.playerId,
  });

  factory NewGameMessage.fromJson(Map<String, dynamic> json) =>
      _$NewGameMessageFromJson(json);

  @JsonKey(name: 'gameId')
  final String? gameId;
  @JsonKey(name: 'userName')
  final String? userName;
  @JsonKey(name: 'bearerToken')
  final String? bearerToken;
  @JsonKey(name: 'playerId')
  final int? playerId;
  static const fromJsonFactory = _$NewGameMessageFromJson;
  static const toJsonFactory = _$NewGameMessageToJson;
  Map<String, dynamic> toJson() => _$NewGameMessageToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewGameMessage &&
            (identical(other.gameId, gameId) ||
                const DeepCollectionEquality().equals(other.gameId, gameId)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.bearerToken, bearerToken) ||
                const DeepCollectionEquality()
                    .equals(other.bearerToken, bearerToken)) &&
            (identical(other.playerId, playerId) ||
                const DeepCollectionEquality()
                    .equals(other.playerId, playerId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(gameId) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(bearerToken) ^
      const DeepCollectionEquality().hash(playerId) ^
      runtimeType.hashCode;
}

extension $NewGameMessageExtension on NewGameMessage {
  NewGameMessage copyWith(
      {String? gameId, String? userName, String? bearerToken, int? playerId}) {
    return NewGameMessage(
        gameId: gameId ?? this.gameId,
        userName: userName ?? this.userName,
        bearerToken: bearerToken ?? this.bearerToken,
        playerId: playerId ?? this.playerId);
  }

  NewGameMessage copyWithWrapped(
      {Wrapped<String?>? gameId,
      Wrapped<String?>? userName,
      Wrapped<String?>? bearerToken,
      Wrapped<int?>? playerId}) {
    return NewGameMessage(
        gameId: (gameId != null ? gameId.value : this.gameId),
        userName: (userName != null ? userName.value : this.userName),
        bearerToken:
            (bearerToken != null ? bearerToken.value : this.bearerToken),
        playerId: (playerId != null ? playerId.value : this.playerId));
  }
}

@JsonSerializable(explicitToJson: true)
class NewQuestionMessage {
  NewQuestionMessage({
    this.question,
  });

  factory NewQuestionMessage.fromJson(Map<String, dynamic> json) =>
      _$NewQuestionMessageFromJson(json);

  @JsonKey(name: 'question')
  final String? question;
  static const fromJsonFactory = _$NewQuestionMessageFromJson;
  static const toJsonFactory = _$NewQuestionMessageToJson;
  Map<String, dynamic> toJson() => _$NewQuestionMessageToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewQuestionMessage &&
            (identical(other.question, question) ||
                const DeepCollectionEquality()
                    .equals(other.question, question)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(question) ^ runtimeType.hashCode;
}

extension $NewQuestionMessageExtension on NewQuestionMessage {
  NewQuestionMessage copyWith({String? question}) {
    return NewQuestionMessage(question: question ?? this.question);
  }

  NewQuestionMessage copyWithWrapped({Wrapped<String?>? question}) {
    return NewQuestionMessage(
        question: (question != null ? question.value : this.question));
  }
}

@JsonSerializable(explicitToJson: true)
class PlayerDto {
  PlayerDto({
    this.id,
    this.name,
    this.isConnected,
  });

  factory PlayerDto.fromJson(Map<String, dynamic> json) =>
      _$PlayerDtoFromJson(json);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'isConnected')
  final bool? isConnected;
  static const fromJsonFactory = _$PlayerDtoFromJson;
  static const toJsonFactory = _$PlayerDtoToJson;
  Map<String, dynamic> toJson() => _$PlayerDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlayerDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.isConnected, isConnected) ||
                const DeepCollectionEquality()
                    .equals(other.isConnected, isConnected)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(isConnected) ^
      runtimeType.hashCode;
}

extension $PlayerDtoExtension on PlayerDto {
  PlayerDto copyWith({int? id, String? name, bool? isConnected}) {
    return PlayerDto(
        id: id ?? this.id,
        name: name ?? this.name,
        isConnected: isConnected ?? this.isConnected);
  }

  PlayerDto copyWithWrapped(
      {Wrapped<int?>? id,
      Wrapped<String?>? name,
      Wrapped<bool?>? isConnected}) {
    return PlayerDto(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        isConnected:
            (isConnected != null ? isConnected.value : this.isConnected));
  }
}

@JsonSerializable(explicitToJson: true)
class ProblemDetails {
  ProblemDetails({
    this.type,
    this.title,
    this.status,
    this.detail,
    this.instance,
  });

  factory ProblemDetails.fromJson(Map<String, dynamic> json) =>
      _$ProblemDetailsFromJson(json);

  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'status')
  final int? status;
  @JsonKey(name: 'detail')
  final String? detail;
  @JsonKey(name: 'instance')
  final String? instance;
  static const fromJsonFactory = _$ProblemDetailsFromJson;
  static const toJsonFactory = _$ProblemDetailsToJson;
  Map<String, dynamic> toJson() => _$ProblemDetailsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProblemDetails &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.instance, instance) ||
                const DeepCollectionEquality()
                    .equals(other.instance, instance)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(instance) ^
      runtimeType.hashCode;
}

extension $ProblemDetailsExtension on ProblemDetails {
  ProblemDetails copyWith(
      {String? type,
      String? title,
      int? status,
      String? detail,
      String? instance}) {
    return ProblemDetails(
        type: type ?? this.type,
        title: title ?? this.title,
        status: status ?? this.status,
        detail: detail ?? this.detail,
        instance: instance ?? this.instance);
  }

  ProblemDetails copyWithWrapped(
      {Wrapped<String?>? type,
      Wrapped<String?>? title,
      Wrapped<int?>? status,
      Wrapped<String?>? detail,
      Wrapped<String?>? instance}) {
    return ProblemDetails(
        type: (type != null ? type.value : this.type),
        title: (title != null ? title.value : this.title),
        status: (status != null ? status.value : this.status),
        detail: (detail != null ? detail.value : this.detail),
        instance: (instance != null ? instance.value : this.instance));
  }
}

@JsonSerializable(explicitToJson: true)
class QuestionDto {
  QuestionDto({
    this.id,
    this.questionText,
    this.playerId,
  });

  factory QuestionDto.fromJson(Map<String, dynamic> json) =>
      _$QuestionDtoFromJson(json);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'questionText')
  final String? questionText;
  @JsonKey(name: 'playerId')
  final int? playerId;
  static const fromJsonFactory = _$QuestionDtoFromJson;
  static const toJsonFactory = _$QuestionDtoToJson;
  Map<String, dynamic> toJson() => _$QuestionDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is QuestionDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.questionText, questionText) ||
                const DeepCollectionEquality()
                    .equals(other.questionText, questionText)) &&
            (identical(other.playerId, playerId) ||
                const DeepCollectionEquality()
                    .equals(other.playerId, playerId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(questionText) ^
      const DeepCollectionEquality().hash(playerId) ^
      runtimeType.hashCode;
}

extension $QuestionDtoExtension on QuestionDto {
  QuestionDto copyWith({int? id, String? questionText, int? playerId}) {
    return QuestionDto(
        id: id ?? this.id,
        questionText: questionText ?? this.questionText,
        playerId: playerId ?? this.playerId);
  }

  QuestionDto copyWithWrapped(
      {Wrapped<int?>? id,
      Wrapped<String?>? questionText,
      Wrapped<int?>? playerId}) {
    return QuestionDto(
        id: (id != null ? id.value : this.id),
        questionText:
            (questionText != null ? questionText.value : this.questionText),
        playerId: (playerId != null ? playerId.value : this.playerId));
  }
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
