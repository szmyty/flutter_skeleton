import 'package:flutter_skeleton/core/base/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_details.freezed.dart';
part 'event_details.g.dart';

@freezed
class EventDetails with _$EventDetails implements Model {
  const factory EventDetails({
    required String id,
    required String location,
    required DateTime time,
    String? description,
  }) = _EventDetails;

  factory EventDetails.fromJson(Map<String, dynamic> json) => _$EventDetailsFromJson(json);
}
