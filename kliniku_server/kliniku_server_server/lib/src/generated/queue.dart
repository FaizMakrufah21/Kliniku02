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

abstract class Queue implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Queue._({
    this.id,
    required this.appointmentId,
    required this.queueNumber,
    required this.queuePrefix,
    required this.queueSequence,
    required this.status,
    this.calledAt,
    this.servedAt,
    this.completedAt,
    this.estimatedWaitMinutes,
  });

  factory Queue({
    int? id,
    required int appointmentId,
    required String queueNumber,
    required String queuePrefix,
    required int queueSequence,
    required String status,
    DateTime? calledAt,
    DateTime? servedAt,
    DateTime? completedAt,
    int? estimatedWaitMinutes,
  }) = _QueueImpl;

  factory Queue.fromJson(Map<String, dynamic> jsonSerialization) {
    return Queue(
      id: jsonSerialization['id'] as int?,
      appointmentId: jsonSerialization['appointmentId'] as int,
      queueNumber: jsonSerialization['queueNumber'] as String,
      queuePrefix: jsonSerialization['queuePrefix'] as String,
      queueSequence: jsonSerialization['queueSequence'] as int,
      status: jsonSerialization['status'] as String,
      calledAt: jsonSerialization['calledAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['calledAt']),
      servedAt: jsonSerialization['servedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['servedAt']),
      completedAt: jsonSerialization['completedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['completedAt'],
            ),
      estimatedWaitMinutes: jsonSerialization['estimatedWaitMinutes'] as int?,
    );
  }

  static final t = QueueTable();

  static const db = QueueRepository._();

  @override
  int? id;

  int appointmentId;

  String queueNumber;

  String queuePrefix;

  int queueSequence;

  String status;

  DateTime? calledAt;

  DateTime? servedAt;

  DateTime? completedAt;

  int? estimatedWaitMinutes;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Queue]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Queue copyWith({
    int? id,
    int? appointmentId,
    String? queueNumber,
    String? queuePrefix,
    int? queueSequence,
    String? status,
    DateTime? calledAt,
    DateTime? servedAt,
    DateTime? completedAt,
    int? estimatedWaitMinutes,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Queue',
      if (id != null) 'id': id,
      'appointmentId': appointmentId,
      'queueNumber': queueNumber,
      'queuePrefix': queuePrefix,
      'queueSequence': queueSequence,
      'status': status,
      if (calledAt != null) 'calledAt': calledAt?.toJson(),
      if (servedAt != null) 'servedAt': servedAt?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      if (estimatedWaitMinutes != null)
        'estimatedWaitMinutes': estimatedWaitMinutes,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Queue',
      if (id != null) 'id': id,
      'appointmentId': appointmentId,
      'queueNumber': queueNumber,
      'queuePrefix': queuePrefix,
      'queueSequence': queueSequence,
      'status': status,
      if (calledAt != null) 'calledAt': calledAt?.toJson(),
      if (servedAt != null) 'servedAt': servedAt?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      if (estimatedWaitMinutes != null)
        'estimatedWaitMinutes': estimatedWaitMinutes,
    };
  }

  static QueueInclude include() {
    return QueueInclude._();
  }

  static QueueIncludeList includeList({
    _i1.WhereExpressionBuilder<QueueTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<QueueTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<QueueTable>? orderByList,
    QueueInclude? include,
  }) {
    return QueueIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Queue.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Queue.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _QueueImpl extends Queue {
  _QueueImpl({
    int? id,
    required int appointmentId,
    required String queueNumber,
    required String queuePrefix,
    required int queueSequence,
    required String status,
    DateTime? calledAt,
    DateTime? servedAt,
    DateTime? completedAt,
    int? estimatedWaitMinutes,
  }) : super._(
         id: id,
         appointmentId: appointmentId,
         queueNumber: queueNumber,
         queuePrefix: queuePrefix,
         queueSequence: queueSequence,
         status: status,
         calledAt: calledAt,
         servedAt: servedAt,
         completedAt: completedAt,
         estimatedWaitMinutes: estimatedWaitMinutes,
       );

  /// Returns a shallow copy of this [Queue]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Queue copyWith({
    Object? id = _Undefined,
    int? appointmentId,
    String? queueNumber,
    String? queuePrefix,
    int? queueSequence,
    String? status,
    Object? calledAt = _Undefined,
    Object? servedAt = _Undefined,
    Object? completedAt = _Undefined,
    Object? estimatedWaitMinutes = _Undefined,
  }) {
    return Queue(
      id: id is int? ? id : this.id,
      appointmentId: appointmentId ?? this.appointmentId,
      queueNumber: queueNumber ?? this.queueNumber,
      queuePrefix: queuePrefix ?? this.queuePrefix,
      queueSequence: queueSequence ?? this.queueSequence,
      status: status ?? this.status,
      calledAt: calledAt is DateTime? ? calledAt : this.calledAt,
      servedAt: servedAt is DateTime? ? servedAt : this.servedAt,
      completedAt: completedAt is DateTime? ? completedAt : this.completedAt,
      estimatedWaitMinutes: estimatedWaitMinutes is int?
          ? estimatedWaitMinutes
          : this.estimatedWaitMinutes,
    );
  }
}

class QueueUpdateTable extends _i1.UpdateTable<QueueTable> {
  QueueUpdateTable(super.table);

  _i1.ColumnValue<int, int> appointmentId(int value) => _i1.ColumnValue(
    table.appointmentId,
    value,
  );

  _i1.ColumnValue<String, String> queueNumber(String value) => _i1.ColumnValue(
    table.queueNumber,
    value,
  );

  _i1.ColumnValue<String, String> queuePrefix(String value) => _i1.ColumnValue(
    table.queuePrefix,
    value,
  );

  _i1.ColumnValue<int, int> queueSequence(int value) => _i1.ColumnValue(
    table.queueSequence,
    value,
  );

  _i1.ColumnValue<String, String> status(String value) => _i1.ColumnValue(
    table.status,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> calledAt(DateTime? value) =>
      _i1.ColumnValue(
        table.calledAt,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> servedAt(DateTime? value) =>
      _i1.ColumnValue(
        table.servedAt,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> completedAt(DateTime? value) =>
      _i1.ColumnValue(
        table.completedAt,
        value,
      );

  _i1.ColumnValue<int, int> estimatedWaitMinutes(int? value) => _i1.ColumnValue(
    table.estimatedWaitMinutes,
    value,
  );
}

class QueueTable extends _i1.Table<int?> {
  QueueTable({super.tableRelation}) : super(tableName: 'queues') {
    updateTable = QueueUpdateTable(this);
    appointmentId = _i1.ColumnInt(
      'appointmentId',
      this,
    );
    queueNumber = _i1.ColumnString(
      'queueNumber',
      this,
    );
    queuePrefix = _i1.ColumnString(
      'queuePrefix',
      this,
    );
    queueSequence = _i1.ColumnInt(
      'queueSequence',
      this,
    );
    status = _i1.ColumnString(
      'status',
      this,
    );
    calledAt = _i1.ColumnDateTime(
      'calledAt',
      this,
    );
    servedAt = _i1.ColumnDateTime(
      'servedAt',
      this,
    );
    completedAt = _i1.ColumnDateTime(
      'completedAt',
      this,
    );
    estimatedWaitMinutes = _i1.ColumnInt(
      'estimatedWaitMinutes',
      this,
    );
  }

  late final QueueUpdateTable updateTable;

  late final _i1.ColumnInt appointmentId;

  late final _i1.ColumnString queueNumber;

  late final _i1.ColumnString queuePrefix;

  late final _i1.ColumnInt queueSequence;

  late final _i1.ColumnString status;

  late final _i1.ColumnDateTime calledAt;

  late final _i1.ColumnDateTime servedAt;

  late final _i1.ColumnDateTime completedAt;

  late final _i1.ColumnInt estimatedWaitMinutes;

  @override
  List<_i1.Column> get columns => [
    id,
    appointmentId,
    queueNumber,
    queuePrefix,
    queueSequence,
    status,
    calledAt,
    servedAt,
    completedAt,
    estimatedWaitMinutes,
  ];
}

class QueueInclude extends _i1.IncludeObject {
  QueueInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Queue.t;
}

class QueueIncludeList extends _i1.IncludeList {
  QueueIncludeList._({
    _i1.WhereExpressionBuilder<QueueTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Queue.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Queue.t;
}

class QueueRepository {
  const QueueRepository._();

  /// Returns a list of [Queue]s matching the given query parameters.
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
  Future<List<Queue>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<QueueTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<QueueTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<QueueTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Queue>(
      where: where?.call(Queue.t),
      orderBy: orderBy?.call(Queue.t),
      orderByList: orderByList?.call(Queue.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Queue] matching the given query parameters.
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
  Future<Queue?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<QueueTable>? where,
    int? offset,
    _i1.OrderByBuilder<QueueTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<QueueTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Queue>(
      where: where?.call(Queue.t),
      orderBy: orderBy?.call(Queue.t),
      orderByList: orderByList?.call(Queue.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Queue] by its [id] or null if no such row exists.
  Future<Queue?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Queue>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Queue]s in the list and returns the inserted rows.
  ///
  /// The returned [Queue]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Queue>> insert(
    _i1.Session session,
    List<Queue> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Queue>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Queue] and returns the inserted row.
  ///
  /// The returned [Queue] will have its `id` field set.
  Future<Queue> insertRow(
    _i1.Session session,
    Queue row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Queue>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Queue]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Queue>> update(
    _i1.Session session,
    List<Queue> rows, {
    _i1.ColumnSelections<QueueTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Queue>(
      rows,
      columns: columns?.call(Queue.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Queue]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Queue> updateRow(
    _i1.Session session,
    Queue row, {
    _i1.ColumnSelections<QueueTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Queue>(
      row,
      columns: columns?.call(Queue.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Queue] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Queue?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<QueueUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Queue>(
      id,
      columnValues: columnValues(Queue.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Queue]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Queue>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<QueueUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<QueueTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<QueueTable>? orderBy,
    _i1.OrderByListBuilder<QueueTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Queue>(
      columnValues: columnValues(Queue.t.updateTable),
      where: where(Queue.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Queue.t),
      orderByList: orderByList?.call(Queue.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Queue]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Queue>> delete(
    _i1.Session session,
    List<Queue> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Queue>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Queue].
  Future<Queue> deleteRow(
    _i1.Session session,
    Queue row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Queue>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Queue>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<QueueTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Queue>(
      where: where(Queue.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<QueueTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Queue>(
      where: where?.call(Queue.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
