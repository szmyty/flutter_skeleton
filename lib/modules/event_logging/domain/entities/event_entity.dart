import 'package:flutter_skeleton/core/base/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/models/user.dart';
import 'event_details.dart';

part 'event_entity.freezed.dart';
part 'event_entity.g.dart';

@freezed
class EventEntity with _$EventEntity implements Model {
  const factory EventEntity({
    required String id,
    required String description,
    required User user,
    required EventDetails details,
  }) = _EventEntity;

  factory EventEntity.fromJson(Map<String, dynamic> json) => _$EventEntityFromJson(json);
}
