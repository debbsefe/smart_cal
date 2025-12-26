// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $SmartEventTableTable extends SmartEventTable
    with TableInfo<$SmartEventTableTable, SmartEvent> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SmartEventTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _startMeta = const VerificationMeta('start');
  @override
  late final GeneratedColumn<DateTime> start = GeneratedColumn<DateTime>(
    'start',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _endMeta = const VerificationMeta('end');
  @override
  late final GeneratedColumn<DateTime> end = GeneratedColumn<DateTime>(
    'end',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isRecurringMeta = const VerificationMeta(
    'isRecurring',
  );
  @override
  late final GeneratedColumn<bool> isRecurring = GeneratedColumn<bool>(
    'is_recurring',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_recurring" IN (0, 1))',
    ),
  );
  static const VerificationMeta _adjustBasedOnCompletionMeta =
      const VerificationMeta('adjustBasedOnCompletion');
  @override
  late final GeneratedColumn<bool> adjustBasedOnCompletion =
      GeneratedColumn<bool>(
        'adjust_based_on_completion',
        aliasedName,
        true,
        type: DriftSqlType.bool,
        requiredDuringInsert: false,
        defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("adjust_based_on_completion" IN (0, 1))',
        ),
      );
  @override
  late final GeneratedColumnWithTypeConverter<RecurringType?, String>
  recurringType =
      GeneratedColumn<String>(
        'recurring_type',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<RecurringType?>(
        $SmartEventTableTable.$converterrecurringTypen,
      );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _recurringEndDateTimeMeta =
      const VerificationMeta('recurringEndDateTime');
  @override
  late final GeneratedColumn<DateTime> recurringEndDateTime =
      GeneratedColumn<DateTime>(
        'recurring_end_date_time',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _externalCalendarIdMeta =
      const VerificationMeta('externalCalendarId');
  @override
  late final GeneratedColumn<String> externalCalendarId =
      GeneratedColumn<String>(
        'external_calendar_id',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _externalEventIdMeta = const VerificationMeta(
    'externalEventId',
  );
  @override
  late final GeneratedColumn<String> externalEventId = GeneratedColumn<String>(
    'external_event_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _calendarColorMeta = const VerificationMeta(
    'calendarColor',
  );
  @override
  late final GeneratedColumn<int> calendarColor = GeneratedColumn<int>(
    'calendar_color',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _allDayMeta = const VerificationMeta('allDay');
  @override
  late final GeneratedColumn<bool> allDay = GeneratedColumn<bool>(
    'all_day',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("all_day" IN (0, 1))',
    ),
  );
  static const VerificationMeta _locationMeta = const VerificationMeta(
    'location',
  );
  @override
  late final GeneratedColumn<String> location = GeneratedColumn<String>(
    'location',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    description,
    start,
    end,
    isRecurring,
    adjustBasedOnCompletion,
    recurringType,
    createdAt,
    updatedAt,
    deletedAt,
    recurringEndDateTime,
    externalCalendarId,
    externalEventId,
    calendarColor,
    allDay,
    location,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'smart_event_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<SmartEvent> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('start')) {
      context.handle(
        _startMeta,
        start.isAcceptableOrUnknown(data['start']!, _startMeta),
      );
    } else if (isInserting) {
      context.missing(_startMeta);
    }
    if (data.containsKey('end')) {
      context.handle(
        _endMeta,
        end.isAcceptableOrUnknown(data['end']!, _endMeta),
      );
    } else if (isInserting) {
      context.missing(_endMeta);
    }
    if (data.containsKey('is_recurring')) {
      context.handle(
        _isRecurringMeta,
        isRecurring.isAcceptableOrUnknown(
          data['is_recurring']!,
          _isRecurringMeta,
        ),
      );
    }
    if (data.containsKey('adjust_based_on_completion')) {
      context.handle(
        _adjustBasedOnCompletionMeta,
        adjustBasedOnCompletion.isAcceptableOrUnknown(
          data['adjust_based_on_completion']!,
          _adjustBasedOnCompletionMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('recurring_end_date_time')) {
      context.handle(
        _recurringEndDateTimeMeta,
        recurringEndDateTime.isAcceptableOrUnknown(
          data['recurring_end_date_time']!,
          _recurringEndDateTimeMeta,
        ),
      );
    }
    if (data.containsKey('external_calendar_id')) {
      context.handle(
        _externalCalendarIdMeta,
        externalCalendarId.isAcceptableOrUnknown(
          data['external_calendar_id']!,
          _externalCalendarIdMeta,
        ),
      );
    }
    if (data.containsKey('external_event_id')) {
      context.handle(
        _externalEventIdMeta,
        externalEventId.isAcceptableOrUnknown(
          data['external_event_id']!,
          _externalEventIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_externalEventIdMeta);
    }
    if (data.containsKey('calendar_color')) {
      context.handle(
        _calendarColorMeta,
        calendarColor.isAcceptableOrUnknown(
          data['calendar_color']!,
          _calendarColorMeta,
        ),
      );
    }
    if (data.containsKey('all_day')) {
      context.handle(
        _allDayMeta,
        allDay.isAcceptableOrUnknown(data['all_day']!, _allDayMeta),
      );
    }
    if (data.containsKey('location')) {
      context.handle(
        _locationMeta,
        location.isAcceptableOrUnknown(data['location']!, _locationMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {externalEventId};
  @override
  SmartEvent map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SmartEvent(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      start: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}start'],
      )!,
      end: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}end'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      externalEventId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}external_event_id'],
      )!,
      allDay: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}all_day'],
      ),
      location: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}location'],
      ),
      externalCalendarId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}external_calendar_id'],
      ),
      calendarColor: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}calendar_color'],
      ),
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      isRecurring: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_recurring'],
      ),
      recurringType: $SmartEventTableTable.$converterrecurringTypen.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}recurring_type'],
        ),
      ),
      adjustBasedOnCompletion: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}adjust_based_on_completion'],
      ),
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
      recurringEndDateTime: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}recurring_end_date_time'],
      ),
    );
  }

  @override
  $SmartEventTableTable createAlias(String alias) {
    return $SmartEventTableTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RecurringType, String, String>
  $converterrecurringType = const EnumNameConverter<RecurringType>(
    RecurringType.values,
  );
  static JsonTypeConverter2<RecurringType?, String?, String?>
  $converterrecurringTypen = JsonTypeConverter2.asNullable(
    $converterrecurringType,
  );
}

class SmartEventTableCompanion extends UpdateCompanion<SmartEvent> {
  final Value<String> id;
  final Value<String> title;
  final Value<String?> description;
  final Value<DateTime> start;
  final Value<DateTime> end;
  final Value<bool?> isRecurring;
  final Value<bool?> adjustBasedOnCompletion;
  final Value<RecurringType?> recurringType;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<DateTime?> recurringEndDateTime;
  final Value<String?> externalCalendarId;
  final Value<String> externalEventId;
  final Value<int?> calendarColor;
  final Value<bool?> allDay;
  final Value<String?> location;
  final Value<int> rowid;
  const SmartEventTableCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.start = const Value.absent(),
    this.end = const Value.absent(),
    this.isRecurring = const Value.absent(),
    this.adjustBasedOnCompletion = const Value.absent(),
    this.recurringType = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.recurringEndDateTime = const Value.absent(),
    this.externalCalendarId = const Value.absent(),
    this.externalEventId = const Value.absent(),
    this.calendarColor = const Value.absent(),
    this.allDay = const Value.absent(),
    this.location = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SmartEventTableCompanion.insert({
    required String id,
    required String title,
    this.description = const Value.absent(),
    required DateTime start,
    required DateTime end,
    this.isRecurring = const Value.absent(),
    this.adjustBasedOnCompletion = const Value.absent(),
    this.recurringType = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.deletedAt = const Value.absent(),
    this.recurringEndDateTime = const Value.absent(),
    this.externalCalendarId = const Value.absent(),
    required String externalEventId,
    this.calendarColor = const Value.absent(),
    this.allDay = const Value.absent(),
    this.location = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       title = Value(title),
       start = Value(start),
       end = Value(end),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt),
       externalEventId = Value(externalEventId);
  static Insertable<SmartEvent> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<DateTime>? start,
    Expression<DateTime>? end,
    Expression<bool>? isRecurring,
    Expression<bool>? adjustBasedOnCompletion,
    Expression<String>? recurringType,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<DateTime>? recurringEndDateTime,
    Expression<String>? externalCalendarId,
    Expression<String>? externalEventId,
    Expression<int>? calendarColor,
    Expression<bool>? allDay,
    Expression<String>? location,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (start != null) 'start': start,
      if (end != null) 'end': end,
      if (isRecurring != null) 'is_recurring': isRecurring,
      if (adjustBasedOnCompletion != null)
        'adjust_based_on_completion': adjustBasedOnCompletion,
      if (recurringType != null) 'recurring_type': recurringType,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (recurringEndDateTime != null)
        'recurring_end_date_time': recurringEndDateTime,
      if (externalCalendarId != null)
        'external_calendar_id': externalCalendarId,
      if (externalEventId != null) 'external_event_id': externalEventId,
      if (calendarColor != null) 'calendar_color': calendarColor,
      if (allDay != null) 'all_day': allDay,
      if (location != null) 'location': location,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SmartEventTableCompanion copyWith({
    Value<String>? id,
    Value<String>? title,
    Value<String?>? description,
    Value<DateTime>? start,
    Value<DateTime>? end,
    Value<bool?>? isRecurring,
    Value<bool?>? adjustBasedOnCompletion,
    Value<RecurringType?>? recurringType,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<DateTime?>? recurringEndDateTime,
    Value<String?>? externalCalendarId,
    Value<String>? externalEventId,
    Value<int?>? calendarColor,
    Value<bool?>? allDay,
    Value<String?>? location,
    Value<int>? rowid,
  }) {
    return SmartEventTableCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      start: start ?? this.start,
      end: end ?? this.end,
      isRecurring: isRecurring ?? this.isRecurring,
      adjustBasedOnCompletion:
          adjustBasedOnCompletion ?? this.adjustBasedOnCompletion,
      recurringType: recurringType ?? this.recurringType,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      recurringEndDateTime: recurringEndDateTime ?? this.recurringEndDateTime,
      externalCalendarId: externalCalendarId ?? this.externalCalendarId,
      externalEventId: externalEventId ?? this.externalEventId,
      calendarColor: calendarColor ?? this.calendarColor,
      allDay: allDay ?? this.allDay,
      location: location ?? this.location,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (start.present) {
      map['start'] = Variable<DateTime>(start.value);
    }
    if (end.present) {
      map['end'] = Variable<DateTime>(end.value);
    }
    if (isRecurring.present) {
      map['is_recurring'] = Variable<bool>(isRecurring.value);
    }
    if (adjustBasedOnCompletion.present) {
      map['adjust_based_on_completion'] = Variable<bool>(
        adjustBasedOnCompletion.value,
      );
    }
    if (recurringType.present) {
      map['recurring_type'] = Variable<String>(
        $SmartEventTableTable.$converterrecurringTypen.toSql(
          recurringType.value,
        ),
      );
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (recurringEndDateTime.present) {
      map['recurring_end_date_time'] = Variable<DateTime>(
        recurringEndDateTime.value,
      );
    }
    if (externalCalendarId.present) {
      map['external_calendar_id'] = Variable<String>(externalCalendarId.value);
    }
    if (externalEventId.present) {
      map['external_event_id'] = Variable<String>(externalEventId.value);
    }
    if (calendarColor.present) {
      map['calendar_color'] = Variable<int>(calendarColor.value);
    }
    if (allDay.present) {
      map['all_day'] = Variable<bool>(allDay.value);
    }
    if (location.present) {
      map['location'] = Variable<String>(location.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SmartEventTableCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('start: $start, ')
          ..write('end: $end, ')
          ..write('isRecurring: $isRecurring, ')
          ..write('adjustBasedOnCompletion: $adjustBasedOnCompletion, ')
          ..write('recurringType: $recurringType, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('recurringEndDateTime: $recurringEndDateTime, ')
          ..write('externalCalendarId: $externalCalendarId, ')
          ..write('externalEventId: $externalEventId, ')
          ..write('calendarColor: $calendarColor, ')
          ..write('allDay: $allDay, ')
          ..write('location: $location, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ProgressTableTable extends ProgressTable
    with TableInfo<$ProgressTableTable, Progress> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProgressTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _entityIdMeta = const VerificationMeta(
    'entityId',
  );
  @override
  late final GeneratedColumn<String> entityId = GeneratedColumn<String>(
    'entity_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<ProgressStatus, String> status =
      GeneratedColumn<String>(
        'status',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      ).withConverter<ProgressStatus>($ProgressTableTable.$converterstatus);
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _completedAtMeta = const VerificationMeta(
    'completedAt',
  );
  @override
  late final GeneratedColumn<DateTime> completedAt = GeneratedColumn<DateTime>(
    'completed_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    entityId,
    status,
    createdAt,
    updatedAt,
    completedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'progress_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<Progress> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('entity_id')) {
      context.handle(
        _entityIdMeta,
        entityId.isAcceptableOrUnknown(data['entity_id']!, _entityIdMeta),
      );
    } else if (isInserting) {
      context.missing(_entityIdMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('completed_at')) {
      context.handle(
        _completedAtMeta,
        completedAt.isAcceptableOrUnknown(
          data['completed_at']!,
          _completedAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_completedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Progress map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Progress(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      entityId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}entity_id'],
      )!,
      status: $ProgressTableTable.$converterstatus.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}status'],
        )!,
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      completedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}completed_at'],
      )!,
    );
  }

  @override
  $ProgressTableTable createAlias(String alias) {
    return $ProgressTableTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<ProgressStatus, String, String> $converterstatus =
      const EnumNameConverter<ProgressStatus>(ProgressStatus.values);
}

class ProgressTableCompanion extends UpdateCompanion<Progress> {
  final Value<String> id;
  final Value<String> entityId;
  final Value<ProgressStatus> status;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> completedAt;
  final Value<int> rowid;
  const ProgressTableCompanion({
    this.id = const Value.absent(),
    this.entityId = const Value.absent(),
    this.status = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.completedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProgressTableCompanion.insert({
    required String id,
    required String entityId,
    required ProgressStatus status,
    required DateTime createdAt,
    required DateTime updatedAt,
    required DateTime completedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       entityId = Value(entityId),
       status = Value(status),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt),
       completedAt = Value(completedAt);
  static Insertable<Progress> custom({
    Expression<String>? id,
    Expression<String>? entityId,
    Expression<String>? status,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? completedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (entityId != null) 'entity_id': entityId,
      if (status != null) 'status': status,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (completedAt != null) 'completed_at': completedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProgressTableCompanion copyWith({
    Value<String>? id,
    Value<String>? entityId,
    Value<ProgressStatus>? status,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime>? completedAt,
    Value<int>? rowid,
  }) {
    return ProgressTableCompanion(
      id: id ?? this.id,
      entityId: entityId ?? this.entityId,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      completedAt: completedAt ?? this.completedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (entityId.present) {
      map['entity_id'] = Variable<String>(entityId.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(
        $ProgressTableTable.$converterstatus.toSql(status.value),
      );
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (completedAt.present) {
      map['completed_at'] = Variable<DateTime>(completedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProgressTableCompanion(')
          ..write('id: $id, ')
          ..write('entityId: $entityId, ')
          ..write('status: $status, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('completedAt: $completedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  $DatabaseManager get managers => $DatabaseManager(this);
  late final $SmartEventTableTable smartEventTable = $SmartEventTableTable(
    this,
  );
  late final $ProgressTableTable progressTable = $ProgressTableTable(this);
  late final SmartEventDao smartEventDao = SmartEventDao(this as Database);
  late final ProgressDao progressDao = ProgressDao(this as Database);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    smartEventTable,
    progressTable,
  ];
}

typedef $$SmartEventTableTableCreateCompanionBuilder =
    SmartEventTableCompanion Function({
      required String id,
      required String title,
      Value<String?> description,
      required DateTime start,
      required DateTime end,
      Value<bool?> isRecurring,
      Value<bool?> adjustBasedOnCompletion,
      Value<RecurringType?> recurringType,
      required DateTime createdAt,
      required DateTime updatedAt,
      Value<DateTime?> deletedAt,
      Value<DateTime?> recurringEndDateTime,
      Value<String?> externalCalendarId,
      required String externalEventId,
      Value<int?> calendarColor,
      Value<bool?> allDay,
      Value<String?> location,
      Value<int> rowid,
    });
typedef $$SmartEventTableTableUpdateCompanionBuilder =
    SmartEventTableCompanion Function({
      Value<String> id,
      Value<String> title,
      Value<String?> description,
      Value<DateTime> start,
      Value<DateTime> end,
      Value<bool?> isRecurring,
      Value<bool?> adjustBasedOnCompletion,
      Value<RecurringType?> recurringType,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      Value<DateTime?> recurringEndDateTime,
      Value<String?> externalCalendarId,
      Value<String> externalEventId,
      Value<int?> calendarColor,
      Value<bool?> allDay,
      Value<String?> location,
      Value<int> rowid,
    });

class $$SmartEventTableTableFilterComposer
    extends Composer<_$Database, $SmartEventTableTable> {
  $$SmartEventTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get start => $composableBuilder(
    column: $table.start,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get end => $composableBuilder(
    column: $table.end,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isRecurring => $composableBuilder(
    column: $table.isRecurring,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get adjustBasedOnCompletion => $composableBuilder(
    column: $table.adjustBasedOnCompletion,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<RecurringType?, RecurringType, String>
  get recurringType => $composableBuilder(
    column: $table.recurringType,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get recurringEndDateTime => $composableBuilder(
    column: $table.recurringEndDateTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get externalCalendarId => $composableBuilder(
    column: $table.externalCalendarId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get externalEventId => $composableBuilder(
    column: $table.externalEventId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get calendarColor => $composableBuilder(
    column: $table.calendarColor,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get allDay => $composableBuilder(
    column: $table.allDay,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get location => $composableBuilder(
    column: $table.location,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SmartEventTableTableOrderingComposer
    extends Composer<_$Database, $SmartEventTableTable> {
  $$SmartEventTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get start => $composableBuilder(
    column: $table.start,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get end => $composableBuilder(
    column: $table.end,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isRecurring => $composableBuilder(
    column: $table.isRecurring,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get adjustBasedOnCompletion => $composableBuilder(
    column: $table.adjustBasedOnCompletion,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get recurringType => $composableBuilder(
    column: $table.recurringType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get recurringEndDateTime => $composableBuilder(
    column: $table.recurringEndDateTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get externalCalendarId => $composableBuilder(
    column: $table.externalCalendarId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get externalEventId => $composableBuilder(
    column: $table.externalEventId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get calendarColor => $composableBuilder(
    column: $table.calendarColor,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get allDay => $composableBuilder(
    column: $table.allDay,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get location => $composableBuilder(
    column: $table.location,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SmartEventTableTableAnnotationComposer
    extends Composer<_$Database, $SmartEventTableTable> {
  $$SmartEventTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get start =>
      $composableBuilder(column: $table.start, builder: (column) => column);

  GeneratedColumn<DateTime> get end =>
      $composableBuilder(column: $table.end, builder: (column) => column);

  GeneratedColumn<bool> get isRecurring => $composableBuilder(
    column: $table.isRecurring,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get adjustBasedOnCompletion => $composableBuilder(
    column: $table.adjustBasedOnCompletion,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<RecurringType?, String> get recurringType =>
      $composableBuilder(
        column: $table.recurringType,
        builder: (column) => column,
      );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get recurringEndDateTime => $composableBuilder(
    column: $table.recurringEndDateTime,
    builder: (column) => column,
  );

  GeneratedColumn<String> get externalCalendarId => $composableBuilder(
    column: $table.externalCalendarId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get externalEventId => $composableBuilder(
    column: $table.externalEventId,
    builder: (column) => column,
  );

  GeneratedColumn<int> get calendarColor => $composableBuilder(
    column: $table.calendarColor,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get allDay =>
      $composableBuilder(column: $table.allDay, builder: (column) => column);

  GeneratedColumn<String> get location =>
      $composableBuilder(column: $table.location, builder: (column) => column);
}

class $$SmartEventTableTableTableManager
    extends
        RootTableManager<
          _$Database,
          $SmartEventTableTable,
          SmartEvent,
          $$SmartEventTableTableFilterComposer,
          $$SmartEventTableTableOrderingComposer,
          $$SmartEventTableTableAnnotationComposer,
          $$SmartEventTableTableCreateCompanionBuilder,
          $$SmartEventTableTableUpdateCompanionBuilder,
          (
            SmartEvent,
            BaseReferences<_$Database, $SmartEventTableTable, SmartEvent>,
          ),
          SmartEvent,
          PrefetchHooks Function()
        > {
  $$SmartEventTableTableTableManager(_$Database db, $SmartEventTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SmartEventTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SmartEventTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SmartEventTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<DateTime> start = const Value.absent(),
                Value<DateTime> end = const Value.absent(),
                Value<bool?> isRecurring = const Value.absent(),
                Value<bool?> adjustBasedOnCompletion = const Value.absent(),
                Value<RecurringType?> recurringType = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<DateTime?> recurringEndDateTime = const Value.absent(),
                Value<String?> externalCalendarId = const Value.absent(),
                Value<String> externalEventId = const Value.absent(),
                Value<int?> calendarColor = const Value.absent(),
                Value<bool?> allDay = const Value.absent(),
                Value<String?> location = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SmartEventTableCompanion(
                id: id,
                title: title,
                description: description,
                start: start,
                end: end,
                isRecurring: isRecurring,
                adjustBasedOnCompletion: adjustBasedOnCompletion,
                recurringType: recurringType,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                recurringEndDateTime: recurringEndDateTime,
                externalCalendarId: externalCalendarId,
                externalEventId: externalEventId,
                calendarColor: calendarColor,
                allDay: allDay,
                location: location,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String title,
                Value<String?> description = const Value.absent(),
                required DateTime start,
                required DateTime end,
                Value<bool?> isRecurring = const Value.absent(),
                Value<bool?> adjustBasedOnCompletion = const Value.absent(),
                Value<RecurringType?> recurringType = const Value.absent(),
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<DateTime?> recurringEndDateTime = const Value.absent(),
                Value<String?> externalCalendarId = const Value.absent(),
                required String externalEventId,
                Value<int?> calendarColor = const Value.absent(),
                Value<bool?> allDay = const Value.absent(),
                Value<String?> location = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SmartEventTableCompanion.insert(
                id: id,
                title: title,
                description: description,
                start: start,
                end: end,
                isRecurring: isRecurring,
                adjustBasedOnCompletion: adjustBasedOnCompletion,
                recurringType: recurringType,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                recurringEndDateTime: recurringEndDateTime,
                externalCalendarId: externalCalendarId,
                externalEventId: externalEventId,
                calendarColor: calendarColor,
                allDay: allDay,
                location: location,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SmartEventTableTableProcessedTableManager =
    ProcessedTableManager<
      _$Database,
      $SmartEventTableTable,
      SmartEvent,
      $$SmartEventTableTableFilterComposer,
      $$SmartEventTableTableOrderingComposer,
      $$SmartEventTableTableAnnotationComposer,
      $$SmartEventTableTableCreateCompanionBuilder,
      $$SmartEventTableTableUpdateCompanionBuilder,
      (
        SmartEvent,
        BaseReferences<_$Database, $SmartEventTableTable, SmartEvent>,
      ),
      SmartEvent,
      PrefetchHooks Function()
    >;
typedef $$ProgressTableTableCreateCompanionBuilder =
    ProgressTableCompanion Function({
      required String id,
      required String entityId,
      required ProgressStatus status,
      required DateTime createdAt,
      required DateTime updatedAt,
      required DateTime completedAt,
      Value<int> rowid,
    });
typedef $$ProgressTableTableUpdateCompanionBuilder =
    ProgressTableCompanion Function({
      Value<String> id,
      Value<String> entityId,
      Value<ProgressStatus> status,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> completedAt,
      Value<int> rowid,
    });

class $$ProgressTableTableFilterComposer
    extends Composer<_$Database, $ProgressTableTable> {
  $$ProgressTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get entityId => $composableBuilder(
    column: $table.entityId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<ProgressStatus, ProgressStatus, String>
  get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get completedAt => $composableBuilder(
    column: $table.completedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ProgressTableTableOrderingComposer
    extends Composer<_$Database, $ProgressTableTable> {
  $$ProgressTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get entityId => $composableBuilder(
    column: $table.entityId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get completedAt => $composableBuilder(
    column: $table.completedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ProgressTableTableAnnotationComposer
    extends Composer<_$Database, $ProgressTableTable> {
  $$ProgressTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get entityId =>
      $composableBuilder(column: $table.entityId, builder: (column) => column);

  GeneratedColumnWithTypeConverter<ProgressStatus, String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get completedAt => $composableBuilder(
    column: $table.completedAt,
    builder: (column) => column,
  );
}

class $$ProgressTableTableTableManager
    extends
        RootTableManager<
          _$Database,
          $ProgressTableTable,
          Progress,
          $$ProgressTableTableFilterComposer,
          $$ProgressTableTableOrderingComposer,
          $$ProgressTableTableAnnotationComposer,
          $$ProgressTableTableCreateCompanionBuilder,
          $$ProgressTableTableUpdateCompanionBuilder,
          (Progress, BaseReferences<_$Database, $ProgressTableTable, Progress>),
          Progress,
          PrefetchHooks Function()
        > {
  $$ProgressTableTableTableManager(_$Database db, $ProgressTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProgressTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProgressTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProgressTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> entityId = const Value.absent(),
                Value<ProgressStatus> status = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime> completedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProgressTableCompanion(
                id: id,
                entityId: entityId,
                status: status,
                createdAt: createdAt,
                updatedAt: updatedAt,
                completedAt: completedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String entityId,
                required ProgressStatus status,
                required DateTime createdAt,
                required DateTime updatedAt,
                required DateTime completedAt,
                Value<int> rowid = const Value.absent(),
              }) => ProgressTableCompanion.insert(
                id: id,
                entityId: entityId,
                status: status,
                createdAt: createdAt,
                updatedAt: updatedAt,
                completedAt: completedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ProgressTableTableProcessedTableManager =
    ProcessedTableManager<
      _$Database,
      $ProgressTableTable,
      Progress,
      $$ProgressTableTableFilterComposer,
      $$ProgressTableTableOrderingComposer,
      $$ProgressTableTableAnnotationComposer,
      $$ProgressTableTableCreateCompanionBuilder,
      $$ProgressTableTableUpdateCompanionBuilder,
      (Progress, BaseReferences<_$Database, $ProgressTableTable, Progress>),
      Progress,
      PrefetchHooks Function()
    >;

class $DatabaseManager {
  final _$Database _db;
  $DatabaseManager(this._db);
  $$SmartEventTableTableTableManager get smartEventTable =>
      $$SmartEventTableTableTableManager(_db, _db.smartEventTable);
  $$ProgressTableTableTableManager get progressTable =>
      $$ProgressTableTableTableManager(_db, _db.progressTable);
}
