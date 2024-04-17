// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventEntityImpl _$$EventEntityImplFromJson(Map<String, dynamic> json) =>
    _$EventEntityImpl(
      id: json['id'] as String,
      description: json['description'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      details: EventDetails.fromJson(json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EventEntityImplToJson(_$EventEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'user': instance.user,
      'details': instance.details,
    };
