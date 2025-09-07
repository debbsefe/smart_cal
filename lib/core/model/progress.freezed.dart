// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Progress {
  String get id;
  String get entityId;
  @JsonKey(unknownEnumValue: ProgressStatus.none)
  ProgressStatus get status;
  DateTime get createdAt;
  DateTime get updatedAt;
  DateTime get completedAt;

  /// Create a copy of Progress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProgressCopyWith<Progress> get copyWith =>
      _$ProgressCopyWithImpl<Progress>(this as Progress, _$identity);

  /// Serializes this Progress to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Progress &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.entityId, entityId) ||
                other.entityId == entityId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, entityId, status, createdAt, updatedAt, completedAt);

  @override
  String toString() {
    return 'Progress(id: $id, entityId: $entityId, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, completedAt: $completedAt)';
  }
}

/// @nodoc
abstract mixin class $ProgressCopyWith<$Res> {
  factory $ProgressCopyWith(Progress value, $Res Function(Progress) _then) =
      _$ProgressCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String entityId,
      @JsonKey(unknownEnumValue: ProgressStatus.none) ProgressStatus status,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime completedAt});
}

/// @nodoc
class _$ProgressCopyWithImpl<$Res> implements $ProgressCopyWith<$Res> {
  _$ProgressCopyWithImpl(this._self, this._then);

  final Progress _self;
  final $Res Function(Progress) _then;

  /// Create a copy of Progress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? entityId = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? completedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: null == entityId
          ? _self.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProgressStatus,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedAt: null == completedAt
          ? _self.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [Progress].
extension ProgressPatterns on Progress {
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
    TResult Function(_Progress value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Progress() when $default != null:
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
    TResult Function(_Progress value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Progress():
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
    TResult? Function(_Progress value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Progress() when $default != null:
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
            String entityId,
            @JsonKey(unknownEnumValue: ProgressStatus.none)
            ProgressStatus status,
            DateTime createdAt,
            DateTime updatedAt,
            DateTime completedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Progress() when $default != null:
        return $default(_that.id, _that.entityId, _that.status, _that.createdAt,
            _that.updatedAt, _that.completedAt);
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
            String entityId,
            @JsonKey(unknownEnumValue: ProgressStatus.none)
            ProgressStatus status,
            DateTime createdAt,
            DateTime updatedAt,
            DateTime completedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Progress():
        return $default(_that.id, _that.entityId, _that.status, _that.createdAt,
            _that.updatedAt, _that.completedAt);
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
            String entityId,
            @JsonKey(unknownEnumValue: ProgressStatus.none)
            ProgressStatus status,
            DateTime createdAt,
            DateTime updatedAt,
            DateTime completedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Progress() when $default != null:
        return $default(_that.id, _that.entityId, _that.status, _that.createdAt,
            _that.updatedAt, _that.completedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Progress extends Progress {
  const _Progress(
      {required this.id,
      required this.entityId,
      @JsonKey(unknownEnumValue: ProgressStatus.none) required this.status,
      required this.createdAt,
      required this.updatedAt,
      required this.completedAt})
      : super._();
  factory _Progress.fromJson(Map<String, dynamic> json) =>
      _$ProgressFromJson(json);

  @override
  final String id;
  @override
  final String entityId;
  @override
  @JsonKey(unknownEnumValue: ProgressStatus.none)
  final ProgressStatus status;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime completedAt;

  /// Create a copy of Progress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProgressCopyWith<_Progress> get copyWith =>
      __$ProgressCopyWithImpl<_Progress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProgressToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Progress &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.entityId, entityId) ||
                other.entityId == entityId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, entityId, status, createdAt, updatedAt, completedAt);

  @override
  String toString() {
    return 'Progress(id: $id, entityId: $entityId, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, completedAt: $completedAt)';
  }
}

/// @nodoc
abstract mixin class _$ProgressCopyWith<$Res>
    implements $ProgressCopyWith<$Res> {
  factory _$ProgressCopyWith(_Progress value, $Res Function(_Progress) _then) =
      __$ProgressCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String entityId,
      @JsonKey(unknownEnumValue: ProgressStatus.none) ProgressStatus status,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime completedAt});
}

/// @nodoc
class __$ProgressCopyWithImpl<$Res> implements _$ProgressCopyWith<$Res> {
  __$ProgressCopyWithImpl(this._self, this._then);

  final _Progress _self;
  final $Res Function(_Progress) _then;

  /// Create a copy of Progress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? entityId = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? completedAt = null,
  }) {
    return _then(_Progress(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: null == entityId
          ? _self.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProgressStatus,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedAt: null == completedAt
          ? _self.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
