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
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _timeMeta = const VerificationMeta('time');
  @override
  late final GeneratedColumnWithTypeConverter<TimeOfDay, int> time =
      GeneratedColumn<int>('time', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<TimeOfDay>($SmartEventTableTable.$convertertime);
  static const VerificationMeta _isRecurringMeta =
      const VerificationMeta('isRecurring');
  @override
  late final GeneratedColumn<bool> isRecurring = GeneratedColumn<bool>(
      'is_recurring', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_recurring" IN (0, 1))'));
  static const VerificationMeta _adjustBasedOnCompletionMeta =
      const VerificationMeta('adjustBasedOnCompletion');
  @override
  late final GeneratedColumn<bool> adjustBasedOnCompletion =
      GeneratedColumn<bool>('adjust_based_on_completion', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("adjust_based_on_completion" IN (0, 1))'));
  static const VerificationMeta _recurringTypeMeta =
      const VerificationMeta('recurringType');
  @override
  late final GeneratedColumnWithTypeConverter<RecurringType?, String>
      recurringType = GeneratedColumn<String>(
              'recurring_type', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<RecurringType?>(
              $SmartEventTableTable.$converterrecurringTypen);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        description,
        date,
        time,
        isRecurring,
        adjustBasedOnCompletion,
        recurringType,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'smart_event_table';
  @override
  VerificationContext validateIntegrity(Insertable<SmartEvent> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    context.handle(_timeMeta, const VerificationResult.success());
    if (data.containsKey('is_recurring')) {
      context.handle(
          _isRecurringMeta,
          isRecurring.isAcceptableOrUnknown(
              data['is_recurring']!, _isRecurringMeta));
    }
    if (data.containsKey('adjust_based_on_completion')) {
      context.handle(
          _adjustBasedOnCompletionMeta,
          adjustBasedOnCompletion.isAcceptableOrUnknown(
              data['adjust_based_on_completion']!,
              _adjustBasedOnCompletionMeta));
    }
    context.handle(_recurringTypeMeta, const VerificationResult.success());
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SmartEvent map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SmartEvent(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      time: $SmartEventTableTable.$convertertime.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}time'])!),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      isRecurring: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_recurring']),
      recurringType: $SmartEventTableTable.$converterrecurringTypen.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}recurring_type'])),
      adjustBasedOnCompletion: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}adjust_based_on_completion']),
    );
  }

  @override
  $SmartEventTableTable createAlias(String alias) {
    return $SmartEventTableTable(attachedDatabase, alias);
  }

  static TypeConverter<TimeOfDay, int> $convertertime =
      const TimeOfDayConverter();
  static JsonTypeConverter2<RecurringType, String, String>
      $converterrecurringType =
      const EnumNameConverter<RecurringType>(RecurringType.values);
  static JsonTypeConverter2<RecurringType?, String?, String?>
      $converterrecurringTypen =
      JsonTypeConverter2.asNullable($converterrecurringType);
}

class SmartEventTableCompanion extends UpdateCompanion<SmartEvent> {
  final Value<String> id;
  final Value<String> title;
  final Value<String?> description;
  final Value<DateTime> date;
  final Value<TimeOfDay> time;
  final Value<bool?> isRecurring;
  final Value<bool?> adjustBasedOnCompletion;
  final Value<RecurringType?> recurringType;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const SmartEventTableCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.date = const Value.absent(),
    this.time = const Value.absent(),
    this.isRecurring = const Value.absent(),
    this.adjustBasedOnCompletion = const Value.absent(),
    this.recurringType = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SmartEventTableCompanion.insert({
    required String id,
    required String title,
    this.description = const Value.absent(),
    required DateTime date,
    required TimeOfDay time,
    this.isRecurring = const Value.absent(),
    this.adjustBasedOnCompletion = const Value.absent(),
    this.recurringType = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        title = Value(title),
        date = Value(date),
        time = Value(time),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<SmartEvent> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<DateTime>? date,
    Expression<int>? time,
    Expression<bool>? isRecurring,
    Expression<bool>? adjustBasedOnCompletion,
    Expression<String>? recurringType,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (date != null) 'date': date,
      if (time != null) 'time': time,
      if (isRecurring != null) 'is_recurring': isRecurring,
      if (adjustBasedOnCompletion != null)
        'adjust_based_on_completion': adjustBasedOnCompletion,
      if (recurringType != null) 'recurring_type': recurringType,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SmartEventTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? title,
      Value<String?>? description,
      Value<DateTime>? date,
      Value<TimeOfDay>? time,
      Value<bool?>? isRecurring,
      Value<bool?>? adjustBasedOnCompletion,
      Value<RecurringType?>? recurringType,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<int>? rowid}) {
    return SmartEventTableCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      date: date ?? this.date,
      time: time ?? this.time,
      isRecurring: isRecurring ?? this.isRecurring,
      adjustBasedOnCompletion:
          adjustBasedOnCompletion ?? this.adjustBasedOnCompletion,
      recurringType: recurringType ?? this.recurringType,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
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
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (time.present) {
      map['time'] =
          Variable<int>($SmartEventTableTable.$convertertime.toSql(time.value));
    }
    if (isRecurring.present) {
      map['is_recurring'] = Variable<bool>(isRecurring.value);
    }
    if (adjustBasedOnCompletion.present) {
      map['adjust_based_on_completion'] =
          Variable<bool>(adjustBasedOnCompletion.value);
    }
    if (recurringType.present) {
      map['recurring_type'] = Variable<String>($SmartEventTableTable
          .$converterrecurringTypen
          .toSql(recurringType.value));
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
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
          ..write('date: $date, ')
          ..write('time: $time, ')
          ..write('isRecurring: $isRecurring, ')
          ..write('adjustBasedOnCompletion: $adjustBasedOnCompletion, ')
          ..write('recurringType: $recurringType, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  $DatabaseManager get managers => $DatabaseManager(this);
  late final $SmartEventTableTable smartEventTable =
      $SmartEventTableTable(this);
  late final SmartEventDao smartEventDao = SmartEventDao(this as Database);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [smartEventTable];
}

typedef $$SmartEventTableTableCreateCompanionBuilder = SmartEventTableCompanion
    Function({
  required String id,
  required String title,
  Value<String?> description,
  required DateTime date,
  required TimeOfDay time,
  Value<bool?> isRecurring,
  Value<bool?> adjustBasedOnCompletion,
  Value<RecurringType?> recurringType,
  required DateTime createdAt,
  required DateTime updatedAt,
  Value<int> rowid,
});
typedef $$SmartEventTableTableUpdateCompanionBuilder = SmartEventTableCompanion
    Function({
  Value<String> id,
  Value<String> title,
  Value<String?> description,
  Value<DateTime> date,
  Value<TimeOfDay> time,
  Value<bool?> isRecurring,
  Value<bool?> adjustBasedOnCompletion,
  Value<RecurringType?> recurringType,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
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
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<TimeOfDay, TimeOfDay, int> get time =>
      $composableBuilder(
          column: $table.time,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<bool> get isRecurring => $composableBuilder(
      column: $table.isRecurring, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get adjustBasedOnCompletion => $composableBuilder(
      column: $table.adjustBasedOnCompletion,
      builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<RecurringType?, RecurringType, String>
      get recurringType => $composableBuilder(
          column: $table.recurringType,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
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
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get time => $composableBuilder(
      column: $table.time, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isRecurring => $composableBuilder(
      column: $table.isRecurring, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get adjustBasedOnCompletion => $composableBuilder(
      column: $table.adjustBasedOnCompletion,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get recurringType => $composableBuilder(
      column: $table.recurringType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
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
      column: $table.description, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumnWithTypeConverter<TimeOfDay, int> get time =>
      $composableBuilder(column: $table.time, builder: (column) => column);

  GeneratedColumn<bool> get isRecurring => $composableBuilder(
      column: $table.isRecurring, builder: (column) => column);

  GeneratedColumn<bool> get adjustBasedOnCompletion => $composableBuilder(
      column: $table.adjustBasedOnCompletion, builder: (column) => column);

  GeneratedColumnWithTypeConverter<RecurringType?, String> get recurringType =>
      $composableBuilder(
          column: $table.recurringType, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$SmartEventTableTableTableManager extends RootTableManager<
    _$Database,
    $SmartEventTableTable,
    SmartEvent,
    $$SmartEventTableTableFilterComposer,
    $$SmartEventTableTableOrderingComposer,
    $$SmartEventTableTableAnnotationComposer,
    $$SmartEventTableTableCreateCompanionBuilder,
    $$SmartEventTableTableUpdateCompanionBuilder,
    (SmartEvent, BaseReferences<_$Database, $SmartEventTableTable, SmartEvent>),
    SmartEvent,
    PrefetchHooks Function()> {
  $$SmartEventTableTableTableManager(_$Database db, $SmartEventTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SmartEventTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SmartEventTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SmartEventTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<DateTime> date = const Value.absent(),
            Value<TimeOfDay> time = const Value.absent(),
            Value<bool?> isRecurring = const Value.absent(),
            Value<bool?> adjustBasedOnCompletion = const Value.absent(),
            Value<RecurringType?> recurringType = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SmartEventTableCompanion(
            id: id,
            title: title,
            description: description,
            date: date,
            time: time,
            isRecurring: isRecurring,
            adjustBasedOnCompletion: adjustBasedOnCompletion,
            recurringType: recurringType,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String title,
            Value<String?> description = const Value.absent(),
            required DateTime date,
            required TimeOfDay time,
            Value<bool?> isRecurring = const Value.absent(),
            Value<bool?> adjustBasedOnCompletion = const Value.absent(),
            Value<RecurringType?> recurringType = const Value.absent(),
            required DateTime createdAt,
            required DateTime updatedAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              SmartEventTableCompanion.insert(
            id: id,
            title: title,
            description: description,
            date: date,
            time: time,
            isRecurring: isRecurring,
            adjustBasedOnCompletion: adjustBasedOnCompletion,
            recurringType: recurringType,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SmartEventTableTableProcessedTableManager = ProcessedTableManager<
    _$Database,
    $SmartEventTableTable,
    SmartEvent,
    $$SmartEventTableTableFilterComposer,
    $$SmartEventTableTableOrderingComposer,
    $$SmartEventTableTableAnnotationComposer,
    $$SmartEventTableTableCreateCompanionBuilder,
    $$SmartEventTableTableUpdateCompanionBuilder,
    (SmartEvent, BaseReferences<_$Database, $SmartEventTableTable, SmartEvent>),
    SmartEvent,
    PrefetchHooks Function()>;

class $DatabaseManager {
  final _$Database _db;
  $DatabaseManager(this._db);
  $$SmartEventTableTableTableManager get smartEventTable =>
      $$SmartEventTableTableTableManager(_db, _db.smartEventTable);
}
