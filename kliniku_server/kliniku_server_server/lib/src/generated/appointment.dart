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

abstract class Appointment
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Appointment._({
    this.id,
    required this.patientId,
    required this.doctorId,
    required this.poliId,
    required this.appointmentDate,
    required this.timeSlot,
    required this.type,
    required this.status,
    this.cancellationReason,
    this.notes,
    required this.totalFee,
    required this.paymentStatus,
    this.paymentMethod,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Appointment({
    int? id,
    required int patientId,
    required int doctorId,
    required int poliId,
    required DateTime appointmentDate,
    required String timeSlot,
    required String type,
    required String status,
    String? cancellationReason,
    String? notes,
    required double totalFee,
    required String paymentStatus,
    String? paymentMethod,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _AppointmentImpl;

  factory Appointment.fromJson(Map<String, dynamic> jsonSerialization) {
    return Appointment(
      id: jsonSerialization['id'] as int?,
      patientId: jsonSerialization['patientId'] as int,
      doctorId: jsonSerialization['doctorId'] as int,
      poliId: jsonSerialization['poliId'] as int,
      appointmentDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['appointmentDate'],
      ),
      timeSlot: jsonSerialization['timeSlot'] as String,
      type: jsonSerialization['type'] as String,
      status: jsonSerialization['status'] as String,
      cancellationReason: jsonSerialization['cancellationReason'] as String?,
      notes: jsonSerialization['notes'] as String?,
      totalFee: (jsonSerialization['totalFee'] as num).toDouble(),
      paymentStatus: jsonSerialization['paymentStatus'] as String,
      paymentMethod: jsonSerialization['paymentMethod'] as String?,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = AppointmentTable();

  static const db = AppointmentRepository._();

  @override
  int? id;

  int patientId;

  int doctorId;

  int poliId;

  DateTime appointmentDate;

  String timeSlot;

  String type;

  String status;

  String? cancellationReason;

  String? notes;

  double totalFee;

  String paymentStatus;

  String? paymentMethod;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Appointment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Appointment copyWith({
    int? id,
    int? patientId,
    int? doctorId,
    int? poliId,
    DateTime? appointmentDate,
    String? timeSlot,
    String? type,
    String? status,
    String? cancellationReason,
    String? notes,
    double? totalFee,
    String? paymentStatus,
    String? paymentMethod,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Appointment',
      if (id != null) 'id': id,
      'patientId': patientId,
      'doctorId': doctorId,
      'poliId': poliId,
      'appointmentDate': appointmentDate.toJson(),
      'timeSlot': timeSlot,
      'type': type,
      'status': status,
      if (cancellationReason != null) 'cancellationReason': cancellationReason,
      if (notes != null) 'notes': notes,
      'totalFee': totalFee,
      'paymentStatus': paymentStatus,
      if (paymentMethod != null) 'paymentMethod': paymentMethod,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Appointment',
      if (id != null) 'id': id,
      'patientId': patientId,
      'doctorId': doctorId,
      'poliId': poliId,
      'appointmentDate': appointmentDate.toJson(),
      'timeSlot': timeSlot,
      'type': type,
      'status': status,
      if (cancellationReason != null) 'cancellationReason': cancellationReason,
      if (notes != null) 'notes': notes,
      'totalFee': totalFee,
      'paymentStatus': paymentStatus,
      if (paymentMethod != null) 'paymentMethod': paymentMethod,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static AppointmentInclude include() {
    return AppointmentInclude._();
  }

  static AppointmentIncludeList includeList({
    _i1.WhereExpressionBuilder<AppointmentTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AppointmentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AppointmentTable>? orderByList,
    AppointmentInclude? include,
  }) {
    return AppointmentIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Appointment.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Appointment.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AppointmentImpl extends Appointment {
  _AppointmentImpl({
    int? id,
    required int patientId,
    required int doctorId,
    required int poliId,
    required DateTime appointmentDate,
    required String timeSlot,
    required String type,
    required String status,
    String? cancellationReason,
    String? notes,
    required double totalFee,
    required String paymentStatus,
    String? paymentMethod,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         patientId: patientId,
         doctorId: doctorId,
         poliId: poliId,
         appointmentDate: appointmentDate,
         timeSlot: timeSlot,
         type: type,
         status: status,
         cancellationReason: cancellationReason,
         notes: notes,
         totalFee: totalFee,
         paymentStatus: paymentStatus,
         paymentMethod: paymentMethod,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [Appointment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Appointment copyWith({
    Object? id = _Undefined,
    int? patientId,
    int? doctorId,
    int? poliId,
    DateTime? appointmentDate,
    String? timeSlot,
    String? type,
    String? status,
    Object? cancellationReason = _Undefined,
    Object? notes = _Undefined,
    double? totalFee,
    String? paymentStatus,
    Object? paymentMethod = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Appointment(
      id: id is int? ? id : this.id,
      patientId: patientId ?? this.patientId,
      doctorId: doctorId ?? this.doctorId,
      poliId: poliId ?? this.poliId,
      appointmentDate: appointmentDate ?? this.appointmentDate,
      timeSlot: timeSlot ?? this.timeSlot,
      type: type ?? this.type,
      status: status ?? this.status,
      cancellationReason: cancellationReason is String?
          ? cancellationReason
          : this.cancellationReason,
      notes: notes is String? ? notes : this.notes,
      totalFee: totalFee ?? this.totalFee,
      paymentStatus: paymentStatus ?? this.paymentStatus,
      paymentMethod: paymentMethod is String?
          ? paymentMethod
          : this.paymentMethod,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class AppointmentUpdateTable extends _i1.UpdateTable<AppointmentTable> {
  AppointmentUpdateTable(super.table);

  _i1.ColumnValue<int, int> patientId(int value) => _i1.ColumnValue(
    table.patientId,
    value,
  );

  _i1.ColumnValue<int, int> doctorId(int value) => _i1.ColumnValue(
    table.doctorId,
    value,
  );

  _i1.ColumnValue<int, int> poliId(int value) => _i1.ColumnValue(
    table.poliId,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> appointmentDate(DateTime value) =>
      _i1.ColumnValue(
        table.appointmentDate,
        value,
      );

  _i1.ColumnValue<String, String> timeSlot(String value) => _i1.ColumnValue(
    table.timeSlot,
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

  _i1.ColumnValue<String, String> cancellationReason(String? value) =>
      _i1.ColumnValue(
        table.cancellationReason,
        value,
      );

  _i1.ColumnValue<String, String> notes(String? value) => _i1.ColumnValue(
    table.notes,
    value,
  );

  _i1.ColumnValue<double, double> totalFee(double value) => _i1.ColumnValue(
    table.totalFee,
    value,
  );

  _i1.ColumnValue<String, String> paymentStatus(String value) =>
      _i1.ColumnValue(
        table.paymentStatus,
        value,
      );

  _i1.ColumnValue<String, String> paymentMethod(String? value) =>
      _i1.ColumnValue(
        table.paymentMethod,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> updatedAt(DateTime value) =>
      _i1.ColumnValue(
        table.updatedAt,
        value,
      );
}

class AppointmentTable extends _i1.Table<int?> {
  AppointmentTable({super.tableRelation}) : super(tableName: 'appointments') {
    updateTable = AppointmentUpdateTable(this);
    patientId = _i1.ColumnInt(
      'patientId',
      this,
    );
    doctorId = _i1.ColumnInt(
      'doctorId',
      this,
    );
    poliId = _i1.ColumnInt(
      'poliId',
      this,
    );
    appointmentDate = _i1.ColumnDateTime(
      'appointmentDate',
      this,
    );
    timeSlot = _i1.ColumnString(
      'timeSlot',
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
    cancellationReason = _i1.ColumnString(
      'cancellationReason',
      this,
    );
    notes = _i1.ColumnString(
      'notes',
      this,
    );
    totalFee = _i1.ColumnDouble(
      'totalFee',
      this,
    );
    paymentStatus = _i1.ColumnString(
      'paymentStatus',
      this,
    );
    paymentMethod = _i1.ColumnString(
      'paymentMethod',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _i1.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final AppointmentUpdateTable updateTable;

  late final _i1.ColumnInt patientId;

  late final _i1.ColumnInt doctorId;

  late final _i1.ColumnInt poliId;

  late final _i1.ColumnDateTime appointmentDate;

  late final _i1.ColumnString timeSlot;

  late final _i1.ColumnString type;

  late final _i1.ColumnString status;

  late final _i1.ColumnString cancellationReason;

  late final _i1.ColumnString notes;

  late final _i1.ColumnDouble totalFee;

  late final _i1.ColumnString paymentStatus;

  late final _i1.ColumnString paymentMethod;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    patientId,
    doctorId,
    poliId,
    appointmentDate,
    timeSlot,
    type,
    status,
    cancellationReason,
    notes,
    totalFee,
    paymentStatus,
    paymentMethod,
    createdAt,
    updatedAt,
  ];
}

class AppointmentInclude extends _i1.IncludeObject {
  AppointmentInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Appointment.t;
}

class AppointmentIncludeList extends _i1.IncludeList {
  AppointmentIncludeList._({
    _i1.WhereExpressionBuilder<AppointmentTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Appointment.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Appointment.t;
}

class AppointmentRepository {
  const AppointmentRepository._();

  /// Returns a list of [Appointment]s matching the given query parameters.
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
  Future<List<Appointment>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AppointmentTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AppointmentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AppointmentTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Appointment>(
      where: where?.call(Appointment.t),
      orderBy: orderBy?.call(Appointment.t),
      orderByList: orderByList?.call(Appointment.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Appointment] matching the given query parameters.
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
  Future<Appointment?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AppointmentTable>? where,
    int? offset,
    _i1.OrderByBuilder<AppointmentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AppointmentTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Appointment>(
      where: where?.call(Appointment.t),
      orderBy: orderBy?.call(Appointment.t),
      orderByList: orderByList?.call(Appointment.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Appointment] by its [id] or null if no such row exists.
  Future<Appointment?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Appointment>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Appointment]s in the list and returns the inserted rows.
  ///
  /// The returned [Appointment]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Appointment>> insert(
    _i1.Session session,
    List<Appointment> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Appointment>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Appointment] and returns the inserted row.
  ///
  /// The returned [Appointment] will have its `id` field set.
  Future<Appointment> insertRow(
    _i1.Session session,
    Appointment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Appointment>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Appointment]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Appointment>> update(
    _i1.Session session,
    List<Appointment> rows, {
    _i1.ColumnSelections<AppointmentTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Appointment>(
      rows,
      columns: columns?.call(Appointment.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Appointment]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Appointment> updateRow(
    _i1.Session session,
    Appointment row, {
    _i1.ColumnSelections<AppointmentTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Appointment>(
      row,
      columns: columns?.call(Appointment.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Appointment] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Appointment?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<AppointmentUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Appointment>(
      id,
      columnValues: columnValues(Appointment.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Appointment]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Appointment>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<AppointmentUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<AppointmentTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AppointmentTable>? orderBy,
    _i1.OrderByListBuilder<AppointmentTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Appointment>(
      columnValues: columnValues(Appointment.t.updateTable),
      where: where(Appointment.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Appointment.t),
      orderByList: orderByList?.call(Appointment.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Appointment]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Appointment>> delete(
    _i1.Session session,
    List<Appointment> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Appointment>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Appointment].
  Future<Appointment> deleteRow(
    _i1.Session session,
    Appointment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Appointment>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Appointment>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<AppointmentTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Appointment>(
      where: where(Appointment.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AppointmentTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Appointment>(
      where: where?.call(Appointment.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
