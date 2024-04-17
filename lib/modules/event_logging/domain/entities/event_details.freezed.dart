// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventDetails _$EventDetailsFromJson(Map<String, dynamic> json) {
  return _EventDetails.fromJson(json);
}

/// @nodoc
mixin _$EventDetails {
  String get id => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventDetailsCopyWith<EventDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDetailsCopyWith<$Res> {
  factory $EventDetailsCopyWith(
          EventDetails value, $Res Function(EventDetails) then) =
      _$EventDetailsCopyWithImpl<$Res, EventDetails>;
  @useResult
  $Res call({String id, String location, DateTime time, String? description});
}

/// @nodoc
class _$EventDetailsCopyWithImpl<$Res, $Val extends EventDetails>
    implements $EventDetailsCopyWith<$Res> {
  _$EventDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? location = null,
    Object? time = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventDetailsImplCopyWith<$Res>
    implements $EventDetailsCopyWith<$Res> {
  factory _$$EventDetailsImplCopyWith(
          _$EventDetailsImpl value, $Res Function(_$EventDetailsImpl) then) =
      __$$EventDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String location, DateTime time, String? description});
}

/// @nodoc
class __$$EventDetailsImplCopyWithImpl<$Res>
    extends _$EventDetailsCopyWithImpl<$Res, _$EventDetailsImpl>
    implements _$$EventDetailsImplCopyWith<$Res> {
  __$$EventDetailsImplCopyWithImpl(
      _$EventDetailsImpl _value, $Res Function(_$EventDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? location = null,
    Object? time = null,
    Object? description = freezed,
  }) {
    return _then(_$EventDetailsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventDetailsImpl implements _EventDetails {
  const _$EventDetailsImpl(
      {required this.id,
      required this.location,
      required this.time,
      this.description});

  factory _$EventDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventDetailsImplFromJson(json);

  @override
  final String id;
  @override
  final String location;
  @override
  final DateTime time;
  @override
  final String? description;

  @override
  String toString() {
    return 'EventDetails(id: $id, location: $location, time: $time, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, location, time, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventDetailsImplCopyWith<_$EventDetailsImpl> get copyWith =>
      __$$EventDetailsImplCopyWithImpl<_$EventDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventDetailsImplToJson(
      this,
    );
  }
}

abstract class _EventDetails implements EventDetails {
  const factory _EventDetails(
      {required final String id,
      required final String location,
      required final DateTime time,
      final String? description}) = _$EventDetailsImpl;

  factory _EventDetails.fromJson(Map<String, dynamic> json) =
      _$EventDetailsImpl.fromJson;

  @override
  String get id;
  @override
  String get location;
  @override
  DateTime get time;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$EventDetailsImplCopyWith<_$EventDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
