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

abstract class Prescription
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Prescription._({
    this.id,
    required this.medicalRecordId,
    required this.patientId,
    required this.doctorId,
    required this.prescriptionNumber,
    required this.prescriptionDate,
    required this.status,
    required this.totalAmount,
    required this.paymentStatus,
    this.notes,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Prescription({
    int? id,
    required int medicalRecordId,
    required int patientId,
    required int doctorId,
    required String prescriptionNumber,
    required DateTime prescriptionDate,
    required String status,
    required double totalAmount,
    required String paymentStatus,
    String? notes,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _PrescriptionImpl;

  factory Prescription.fromJson(Map<String, dynamic> jsonSerialization) {
    return Prescription(
      id: jsonSerialization['id'] as int?,
      medicalRecordId: jsonSerialization['medicalRecordId'] as int,
      patientId: jsonSerialization['patientId'] as int,
      doctorId: jsonSerialization['doctorId'] as int,
      prescriptionNumber: jsonSerialization['prescriptionNumber'] as String,
      prescriptionDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['prescriptionDate'],
      ),
      status: jsonSerialization['status'] as String,
      totalAmount: (jsonSerialization['totalAmount'] as num).toDouble(),
      paymentStatus: jsonSerialization['paymentStatus'] as String,
      notes: jsonSerialization['notes'] as String?,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = PrescriptionTable();

  static const db = PrescriptionRepository._();

  @override
  int? id;

  int medicalRecordId;

  int patientId;

  int doctorId;

  String prescriptionNumber;

  DateTime prescriptionDate;

  String status;

  double totalAmount;

  String paymentStatus;

  String? notes;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Prescription]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Prescription copyWith({
    int? id,
    int? medicalRecordId,
    int? patientId,
    int? doctorId,
    String? prescriptionNumber,
    DateTime? prescriptionDate,
    String? status,
    double? totalAmount,
    String? paymentStatus,
    String? notes,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Prescription',
      if (id != null) 'id': id,
      'medicalRecordId': medicalRecordId,
      'patientId': patientId,
      'doctorId': doctorId,
      'prescriptionNumber': prescriptionNumber,
      'prescriptionDate': prescriptionDate.toJson(),
      'status': status,
      'totalAmount': totalAmount,
      'paymentStatus': paymentStatus,
      if (notes != null) 'notes': notes,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Prescription',
      if (id != null) 'id': id,
      'medicalRecordId': medicalRecordId,
      'patientId': patientId,
      'doctorId': doctorId,
      'prescriptionNumber': prescriptionNumber,
      'prescriptionDate': prescriptionDate.toJson(),
      'status': status,
      'totalAmount': totalAmount,
      'paymentStatus': paymentStatus,
      if (notes != null) 'notes': notes,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static PrescriptionInclude include() {
    return PrescriptionInclude._();
  }

  static PrescriptionIncludeList includeList({
    _i1.WhereExpressionBuilder<PrescriptionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrescriptionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrescriptionTable>? orderByList,
    PrescriptionInclude? include,
  }) {
    return PrescriptionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Prescription.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Prescription.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PrescriptionImpl extends Prescription {
  _PrescriptionImpl({
    int? id,
    required int medicalRecordId,
    required int patientId,
    required int doctorId,
    required String prescriptionNumber,
    required DateTime prescriptionDate,
    required String status,
    required double totalAmount,
    required String paymentStatus,
    String? notes,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         medicalRecordId: medicalRecordId,
         patientId: patientId,
         doctorId: doctorId,
         prescriptionNumber: prescriptionNumber,
         prescriptionDate: prescriptionDate,
         status: status,
         totalAmount: totalAmount,
         paymentStatus: paymentStatus,
         notes: notes,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [Prescription]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Prescription copyWith({
    Object? id = _Undefined,
    int? medicalRecordId,
    int? patientId,
    int? doctorId,
    String? prescriptionNumber,
    DateTime? prescriptionDate,
    String? status,
    double? totalAmount,
    String? paymentStatus,
    Object? notes = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Prescription(
      id: id is int? ? id : this.id,
      medicalRecordId: medicalRecordId ?? this.medicalRecordId,
      patientId: patientId ?? this.patientId,
      doctorId: doctorId ?? this.doctorId,
      prescriptionNumber: prescriptionNumber ?? this.prescriptionNumber,
      prescriptionDate: prescriptionDate ?? this.prescriptionDate,
      status: status ?? this.status,
      totalAmount: totalAmount ?? this.totalAmount,
      paymentStatus: paymentStatus ?? this.paymentStatus,
      notes: notes is String? ? notes : this.notes,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class PrescriptionUpdateTable extends _i1.UpdateTable<PrescriptionTable> {
  PrescriptionUpdateTable(super.table);

  _i1.ColumnValue<int, int> medicalRecordId(int value) => _i1.ColumnValue(
    table.medicalRecordId,
    value,
  );

  _i1.ColumnValue<int, int> patientId(int value) => _i1.ColumnValue(
    table.patientId,
    value,
  );

  _i1.ColumnValue<int, int> doctorId(int value) => _i1.ColumnValue(
    table.doctorId,
    value,
  );

  _i1.ColumnValue<String, String> prescriptionNumber(String value) =>
      _i1.ColumnValue(
        table.prescriptionNumber,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> prescriptionDate(DateTime value) =>
      _i1.ColumnValue(
        table.prescriptionDate,
        value,
      );

  _i1.ColumnValue<String, String> status(String value) => _i1.ColumnValue(
    table.status,
    value,
  );

  _i1.ColumnValue<double, double> totalAmount(double value) => _i1.ColumnValue(
    table.totalAmount,
    value,
  );

  _i1.ColumnValue<String, String> paymentStatus(String value) =>
      _i1.ColumnValue(
        table.paymentStatus,
        value,
      );

  _i1.ColumnValue<String, String> notes(String? value) => _i1.ColumnValue(
    table.notes,
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

class PrescriptionTable extends _i1.Table<int?> {
  PrescriptionTable({super.tableRelation}) : super(tableName: 'prescriptions') {
    updateTable = PrescriptionUpdateTable(this);
    medicalRecordId = _i1.ColumnInt(
      'medicalRecordId',
      this,
    );
    patientId = _i1.ColumnInt(
      'patientId',
      this,
    );
    doctorId = _i1.ColumnInt(
      'doctorId',
      this,
    );
    prescriptionNumber = _i1.ColumnString(
      'prescriptionNumber',
      this,
    );
    prescriptionDate = _i1.ColumnDateTime(
      'prescriptionDate',
      this,
    );
    status = _i1.ColumnString(
      'status',
      this,
    );
    totalAmount = _i1.ColumnDouble(
      'totalAmount',
      this,
    );
    paymentStatus = _i1.ColumnString(
      'paymentStatus',
      this,
    );
    notes = _i1.ColumnString(
      'notes',
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

  late final PrescriptionUpdateTable updateTable;

  late final _i1.ColumnInt medicalRecordId;

  late final _i1.ColumnInt patientId;

  late final _i1.ColumnInt doctorId;

  late final _i1.ColumnString prescriptionNumber;

  late final _i1.ColumnDateTime prescriptionDate;

  late final _i1.ColumnString status;

  late final _i1.ColumnDouble totalAmount;

  late final _i1.ColumnString paymentStatus;

  late final _i1.ColumnString notes;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    medicalRecordId,
    patientId,
    doctorId,
    prescriptionNumber,
    prescriptionDate,
    status,
    totalAmount,
    paymentStatus,
    notes,
    createdAt,
    updatedAt,
  ];
}

class PrescriptionInclude extends _i1.IncludeObject {
  PrescriptionInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Prescription.t;
}

class PrescriptionIncludeList extends _i1.IncludeList {
  PrescriptionIncludeList._({
    _i1.WhereExpressionBuilder<PrescriptionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Prescription.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Prescription.t;
}

class PrescriptionRepository {
  const PrescriptionRepository._();

  /// Returns a list of [Prescription]s matching the given query parameters.
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
  Future<List<Prescription>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrescriptionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrescriptionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrescriptionTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Prescription>(
      where: where?.call(Prescription.t),
      orderBy: orderBy?.call(Prescription.t),
      orderByList: orderByList?.call(Prescription.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Prescription] matching the given query parameters.
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
  Future<Prescription?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrescriptionTable>? where,
    int? offset,
    _i1.OrderByBuilder<PrescriptionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrescriptionTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Prescription>(
      where: where?.call(Prescription.t),
      orderBy: orderBy?.call(Prescription.t),
      orderByList: orderByList?.call(Prescription.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Prescription] by its [id] or null if no such row exists.
  Future<Prescription?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Prescription>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Prescription]s in the list and returns the inserted rows.
  ///
  /// The returned [Prescription]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Prescription>> insert(
    _i1.Session session,
    List<Prescription> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Prescription>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Prescription] and returns the inserted row.
  ///
  /// The returned [Prescription] will have its `id` field set.
  Future<Prescription> insertRow(
    _i1.Session session,
    Prescription row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Prescription>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Prescription]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Prescription>> update(
    _i1.Session session,
    List<Prescription> rows, {
    _i1.ColumnSelections<PrescriptionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Prescription>(
      rows,
      columns: columns?.call(Prescription.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Prescription]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Prescription> updateRow(
    _i1.Session session,
    Prescription row, {
    _i1.ColumnSelections<PrescriptionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Prescription>(
      row,
      columns: columns?.call(Prescription.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Prescription] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Prescription?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<PrescriptionUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Prescription>(
      id,
      columnValues: columnValues(Prescription.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Prescription]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Prescription>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<PrescriptionUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<PrescriptionTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrescriptionTable>? orderBy,
    _i1.OrderByListBuilder<PrescriptionTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Prescription>(
      columnValues: columnValues(Prescription.t.updateTable),
      where: where(Prescription.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Prescription.t),
      orderByList: orderByList?.call(Prescription.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Prescription]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Prescription>> delete(
    _i1.Session session,
    List<Prescription> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Prescription>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Prescription].
  Future<Prescription> deleteRow(
    _i1.Session session,
    Prescription row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Prescription>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Prescription>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrescriptionTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Prescription>(
      where: where(Prescription.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrescriptionTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Prescription>(
      where: where?.call(Prescription.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
