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

abstract class ChatRoom
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  ChatRoom._({
    this.id,
    required this.patientId,
    required this.doctorId,
    this.appointmentId,
    required this.type,
    required this.status,
    required this.startedAt,
    this.endedAt,
    required this.createdAt,
  });

  factory ChatRoom({
    int? id,
    required int patientId,
    required int doctorId,
    int? appointmentId,
    required String type,
    required String status,
    required DateTime startedAt,
    DateTime? endedAt,
    required DateTime createdAt,
  }) = _ChatRoomImpl;

  factory ChatRoom.fromJson(Map<String, dynamic> jsonSerialization) {
    return ChatRoom(
      id: jsonSerialization['id'] as int?,
      patientId: jsonSerialization['patientId'] as int,
      doctorId: jsonSerialization['doctorId'] as int,
      appointmentId: jsonSerialization['appointmentId'] as int?,
      type: jsonSerialization['type'] as String,
      status: jsonSerialization['status'] as String,
      startedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['startedAt'],
      ),
      endedAt: jsonSerialization['endedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['endedAt']),
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
    );
  }

  static final t = ChatRoomTable();

  static const db = ChatRoomRepository._();

  @override
  int? id;

  int patientId;

  int doctorId;

  int? appointmentId;

  String type;

  String status;

  DateTime startedAt;

  DateTime? endedAt;

  DateTime createdAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [ChatRoom]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ChatRoom copyWith({
    int? id,
    int? patientId,
    int? doctorId,
    int? appointmentId,
    String? type,
    String? status,
    DateTime? startedAt,
    DateTime? endedAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ChatRoom',
      if (id != null) 'id': id,
      'patientId': patientId,
      'doctorId': doctorId,
      if (appointmentId != null) 'appointmentId': appointmentId,
      'type': type,
      'status': status,
      'startedAt': startedAt.toJson(),
      if (endedAt != null) 'endedAt': endedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ChatRoom',
      if (id != null) 'id': id,
      'patientId': patientId,
      'doctorId': doctorId,
      if (appointmentId != null) 'appointmentId': appointmentId,
      'type': type,
      'status': status,
      'startedAt': startedAt.toJson(),
      if (endedAt != null) 'endedAt': endedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static ChatRoomInclude include() {
    return ChatRoomInclude._();
  }

  static ChatRoomIncludeList includeList({
    _i1.WhereExpressionBuilder<ChatRoomTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ChatRoomTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ChatRoomTable>? orderByList,
    ChatRoomInclude? include,
  }) {
    return ChatRoomIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ChatRoom.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ChatRoom.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ChatRoomImpl extends ChatRoom {
  _ChatRoomImpl({
    int? id,
    required int patientId,
    required int doctorId,
    int? appointmentId,
    required String type,
    required String status,
    required DateTime startedAt,
    DateTime? endedAt,
    required DateTime createdAt,
  }) : super._(
         id: id,
         patientId: patientId,
         doctorId: doctorId,
         appointmentId: appointmentId,
         type: type,
         status: status,
         startedAt: startedAt,
         endedAt: endedAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [ChatRoom]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  ChatRoom copyWith({
    Object? id = _Undefined,
    int? patientId,
    int? doctorId,
    Object? appointmentId = _Undefined,
    String? type,
    String? status,
    DateTime? startedAt,
    Object? endedAt = _Undefined,
    DateTime? createdAt,
  }) {
    return ChatRoom(
      id: id is int? ? id : this.id,
      patientId: patientId ?? this.patientId,
      doctorId: doctorId ?? this.doctorId,
      appointmentId: appointmentId is int? ? appointmentId : this.appointmentId,
      type: type ?? this.type,
      status: status ?? this.status,
      startedAt: startedAt ?? this.startedAt,
      endedAt: endedAt is DateTime? ? endedAt : this.endedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class ChatRoomUpdateTable extends _i1.UpdateTable<ChatRoomTable> {
  ChatRoomUpdateTable(super.table);

  _i1.ColumnValue<int, int> patientId(int value) => _i1.ColumnValue(
    table.patientId,
    value,
  );

  _i1.ColumnValue<int, int> doctorId(int value) => _i1.ColumnValue(
    table.doctorId,
    value,
  );

  _i1.ColumnValue<int, int> appointmentId(int? value) => _i1.ColumnValue(
    table.appointmentId,
    value,
  );

  _i1.ColumnValue<String, String> type(String value) => _i1.ColumnValue(
    table.type,
    value,
  );

  _i1.ColumnValue<String, String> status(String value) => _i1.ColumnValue(
    table.status,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> startedAt(DateTime value) =>
      _i1.ColumnValue(
        table.startedAt,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> endedAt(DateTime? value) =>
      _i1.ColumnValue(
        table.endedAt,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );
}

class ChatRoomTable extends _i1.Table<int?> {
  ChatRoomTable({super.tableRelation}) : super(tableName: 'chat_rooms') {
    updateTable = ChatRoomUpdateTable(this);
    patientId = _i1.ColumnInt(
      'patientId',
      this,
    );
    doctorId = _i1.ColumnInt(
      'doctorId',
      this,
    );
    appointmentId = _i1.ColumnInt(
      'appointmentId',
      this,
    );
    type = _i1.ColumnString(
      'type',
      this,
    );
    status = _i1.ColumnString(
      'status',
      this,
    );
    startedAt = _i1.ColumnDateTime(
      'startedAt',
      this,
    );
    endedAt = _i1.ColumnDateTime(
      'endedAt',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final ChatRoomUpdateTable updateTable;

  late final _i1.ColumnInt patientId;

  late final _i1.ColumnInt doctorId;

  late final _i1.ColumnInt appointmentId;

  late final _i1.ColumnString type;

  late final _i1.ColumnString status;

  late final _i1.ColumnDateTime startedAt;

  late final _i1.ColumnDateTime endedAt;

  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
    id,
    patientId,
    doctorId,
    appointmentId,
    type,
    status,
    startedAt,
    endedAt,
    createdAt,
  ];
}

class ChatRoomInclude extends _i1.IncludeObject {
  ChatRoomInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => ChatRoom.t;
}

class ChatRoomIncludeList extends _i1.IncludeList {
  ChatRoomIncludeList._({
    _i1.WhereExpressionBuilder<ChatRoomTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ChatRoom.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => ChatRoom.t;
}

class ChatRoomRepository {
  const ChatRoomRepository._();

  /// Returns a list of [ChatRoom]s matching the given query parameters.
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
  Future<List<ChatRoom>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ChatRoomTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ChatRoomTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ChatRoomTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<ChatRoom>(
      where: where?.call(ChatRoom.t),
      orderBy: orderBy?.call(ChatRoom.t),
      orderByList: orderByList?.call(ChatRoom.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [ChatRoom] matching the given query parameters.
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
  Future<ChatRoom?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ChatRoomTable>? where,
    int? offset,
    _i1.OrderByBuilder<ChatRoomTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ChatRoomTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<ChatRoom>(
      where: where?.call(ChatRoom.t),
      orderBy: orderBy?.call(ChatRoom.t),
      orderByList: orderByList?.call(ChatRoom.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [ChatRoom] by its [id] or null if no such row exists.
  Future<ChatRoom?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<ChatRoom>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [ChatRoom]s in the list and returns the inserted rows.
  ///
  /// The returned [ChatRoom]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<ChatRoom>> insert(
    _i1.Session session,
    List<ChatRoom> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<ChatRoom>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [ChatRoom] and returns the inserted row.
  ///
  /// The returned [ChatRoom] will have its `id` field set.
  Future<ChatRoom> insertRow(
    _i1.Session session,
    ChatRoom row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<ChatRoom>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [ChatRoom]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<ChatRoom>> update(
    _i1.Session session,
    List<ChatRoom> rows, {
    _i1.ColumnSelections<ChatRoomTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<ChatRoom>(
      rows,
      columns: columns?.call(ChatRoom.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ChatRoom]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ChatRoom> updateRow(
    _i1.Session session,
    ChatRoom row, {
    _i1.ColumnSelections<ChatRoomTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<ChatRoom>(
      row,
      columns: columns?.call(ChatRoom.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ChatRoom] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ChatRoom?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<ChatRoomUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<ChatRoom>(
      id,
      columnValues: columnValues(ChatRoom.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ChatRoom]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<ChatRoom>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<ChatRoomUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<ChatRoomTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ChatRoomTable>? orderBy,
    _i1.OrderByListBuilder<ChatRoomTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<ChatRoom>(
      columnValues: columnValues(ChatRoom.t.updateTable),
      where: where(ChatRoom.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ChatRoom.t),
      orderByList: orderByList?.call(ChatRoom.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [ChatRoom]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<ChatRoom>> delete(
    _i1.Session session,
    List<ChatRoom> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ChatRoom>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [ChatRoom].
  Future<ChatRoom> deleteRow(
    _i1.Session session,
    ChatRoom row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ChatRoom>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<ChatRoom>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ChatRoomTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<ChatRoom>(
      where: where(ChatRoom.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ChatRoomTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ChatRoom>(
      where: where?.call(ChatRoom.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
