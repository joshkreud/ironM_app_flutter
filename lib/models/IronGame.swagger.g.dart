// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'IronGame.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnswerDto _$AnswerDtoFromJson(Map<String, dynamic> json) => AnswerDto(
      id: json['id'] as int?,
      answerText: json['answerText'] as String?,
      questionId: json['questionId'] as int?,
      playerId: json['playerId'] as int?,
    );

Map<String, dynamic> _$AnswerDtoToJson(AnswerDto instance) => <String, dynamic>{
      'id': instance.id,
      'answerText': instance.answerText,
      'questionId': instance.questionId,
      'playerId': instance.playerId,
    };

Credentials _$CredentialsFromJson(Map<String, dynamic> json) => Credentials(
      teamName: json['teamName'] as String?,
    );

Map<String, dynamic> _$CredentialsToJson(Credentials instance) =>
    <String, dynamic>{
      'teamName': instance.teamName,
    };

DeleteQuestion _$DeleteQuestionFromJson(Map<String, dynamic> json) =>
    DeleteQuestion(
      questionId: json['questionId'] as int?,
    );

Map<String, dynamic> _$DeleteQuestionToJson(DeleteQuestion instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
    };

EditQuestion _$EditQuestionFromJson(Map<String, dynamic> json) => EditQuestion(
      questionId: json['questionId'] as int?,
      question: json['question'] as String?,
    );

Map<String, dynamic> _$EditQuestionToJson(EditQuestion instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'question': instance.question,
    };

GameCreated _$GameCreatedFromJson(Map<String, dynamic> json) => GameCreated(
      gameId: json['gameId'] as String?,
    );

Map<String, dynamic> _$GameCreatedToJson(GameCreated instance) =>
    <String, dynamic>{
      'gameId': instance.gameId,
    };

JoinGameMessage _$JoinGameMessageFromJson(Map<String, dynamic> json) =>
    JoinGameMessage(
      gameId: json['gameId'] as String?,
      credentials: json['credentials'] == null
          ? null
          : Credentials.fromJson(json['credentials'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JoinGameMessageToJson(JoinGameMessage instance) =>
    <String, dynamic>{
      'gameId': instance.gameId,
      'credentials': instance.credentials?.toJson(),
    };

NewAnswerMessage _$NewAnswerMessageFromJson(Map<String, dynamic> json) =>
    NewAnswerMessage(
      answerText: json['answerText'] as String?,
      questionId: json['questionId'] as int?,
    );

Map<String, dynamic> _$NewAnswerMessageToJson(NewAnswerMessage instance) =>
    <String, dynamic>{
      'answerText': instance.answerText,
      'questionId': instance.questionId,
    };

NewGameMessage _$NewGameMessageFromJson(Map<String, dynamic> json) =>
    NewGameMessage(
      gameId: json['gameId'] as String?,
      userName: json['userName'] as String?,
      bearerToken: json['bearerToken'] as String?,
      playerId: json['playerId'] as int?,
    );

Map<String, dynamic> _$NewGameMessageToJson(NewGameMessage instance) =>
    <String, dynamic>{
      'gameId': instance.gameId,
      'userName': instance.userName,
      'bearerToken': instance.bearerToken,
      'playerId': instance.playerId,
    };

NewQuestionMessage _$NewQuestionMessageFromJson(Map<String, dynamic> json) =>
    NewQuestionMessage(
      question: json['question'] as String?,
    );

Map<String, dynamic> _$NewQuestionMessageToJson(NewQuestionMessage instance) =>
    <String, dynamic>{
      'question': instance.question,
    };

PlayerDto _$PlayerDtoFromJson(Map<String, dynamic> json) => PlayerDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      isConnected: json['isConnected'] as bool?,
    );

Map<String, dynamic> _$PlayerDtoToJson(PlayerDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isConnected': instance.isConnected,
    };

ProblemDetails _$ProblemDetailsFromJson(Map<String, dynamic> json) =>
    ProblemDetails(
      type: json['type'] as String?,
      title: json['title'] as String?,
      status: json['status'] as int?,
      detail: json['detail'] as String?,
      instance: json['instance'] as String?,
    );

Map<String, dynamic> _$ProblemDetailsToJson(ProblemDetails instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'status': instance.status,
      'detail': instance.detail,
      'instance': instance.instance,
    };

QuestionDto _$QuestionDtoFromJson(Map<String, dynamic> json) => QuestionDto(
      id: json['id'] as int?,
      questionText: json['questionText'] as String?,
      playerId: json['playerId'] as int?,
    );

Map<String, dynamic> _$QuestionDtoToJson(QuestionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'questionText': instance.questionText,
      'playerId': instance.playerId,
    };
