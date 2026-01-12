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

abstract class MedicalRecord
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  MedicalRecord._({
    this.id,
    required this.appointmentId,
    required this.patientId,
    required this.doctorId,
    required this.recordDate,
    required this.chiefComplaint,
    this.presentIllness,
    this.physicalExamination,
    this.vitalSigns,
    required this.diagnosis,
    this.icdCode,
    this.treatmentPlan,
    this.notes,
    required this.createdAt,
    required this.updatedAt,
  });

  factory MedicalRecord({
    int? id,
    required int appointmentId,
    required int patientId,
    required int doctorId,
    required DateTime recordDate,
    required String chiefComplaint,
    String? presentIllness,
    String? physicalExamination,
    String? vitalSigns,
    required String diagnosis,
    String? icdCode,
    String? treatmentPlan,
    String? notes,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _MedicalRecordImpl;

  factory MedicalRecord.fromJson(Map<String, dynamic> jsonSerialization) {
    return MedicalRecord(
      id: jsonSerialization['id'] as int?,
      appointmentId: jsonSerialization['appointmentId'] as int,
      patientId: jsonSerialization['patientId'] as int,
      doctorId: jsonSerialization['doctorId'] as int,
      recordDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['recordDate'],
      ),
      chiefComplaint: jsonSerialization['chiefComplaint'] as String,
      presentIllness: jsonSerialization['presentIllness'] as String?,
      physicalExamination: jsonSerialization['physicalExamination'] as String?,
      vitalSigns: jsonSerialization['vitalSigns'] as String?,
      diagnosis: jsonSerialization['diagnosis'] as String,
      icdCode: jsonSerialization['icdCode'] as String?,
      treatmentPlan: jsonSerialization['treatmentPlan'] as String?,
      notes: jsonSerialization['notes'] as String?,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = MedicalRecordTable();

  static const db = MedicalRecordRepository._();

  @override
  int? id;

  int appointmentId;

  int patientId;

  int doctorId;

  DateTime recordDate;

  String chiefComplaint;

  String? presentIllness;

  String? physicalExamination;

  String? vitalSigns;

  String diagnosis;

  String? icdCode;

  String? treatmentPlan;

  String? notes;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [MedicalRecord]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  MedicalRecord copyWith({
    int? id,
    int? appointmentId,
    int? patientId,
    int? doctorId,
    DateTime? recordDate,
    String? chiefComplaint,
    String? presentIllness,
    String? physicalExamination,
    String? vitalSigns,
    String? diagnosis,
    String? icdCode,
    String? treatmentPlan,
    String? notes,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'MedicalRecord',
      if (id != null) 'id': id,
      'appointmentId': appointmentId,
      'patientId': patientId,
      'doctorId': doctorId,
      'recordDate': recordDate.toJson(),
      'chiefComplaint': chiefComplaint,
      if (presentIllness != null) 'presentIllness': presentIllness,
      if (physicalExamination != null)
        'physicalExamination': physicalExamination,
      if (vitalSigns != null) 'vitalSigns': vitalSigns,
      'diagnosis': diagnosis,
      if (icdCode != null) 'icdCode': icdCode,
      if (treatmentPlan != null) 'treatmentPlan': treatmentPlan,
      if (notes != null) 'notes': notes,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'MedicalRecord',
      if (id != null) 'id': id,
      'appointmentId': appointmentId,
      'patientId': patientId,
      'doctorId': doctorId,
      'recordDate': recordDate.toJson(),
      'chiefComplaint': chiefComplaint,
      if (presentIllness != null) 'presentIllness': presentIllness,
      if (physicalExamination != null)
        'physicalExamination': physicalExamination,
      if (vitalSigns != null) 'vitalSigns': vitalSigns,
      'diagnosis': diagnosis,
      if (icdCode != null) 'icdCode': icdCode,
      if (treatmentPlan != null) 'treatmentPlan': treatmentPlan,
      if (notes != null) 'notes': notes,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static MedicalRecordInclude include() {
    return MedicalRecordInclude._();
  }

  static MedicalRecordIncludeList includeList({
    _i1.WhereExpressionBuilder<MedicalRecordTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MedicalRecordTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MedicalRecordTable>? orderByList,
    MedicalRecordInclude? include,
  }) {
    return MedicalRecordIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(MedicalRecord.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(MedicalRecord.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MedicalRecordImpl extends MedicalRecord {
  _MedicalRecordImpl({
    int? id,
    required int appointmentId,
    required int patientId,
    required int doctorId,
    required DateTime recordDate,
    required String chiefComplaint,
    String? presentIllness,
    String? physicalExamination,
    String? vitalSigns,
    required String diagnosis,
    String? icdCode,
    String? treatmentPlan,
    String? notes,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         appointmentId: appointmentId,
         patientId: patientId,
         doctorId: doctorId,
         recordDate: recordDate,
         chiefComplaint: chiefComplaint,
         presentIllness: presentIllness,
         physicalExamination: physicalExamination,
         vitalSigns: vitalSigns,
         diagnosis: diagnosis,
         icdCode: icdCode,
         treatmentPlan: treatmentPlan,
         notes: notes,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [MedicalRecord]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  MedicalRecord copyWith({
    Object? id = _Undefined,
    int? appointmentId,
    int? patientId,
    int? doctorId,
    DateTime? recordDate,
    String? chiefComplaint,
    Object? presentIllness = _Undefined,
    Object? physicalExamination = _Undefined,
    Object? vitalSigns = _Undefined,
    String? diagnosis,
    Object? icdCode = _Undefined,
    Object? treatmentPlan = _Undefined,
    Object? notes = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return MedicalRecord(
      id: id is int? ? id : this.id,
      appointmentId: appointmentId ?? this.appointmentId,
      patientId: patientId ?? this.patientId,
      doctorId: doctorId ?? this.doctorId,
      recordDate: recordDate ?? this.recordDate,
      chiefComplaint: chiefComplaint ?? this.chiefComplaint,
      presentIllness: presentIllness is String?
          ? presentIllness
          : this.presentIllness,
      physicalExamination: physicalExamination is String?
          ? physicalExamination
          : this.physicalExamination,
      vitalSigns: vitalSigns is String? ? vitalSigns : this.vitalSigns,
      diagnosis: diagnosis ?? this.diagnosis,
      icdCode: icdCode is String? ? icdCode : this.icdCode,
      treatmentPlan: treatmentPlan is String?
          ? treatmentPlan
          : this.treatmentPlan,
      notes: notes is String? ? notes : this.notes,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class MedicalRecordUpdateTable extends _i1.UpdateTable<MedicalRecordTable> {
  MedicalRecordUpdateTable(super.table);

  _i1.ColumnValue<int, int> appointmentId(int value) => _i1.ColumnValue(
    table.appointmentId,
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

  _i1.ColumnValue<DateTime, DateTime> recordDate(DateTime value) =>
      _i1.ColumnValue(
        table.recordDate,
        value,
      );

  _i1.ColumnValue<String, String> chiefComplaint(String value) =>
      _i1.ColumnValue(
        table.chiefComplaint,
        value,
      );

  _i1.ColumnValue<String, String> presentIllness(String? value) =>
      _i1.ColumnValue(
        table.presentIllness,
        value,
      );

  _i1.ColumnValue<String, String> physicalExamination(String? value) =>
      _i1.ColumnValue(
        table.physicalExamination,
        value,
      );

  _i1.ColumnValue<String, String> vitalSigns(String? value) => _i1.ColumnValue(
    table.vitalSigns,
    value,
  );

  _i1.ColumnValue<String, String> diagnosis(String value) => _i1.ColumnValue(
    table.diagnosis,
    value,
  );

  _i1.ColumnValue<String, String> icdCode(String? value) => _i1.ColumnValue(
    table.icdCode,
    value,
  );

  _i1.ColumnValue<String, String> treatmentPlan(String? value) =>
      _i1.ColumnValue(
        table.treatmentPlan,
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

class MedicalRecordTable extends _i1.Table<int?> {
  MedicalRecordTable({super.tableRelation})
    : super(tableName: 'medical_records') {
    updateTable = MedicalRecordUpdateTable(this);
    appointmentId = _i1.ColumnInt(
      'appointmentId',
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
    recordDate = _i1.ColumnDateTime(
      'recordDate',
      this,
    );
    chiefComplaint = _i1.ColumnString(
      'chiefComplaint',
      this,
    );
    presentIllness = _i1.ColumnString(
      'presentIllness',
      this,
    );
    physicalExamination = _i1.ColumnString(
      'physicalExamination',
      this,
    );
    vitalSigns = _i1.ColumnString(
      'vitalSigns',
      this,
    );
    diagnosis = _i1.ColumnString(
      'diagnosis',
      this,
    );
    icdCode = _i1.ColumnString(
      'icdCode',
      this,
    );
    treatmentPlan = _i1.ColumnString(
      'treatmentPlan',
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

  late final MedicalRecordUpdateTable updateTable;

  late final _i1.ColumnInt appointmentId;

  late final _i1.ColumnInt patientId;

  late final _i1.ColumnInt doctorId;

  late final _i1.ColumnDateTime recordDate;

  late final _i1.ColumnString chiefComplaint;

  late final _i1.ColumnString presentIllness;

  late final _i1.ColumnString physicalExamination;

  late final _i1.ColumnString vitalSigns;

  late final _i1.ColumnString diagnosis;

  late final _i1.ColumnString icdCode;

  late final _i1.ColumnString treatmentPlan;

  late final _i1.ColumnString notes;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    appointmentId,
    patientId,
    doctorId,
    recordDate,
    chiefComplaint,
    presentIllness,
    physicalExamination,
    vitalSigns,
    diagnosis,
    icdCode,
    treatmentPlan,
    notes,
    createdAt,
    updatedAt,
  ];
}

class MedicalRecordInclude extends _i1.IncludeObject {
  MedicalRecordInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => MedicalRecord.t;
}

class MedicalRecordIncludeList extends _i1.IncludeList {
  MedicalRecordIncludeList._({
    _i1.WhereExpressionBuilder<MedicalRecordTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(MedicalRecord.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => MedicalRecord.t;
}

class MedicalRecordRepository {
  const MedicalRecordRepository._();

  /// Returns a list of [MedicalRecord]s matching the given query parameters.
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
  Future<List<MedicalRecord>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MedicalRecordTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MedicalRecordTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MedicalRecordTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<MedicalRecord>(
      where: where?.call(MedicalRecord.t),
      orderBy: orderBy?.call(MedicalRecord.t),
      orderByList: orderByList?.call(MedicalRecord.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [MedicalRecord] matching the given query parameters.
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
  Future<MedicalRecord?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MedicalRecordTable>? where,
    int? offset,
    _i1.OrderByBuilder<MedicalRecordTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MedicalRecordTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<MedicalRecord>(
      where: where?.call(MedicalRecord.t),
      orderBy: orderBy?.call(MedicalRecord.t),
      orderByList: orderByList?.call(MedicalRecord.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [MedicalRecord] by its [id] or null if no such row exists.
  Future<MedicalRecord?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<MedicalRecord>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [MedicalRecord]s in the list and returns the inserted rows.
  ///
  /// The returned [MedicalRecord]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<MedicalRecord>> insert(
    _i1.Session session,
    List<MedicalRecord> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<MedicalRecord>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [MedicalRecord] and returns the inserted row.
  ///
  /// The returned [MedicalRecord] will have its `id` field set.
  Future<MedicalRecord> insertRow(
    _i1.Session session,
    MedicalRecord row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<MedicalRecord>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [MedicalRecord]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<MedicalRecord>> update(
    _i1.Session session,
    List<MedicalRecord> rows, {
    _i1.ColumnSelections<MedicalRecordTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<MedicalRecord>(
      rows,
      columns: columns?.call(MedicalRecord.t),
      transaction: transaction,
    );
  }

  /// Updates a single [MedicalRecord]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<MedicalRecord> updateRow(
    _i1.Session session,
    MedicalRecord row, {
    _i1.ColumnSelections<MedicalRecordTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<MedicalRecord>(
      row,
      columns: columns?.call(MedicalRecord.t),
      transaction: transaction,
    );
  }

  /// Updates a single [MedicalRecord] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<MedicalRecord?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<MedicalRecordUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<MedicalRecord>(
      id,
      columnValues: columnValues(MedicalRecord.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [MedicalRecord]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<MedicalRecord>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<MedicalRecordUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<MedicalRecordTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MedicalRecordTable>? orderBy,
    _i1.OrderByListBuilder<MedicalRecordTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<MedicalRecord>(
      columnValues: columnValues(MedicalRecord.t.updateTable),
      where: where(MedicalRecord.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(MedicalRecord.t),
      orderByList: orderByList?.call(MedicalRecord.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [MedicalRecord]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<MedicalRecord>> delete(
    _i1.Session session,
    List<MedicalRecord> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<MedicalRecord>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [MedicalRecord].
  Future<MedicalRecord> deleteRow(
    _i1.Session session,
    MedicalRecord row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<MedicalRecord>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<MedicalRecord>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MedicalRecordTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<MedicalRecord>(
      where: where(MedicalRecord.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MedicalRecordTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<MedicalRecord>(
      where: where?.call(MedicalRecord.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
