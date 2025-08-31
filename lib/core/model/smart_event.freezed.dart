// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'smart_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SmartEvent {
  String get id;
  String get title;
  DateTime get date;
  @TimeOfDayJsonConverter()
  TimeOfDay get time;
  DateTime get createdAt;
  DateTime get updatedAt;
  String? get description;
  bool? get isRecurring;
  RecurringType? get recurringType;
  bool? get adjustBasedOnCompletion;
  DateTime? get deletedAt;
  DateTime? get recurringEndDateTime;

  /// Create a copy of SmartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SmartEventCopyWith<SmartEvent> get copyWith =>
      _$SmartEventCopyWithImpl<SmartEvent>(this as SmartEvent, _$identity);

  /// Serializes this SmartEvent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SmartEvent &&
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
}

/// @nodoc
abstract mixin class $SmartEventCopyWith<$Res> {
  factory $SmartEventCopyWith(
          SmartEvent value, $Res Function(SmartEvent) _then) =
      _$SmartEventCopyWithImpl;
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
class _$SmartEventCopyWithImpl<$Res> implements $SmartEventCopyWith<$Res> {
  _$SmartEventCopyWithImpl(this._self, this._then);

  final SmartEvent _self;
  final $Res Function(SmartEvent) _then;

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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isRecurring: freezed == isRecurring
          ? _self.isRecurring
          : isRecurring // ignore: cast_nullable_to_non_nullable
              as bool?,
      recurringType: freezed == recurringType
          ? _self.recurringType
          : recurringType // ignore: cast_nullable_to_non_nullable
              as RecurringType?,
      adjustBasedOnCompletion: freezed == adjustBasedOnCompletion
          ? _self.adjustBasedOnCompletion
          : adjustBasedOnCompletion // ignore: cast_nullable_to_non_nullable
              as bool?,
      deletedAt: freezed == deletedAt
          ? _self.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      recurringEndDateTime: freezed == recurringEndDateTime
          ? _self.recurringEndDateTime
          : recurringEndDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SmartEvent].
extension SmartEventPatterns on SmartEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SmartEvent value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SmartEvent() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SmartEvent value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SmartEvent():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SmartEvent value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SmartEvent() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
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
            DateTime? recurringEndDateTime)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SmartEvent() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.date,
            _that.time,
            _that.createdAt,
            _that.updatedAt,
            _that.description,
            _that.isRecurring,
            _that.recurringType,
            _that.adjustBasedOnCompletion,
            _that.deletedAt,
            _that.recurringEndDateTime);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
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
            DateTime? recurringEndDateTime)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SmartEvent():
        return $default(
            _that.id,
            _that.title,
            _that.date,
            _that.time,
            _that.createdAt,
            _that.updatedAt,
            _that.description,
            _that.isRecurring,
            _that.recurringType,
            _that.adjustBasedOnCompletion,
            _that.deletedAt,
            _that.recurringEndDateTime);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
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
            DateTime? recurringEndDateTime)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SmartEvent() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.date,
            _that.time,
            _that.createdAt,
            _that.updatedAt,
            _that.description,
            _that.isRecurring,
            _that.recurringType,
            _that.adjustBasedOnCompletion,
            _that.deletedAt,
            _that.recurringEndDateTime);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SmartEvent extends SmartEvent {
  const _SmartEvent(
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
  factory _SmartEvent.fromJson(Map<String, dynamic> json) =>
      _$SmartEventFromJson(json);

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

  /// Create a copy of SmartEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SmartEventCopyWith<_SmartEvent> get copyWith =>
      __$SmartEventCopyWithImpl<_SmartEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SmartEventToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SmartEvent &&
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
}

/// @nodoc
abstract mixin class _$SmartEventCopyWith<$Res>
    implements $SmartEventCopyWith<$Res> {
  factory _$SmartEventCopyWith(
          _SmartEvent value, $Res Function(_SmartEvent) _then) =
      __$SmartEventCopyWithImpl;
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
class __$SmartEventCopyWithImpl<$Res> implements _$SmartEventCopyWith<$Res> {
  __$SmartEventCopyWithImpl(this._self, this._then);

  final _SmartEvent _self;
  final $Res Function(_SmartEvent) _then;

  /// Create a copy of SmartEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_SmartEvent(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isRecurring: freezed == isRecurring
          ? _self.isRecurring
          : isRecurring // ignore: cast_nullable_to_non_nullable
              as bool?,
      recurringType: freezed == recurringType
          ? _self.recurringType
          : recurringType // ignore: cast_nullable_to_non_nullable
              as RecurringType?,
      adjustBasedOnCompletion: freezed == adjustBasedOnCompletion
          ? _self.adjustBasedOnCompletion
          : adjustBasedOnCompletion // ignore: cast_nullable_to_non_nullable
              as bool?,
      deletedAt: freezed == deletedAt
          ? _self.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      recurringEndDateTime: freezed == recurringEndDateTime
          ? _self.recurringEndDateTime
          : recurringEndDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
