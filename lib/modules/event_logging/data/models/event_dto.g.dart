// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventDTO _$EventDTOFromJson(Map<String, dynamic> json) => EventDTO(
      id: json['id'] as String,
      description: json['description'] as String,
      userId: json['userId'] as String,
      location: json['location'] as String,
      time: DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$EventDTOToJson(EventDTO instance) => <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'userId': instance.userId,
      'location': instance.location,
      'time': instance.time.toIso8601String(),
    };
