// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventDetailsImpl _$$EventDetailsImplFromJson(Map<String, dynamic> json) =>
    _$EventDetailsImpl(
      id: json['id'] as String,
      location: json['location'] as String,
      time: DateTime.parse(json['time'] as String),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$EventDetailsImplToJson(_$EventDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location': instance.location,
      'time': instance.time.toIso8601String(),
      'description': instance.description,
    };
