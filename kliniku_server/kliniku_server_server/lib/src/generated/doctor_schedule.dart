/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class DoctorSchedule
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  DoctorSchedule._({
    this.id,
    required this.doctorId,
    required this.dayOfWeek,
    required this.startTime,
    required this.endTime,
    required this.slotDurationMinutes,
    required this.maxPatients,
    required this.isActive,
  });

  factory DoctorSchedule({
    int? id,
    required int doctorId,
    required int dayOfWeek,
    required String startTime,
    required String endTime,
    required int slotDurationMinutes,
    required int maxPatients,
    required bool isActive,
  }) = _DoctorScheduleImpl;

  factory DoctorSchedule.fromJson(Map<String, dynamic> jsonSerialization) {
    return DoctorSchedule(
      id: jsonSerialization['id'] as int?,
      doctorId: jsonSerialization['doctorId'] as int,
      dayOfWeek: jsonSerialization['dayOfWeek'] as int,
      startTime: jsonSerialization['startTime'] as String,
      endTime: jsonSerialization['endTime'] as String,
      slotDurationMinutes: jsonSerialization['slotDurationMinutes'] as int,
      maxPatients: jsonSerialization['maxPatients'] as int,
      isActive: jsonSerialization['isActive'] as bool,
    );
  }

  static final t = DoctorScheduleTable();

  static const db = DoctorScheduleRepository._();

  @override
  int? id;

  int doctorId;

  int dayOfWeek;

  String startTime;

  String endTime;

  int slotDurationMinutes;

  int maxPatients;

  bool isActive;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [DoctorSchedule]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  DoctorSchedule copyWith({
    int? id,
    int? doctorId,
    int? dayOfWeek,
    String? startTime,
    String? endTime,
    int? slotDurationMinutes,
    int? maxPatients,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'DoctorSchedule',
      if (id != null) 'id': id,
      'doctorId': doctorId,
      'dayOfWeek': dayOfWeek,
      'startTime': startTime,
      'endTime': endTime,
      'slotDurationMinutes': slotDurationMinutes,
      'maxPatients': maxPatients,
      'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'DoctorSchedule',
      if (id != null) 'id': id,
      'doctorId': doctorId,
      'dayOfWeek': dayOfWeek,
      'startTime': startTime,
      'endTime': endTime,
      'slotDurationMinutes': slotDurationMinutes,
      'maxPatients': maxPatients,
      'isActive': isActive,
    };
  }

  static DoctorScheduleInclude include() {
    return DoctorScheduleInclude._();
  }

  static DoctorScheduleIncludeList includeList({
    _i1.WhereExpressionBuilder<DoctorScheduleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DoctorScheduleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DoctorScheduleTable>? orderByList,
    DoctorScheduleInclude? include,
  }) {
    return DoctorScheduleIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(DoctorSchedule.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(DoctorSchedule.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DoctorScheduleImpl extends DoctorSchedule {
  _DoctorScheduleImpl({
    int? id,
    required int doctorId,
    required int dayOfWeek,
    required String startTime,
    required String endTime,
    required int slotDurationMinutes,
    required int maxPatients,
    required bool isActive,
  }) : super._(
         id: id,
         doctorId: doctorId,
         dayOfWeek: dayOfWeek,
         startTime: startTime,
         endTime: endTime,
         slotDurationMinutes: slotDurationMinutes,
         maxPatients: maxPatients,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [DoctorSchedule]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  DoctorSchedule copyWith({
    Object? id = _Undefined,
    int? doctorId,
    int? dayOfWeek,
    String? startTime,
    String? endTime,
    int? slotDurationMinutes,
    int? maxPatients,
    bool? isActive,
  }) {
    return DoctorSchedule(
      id: id is int? ? id : this.id,
      doctorId: doctorId ?? this.doctorId,
      dayOfWeek: dayOfWeek ?? this.dayOfWeek,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      slotDurationMinutes: slotDurationMinutes ?? this.slotDurationMinutes,
      maxPatients: maxPatients ?? this.maxPatients,
      isActive: isActive ?? this.isActive,
    );
  }
}

class DoctorScheduleUpdateTable extends _i1.UpdateTable<DoctorScheduleTable> {
  DoctorScheduleUpdateTable(super.table);

  _i1.ColumnValue<int, int> doctorId(int value) => _i1.ColumnValue(
    table.doctorId,
    value,
  );

  _i1.ColumnValue<int, int> dayOfWeek(int value) => _i1.ColumnValue(
    table.dayOfWeek,
    value,
  );

  _i1.ColumnValue<String, String> startTime(String value) => _i1.ColumnValue(
    table.startTime,
    value,
  );

  _i1.ColumnValue<String, String> endTime(String value) => _i1.ColumnValue(
    table.endTime,
    value,
  );

  _i1.ColumnValue<int, int> slotDurationMinutes(int value) => _i1.ColumnValue(
    table.slotDurationMinutes,
    value,
  );

  _i1.ColumnValue<int, int> maxPatients(int value) => _i1.ColumnValue(
    table.maxPatients,
    value,
  );

  _i1.ColumnValue<bool, bool> isActive(bool value) => _i1.ColumnValue(
    table.isActive,
    value,
  );
}

class DoctorScheduleTable extends _i1.Table<int?> {
  DoctorScheduleTable({super.tableRelation})
    : super(tableName: 'doctor_schedules') {
    updateTable = DoctorScheduleUpdateTable(this);
    doctorId = _i1.ColumnInt(
      'doctorId',
      this,
    );
    dayOfWeek = _i1.ColumnInt(
      'dayOfWeek',
      this,
    );
    startTime = _i1.ColumnString(
      'startTime',
      this,
    );
    endTime = _i1.ColumnString(
      'endTime',
      this,
    );
    slotDurationMinutes = _i1.ColumnInt(
      'slotDurationMinutes',
      this,
    );
    maxPatients = _i1.ColumnInt(
      'maxPatients',
      this,
    );
    isActive = _i1.ColumnBool(
      'isActive',
      this,
    );
  }

  late final DoctorScheduleUpdateTable updateTable;

  late final _i1.ColumnInt doctorId;

  late final _i1.ColumnInt dayOfWeek;

  late final _i1.ColumnString startTime;

  late final _i1.ColumnString endTime;

  late final _i1.ColumnInt slotDurationMinutes;

  late final _i1.ColumnInt maxPatients;

  late final _i1.ColumnBool isActive;

  @override
  List<_i1.Column> get columns => [
    id,
    doctorId,
    dayOfWeek,
    startTime,
    endTime,
    slotDurationMinutes,
    maxPatients,
    isActive,
  ];
}

class DoctorScheduleInclude extends _i1.IncludeObject {
  DoctorScheduleInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => DoctorSchedule.t;
}

class DoctorScheduleIncludeList extends _i1.IncludeList {
  DoctorScheduleIncludeList._({
    _i1.WhereExpressionBuilder<DoctorScheduleTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(DoctorSchedule.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => DoctorSchedule.t;
}

class DoctorScheduleRepository {
  const DoctorScheduleRepository._();

  /// Returns a list of [DoctorSchedule]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<DoctorSchedule>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DoctorScheduleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DoctorScheduleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DoctorScheduleTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<DoctorSchedule>(
      where: where?.call(DoctorSchedule.t),
      orderBy: orderBy?.call(DoctorSchedule.t),
      orderByList: orderByList?.call(DoctorSchedule.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [DoctorSchedule] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<DoctorSchedule?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DoctorScheduleTable>? where,
    int? offset,
    _i1.OrderByBuilder<DoctorScheduleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DoctorScheduleTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<DoctorSchedule>(
      where: where?.call(DoctorSchedule.t),
      orderBy: orderBy?.call(DoctorSchedule.t),
      orderByList: orderByList?.call(DoctorSchedule.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [DoctorSchedule] by its [id] or null if no such row exists.
  Future<DoctorSchedule?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<DoctorSchedule>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [DoctorSchedule]s in the list and returns the inserted rows.
  ///
  /// The returned [DoctorSchedule]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<DoctorSchedule>> insert(
    _i1.Session session,
    List<DoctorSchedule> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<DoctorSchedule>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [DoctorSchedule] and returns the inserted row.
  ///
  /// The returned [DoctorSchedule] will have its `id` field set.
  Future<DoctorSchedule> insertRow(
    _i1.Session session,
    DoctorSchedule row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<DoctorSchedule>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [DoctorSchedule]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<DoctorSchedule>> update(
    _i1.Session session,
    List<DoctorSchedule> rows, {
    _i1.ColumnSelections<DoctorScheduleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<DoctorSchedule>(
      rows,
      columns: columns?.call(DoctorSchedule.t),
      transaction: transaction,
    );
  }

  /// Updates a single [DoctorSchedule]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<DoctorSchedule> updateRow(
    _i1.Session session,
    DoctorSchedule row, {
    _i1.ColumnSelections<DoctorScheduleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<DoctorSchedule>(
      row,
      columns: columns?.call(DoctorSchedule.t),
      transaction: transaction,
    );
  }

  /// Updates a single [DoctorSchedule] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<DoctorSchedule?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<DoctorScheduleUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<DoctorSchedule>(
      id,
      columnValues: columnValues(DoctorSchedule.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [DoctorSchedule]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<DoctorSchedule>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<DoctorScheduleUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<DoctorScheduleTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DoctorScheduleTable>? orderBy,
    _i1.OrderByListBuilder<DoctorScheduleTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<DoctorSchedule>(
      columnValues: columnValues(DoctorSchedule.t.updateTable),
      where: where(DoctorSchedule.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(DoctorSchedule.t),
      orderByList: orderByList?.call(DoctorSchedule.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [DoctorSchedule]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<DoctorSchedule>> delete(
    _i1.Session session,
    List<DoctorSchedule> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<DoctorSchedule>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [DoctorSchedule].
  Future<DoctorSchedule> deleteRow(
    _i1.Session session,
    DoctorSchedule row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<DoctorSchedule>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<DoctorSchedule>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DoctorScheduleTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<DoctorSchedule>(
      where: where(DoctorSchedule.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DoctorScheduleTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<DoctorSchedule>(
      where: where?.call(DoctorSchedule.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
