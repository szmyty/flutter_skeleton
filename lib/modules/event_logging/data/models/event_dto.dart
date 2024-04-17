import 'package:json_annotation/json_annotation.dart';

part 'event_dto.g.dart';

@JsonSerializable()
class EventDTO {
  final String id;
  final String description;
  final String userId;
  final String location;
  final DateTime time;

  EventDTO({required this.id, required this.description, required this.userId, required this.location, required this.time});

  factory EventDTO.fromJson(Map<String, dynamic> json) => _$EventDTOFromJson(json);
  Map<String, dynamic> toJson() => _$EventDTOToJson(this);
}
