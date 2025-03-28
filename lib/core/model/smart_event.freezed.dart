// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'smart_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SmartEvent _$SmartEventFromJson(Map<String, dynamic> json) {
  return _SmartEvent.fromJson(json);
}

/// @nodoc
mixin _$SmartEvent {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  @TimeOfDayJsonConverter()
  TimeOfDay get time => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get isRecurring => throw _privateConstructorUsedError;
  RecurringType? get recurringType => throw _privateConstructorUsedError;
  bool? get adjustBasedOnCompletion => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  DateTime? get recurringEndDateTime => throw _privateConstructorUsedError;

  /// Serializes this SmartEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SmartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SmartEventCopyWith<SmartEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmartEventCopyWith<$Res> {
  factory $SmartEventCopyWith(
          SmartEvent value, $Res Function(SmartEvent) then) =
      _$SmartEventCopyWithImpl<$Res, SmartEvent>;
  @useResult
  $Res call(
      {String id,
      String title,
      DateTime date,
      @TimeOfDayJsonConverter() TimeOfDay time,
      DateTime createdAt,
      DateTime updatedAt,
      String? description,
      bool? isRecurring,
      RecurringType? recurringType,
      bool? adjustBasedOnCompletion,
      DateTime? deletedAt,
      DateTime? recurringEndDateTime});
}

/// @nodoc
class _$SmartEventCopyWithImpl<$Res, $Val extends SmartEvent>
    implements $SmartEventCopyWith<$Res> {
  _$SmartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SmartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? date = null,
    Object? time = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? description = freezed,
    Object? isRecurring = freezed,
    Object? recurringType = freezed,
    Object? adjustBasedOnCompletion = freezed,
    Object? deletedAt = freezed,
    Object? recurringEndDateTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isRecurring: freezed == isRecurring
          ? _value.isRecurring
          : isRecurring // ignore: cast_nullable_to_non_nullable
              as bool?,
      recurringType: freezed == recurringType
          ? _value.recurringType
          : recurringType // ignore: cast_nullable_to_non_nullable
              as RecurringType?,
      adjustBasedOnCompletion: freezed == adjustBasedOnCompletion
          ? _value.adjustBasedOnCompletion
          : adjustBasedOnCompletion // ignore: cast_nullable_to_non_nullable
              as bool?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      recurringEndDateTime: freezed == recurringEndDateTime
          ? _value.recurringEndDateTime
          : recurringEndDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SmartEventImplCopyWith<$Res>
    implements $SmartEventCopyWith<$Res> {
  factory _$$SmartEventImplCopyWith(
          _$SmartEventImpl value, $Res Function(_$SmartEventImpl) then) =
      __$$SmartEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      DateTime date,
      @TimeOfDayJsonConverter() TimeOfDay time,
      DateTime createdAt,
      DateTime updatedAt,
      String? description,
      bool? isRecurring,
      RecurringType? recurringType,
      bool? adjustBasedOnCompletion,
      DateTime? deletedAt,
      DateTime? recurringEndDateTime});
}

/// @nodoc
class __$$SmartEventImplCopyWithImpl<$Res>
    extends _$SmartEventCopyWithImpl<$Res, _$SmartEventImpl>
    implements _$$SmartEventImplCopyWith<$Res> {
  __$$SmartEventImplCopyWithImpl(
      _$SmartEventImpl _value, $Res Function(_$SmartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SmartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? date = null,
    Object? time = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? description = freezed,
    Object? isRecurring = freezed,
    Object? recurringType = freezed,
    Object? adjustBasedOnCompletion = freezed,
    Object? deletedAt = freezed,
    Object? recurringEndDateTime = freezed,
  }) {
    return _then(_$SmartEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isRecurring: freezed == isRecurring
          ? _value.isRecurring
          : isRecurring // ignore: cast_nullable_to_non_nullable
              as bool?,
      recurringType: freezed == recurringType
          ? _value.recurringType
          : recurringType // ignore: cast_nullable_to_non_nullable
              as RecurringType?,
      adjustBasedOnCompletion: freezed == adjustBasedOnCompletion
          ? _value.adjustBasedOnCompletion
          : adjustBasedOnCompletion // ignore: cast_nullable_to_non_nullable
              as bool?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      recurringEndDateTime: freezed == recurringEndDateTime
          ? _value.recurringEndDateTime
          : recurringEndDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SmartEventImpl extends _SmartEvent {
  const _$SmartEventImpl(
      {required this.id,
      required this.title,
      required this.date,
      @TimeOfDayJsonConverter() required this.time,
      required this.createdAt,
      required this.updatedAt,
      this.description,
      this.isRecurring,
      this.recurringType,
      this.adjustBasedOnCompletion,
      this.deletedAt,
      this.recurringEndDateTime})
      : super._();

  factory _$SmartEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$SmartEventImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final DateTime date;
  @override
  @TimeOfDayJsonConverter()
  final TimeOfDay time;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String? description;
  @override
  final bool? isRecurring;
  @override
  final RecurringType? recurringType;
  @override
  final bool? adjustBasedOnCompletion;
  @override
  final DateTime? deletedAt;
  @override
  final DateTime? recurringEndDateTime;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmartEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isRecurring, isRecurring) ||
                other.isRecurring == isRecurring) &&
            (identical(other.recurringType, recurringType) ||
                other.recurringType == recurringType) &&
            (identical(
                    other.adjustBasedOnCompletion, adjustBasedOnCompletion) ||
                other.adjustBasedOnCompletion == adjustBasedOnCompletion) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.recurringEndDateTime, recurringEndDateTime) ||
                other.recurringEndDateTime == recurringEndDateTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      date,
      time,
      createdAt,
      updatedAt,
      description,
      isRecurring,
      recurringType,
      adjustBasedOnCompletion,
      deletedAt,
      recurringEndDateTime);

  /// Create a copy of SmartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SmartEventImplCopyWith<_$SmartEventImpl> get copyWith =>
      __$$SmartEventImplCopyWithImpl<_$SmartEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SmartEventImplToJson(
      this,
    );
  }
}

abstract class _SmartEvent extends SmartEvent {
  const factory _SmartEvent(
      {required final String id,
      required final String title,
      required final DateTime date,
      @TimeOfDayJsonConverter() required final TimeOfDay time,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final String? description,
      final bool? isRecurring,
      final RecurringType? recurringType,
      final bool? adjustBasedOnCompletion,
      final DateTime? deletedAt,
      final DateTime? recurringEndDateTime}) = _$SmartEventImpl;
  const _SmartEvent._() : super._();

  factory _SmartEvent.fromJson(Map<String, dynamic> json) =
      _$SmartEventImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  DateTime get date;
  @override
  @TimeOfDayJsonConverter()
  TimeOfDay get time;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String? get description;
  @override
  bool? get isRecurring;
  @override
  RecurringType? get recurringType;
  @override
  bool? get adjustBasedOnCompletion;
  @override
  DateTime? get deletedAt;
  @override
  DateTime? get recurringEndDateTime;

  /// Create a copy of SmartEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SmartEventImplCopyWith<_$SmartEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
