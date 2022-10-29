import 'package:json_annotation/json_annotation.dart';

part 'join_game_message.g.dart';

@JsonSerializable()
class JoinGameMessage {
  final String gameId;

  JoinGameMessage({required this.gameId});

  factory JoinGameMessage.fromJson(Map<String, dynamic> json) =>
      _$JoinGameMessageFromJson(json);

  Map<String, dynamic> toJson() => _$JoinGameMessageToJson(this);
}
