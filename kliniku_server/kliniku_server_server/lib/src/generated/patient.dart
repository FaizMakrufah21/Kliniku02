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

abstract class Patient
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Patient._({
    this.id,
    required this.userId,
    required this.nik,
    required this.name,
    required this.dateOfBirth,
    required this.gender,
    required this.phone,
    this.address,
    this.bloodType,
    this.allergies,
    this.emergencyContact,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Patient({
    int? id,
    required int userId,
    required String nik,
    required String name,
    required DateTime dateOfBirth,
    required String gender,
    required String phone,
    String? address,
    String? bloodType,
    String? allergies,
    String? emergencyContact,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _PatientImpl;

  factory Patient.fromJson(Map<String, dynamic> jsonSerialization) {
    return Patient(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      nik: jsonSerialization['nik'] as String,
      name: jsonSerialization['name'] as String,
      dateOfBirth: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['dateOfBirth'],
      ),
      gender: jsonSerialization['gender'] as String,
      phone: jsonSerialization['phone'] as String,
      address: jsonSerialization['address'] as String?,
      bloodType: jsonSerialization['bloodType'] as String?,
      allergies: jsonSerialization['allergies'] as String?,
      emergencyContact: jsonSerialization['emergencyContact'] as String?,
      status: jsonSerialization['status'] as String,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = PatientTable();

  static const db = PatientRepository._();

  @override
  int? id;

  int userId;

  String nik;

  String name;

  DateTime dateOfBirth;

  String gender;

  String phone;

  String? address;

  String? bloodType;

  String? allergies;

  String? emergencyContact;

  String status;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Patient]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Patient copyWith({
    int? id,
    int? userId,
    String? nik,
    String? name,
    DateTime? dateOfBirth,
    String? gender,
    String? phone,
    String? address,
    String? bloodType,
    String? allergies,
    String? emergencyContact,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Patient',
      if (id != null) 'id': id,
      'userId': userId,
      'nik': nik,
      'name': name,
      'dateOfBirth': dateOfBirth.toJson(),
      'gender': gender,
      'phone': phone,
      if (address != null) 'address': address,
      if (bloodType != null) 'bloodType': bloodType,
      if (allergies != null) 'allergies': allergies,
      if (emergencyContact != null) 'emergencyContact': emergencyContact,
      'status': status,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Patient',
      if (id != null) 'id': id,
      'userId': userId,
      'nik': nik,
      'name': name,
      'dateOfBirth': dateOfBirth.toJson(),
      'gender': gender,
      'phone': phone,
      if (address != null) 'address': address,
      if (bloodType != null) 'bloodType': bloodType,
      if (allergies != null) 'allergies': allergies,
      if (emergencyContact != null) 'emergencyContact': emergencyContact,
      'status': status,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static PatientInclude include() {
    return PatientInclude._();
  }

  static PatientIncludeList includeList({
    _i1.WhereExpressionBuilder<PatientTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PatientTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PatientTable>? orderByList,
    PatientInclude? include,
  }) {
    return PatientIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Patient.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Patient.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PatientImpl extends Patient {
  _PatientImpl({
    int? id,
    required int userId,
    required String nik,
    required String name,
    required DateTime dateOfBirth,
    required String gender,
    required String phone,
    String? address,
    String? bloodType,
    String? allergies,
    String? emergencyContact,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         userId: userId,
         nik: nik,
         name: name,
         dateOfBirth: dateOfBirth,
         gender: gender,
         phone: phone,
         address: address,
         bloodType: bloodType,
         allergies: allergies,
         emergencyContact: emergencyContact,
         status: status,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [Patient]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Patient copyWith({
    Object? id = _Undefined,
    int? userId,
    String? nik,
    String? name,
    DateTime? dateOfBirth,
    String? gender,
    String? phone,
    Object? address = _Undefined,
    Object? bloodType = _Undefined,
    Object? allergies = _Undefined,
    Object? emergencyContact = _Undefined,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Patient(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      nik: nik ?? this.nik,
      name: name ?? this.name,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      gender: gender ?? this.gender,
      phone: phone ?? this.phone,
      address: address is String? ? address : this.address,
      bloodType: bloodType is String? ? bloodType : this.bloodType,
      allergies: allergies is String? ? allergies : this.allergies,
      emergencyContact: emergencyContact is String?
          ? emergencyContact
          : this.emergencyContact,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class PatientUpdateTable extends _i1.UpdateTable<PatientTable> {
  PatientUpdateTable(super.table);

  _i1.ColumnValue<int, int> userId(int value) => _i1.ColumnValue(
    table.userId,
    value,
  );

  _i1.ColumnValue<String, String> nik(String value) => _i1.ColumnValue(
    table.nik,
    value,
  );

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> dateOfBirth(DateTime value) =>
      _i1.ColumnValue(
        table.dateOfBirth,
        value,
      );

  _i1.ColumnValue<String, String> gender(String value) => _i1.ColumnValue(
    table.gender,
    value,
  );

  _i1.ColumnValue<String, String> phone(String value) => _i1.ColumnValue(
    table.phone,
    value,
  );

  _i1.ColumnValue<String, String> address(String? value) => _i1.ColumnValue(
    table.address,
    value,
  );

  _i1.ColumnValue<String, String> bloodType(String? value) => _i1.ColumnValue(
    table.bloodType,
    value,
  );

  _i1.ColumnValue<String, String> allergies(String? value) => _i1.ColumnValue(
    table.allergies,
    value,
  );

  _i1.ColumnValue<String, String> emergencyContact(String? value) =>
      _i1.ColumnValue(
        table.emergencyContact,
        value,
      );

  _i1.ColumnValue<String, String> status(String value) => _i1.ColumnValue(
    table.status,
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

class PatientTable extends _i1.Table<int?> {
  PatientTable({super.tableRelation}) : super(tableName: 'patients') {
    updateTable = PatientUpdateTable(this);
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    nik = _i1.ColumnString(
      'nik',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    dateOfBirth = _i1.ColumnDateTime(
      'dateOfBirth',
      this,
    );
    gender = _i1.ColumnString(
      'gender',
      this,
    );
    phone = _i1.ColumnString(
      'phone',
      this,
    );
    address = _i1.ColumnString(
      'address',
      this,
    );
    bloodType = _i1.ColumnString(
      'bloodType',
      this,
    );
    allergies = _i1.ColumnString(
      'allergies',
      this,
    );
    emergencyContact = _i1.ColumnString(
      'emergencyContact',
      this,
    );
    status = _i1.ColumnString(
      'status',
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

  late final PatientUpdateTable updateTable;

  late final _i1.ColumnInt userId;

  late final _i1.ColumnString nik;

  late final _i1.ColumnString name;

  late final _i1.ColumnDateTime dateOfBirth;

  late final _i1.ColumnString gender;

  late final _i1.ColumnString phone;

  late final _i1.ColumnString address;

  late final _i1.ColumnString bloodType;

  late final _i1.ColumnString allergies;

  late final _i1.ColumnString emergencyContact;

  late final _i1.ColumnString status;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    nik,
    name,
    dateOfBirth,
    gender,
    phone,
    address,
    bloodType,
    allergies,
    emergencyContact,
    status,
    createdAt,
    updatedAt,
  ];
}

class PatientInclude extends _i1.IncludeObject {
  PatientInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Patient.t;
}

class PatientIncludeList extends _i1.IncludeList {
  PatientIncludeList._({
    _i1.WhereExpressionBuilder<PatientTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Patient.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Patient.t;
}

class PatientRepository {
  const PatientRepository._();

  /// Returns a list of [Patient]s matching the given query parameters.
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
  Future<List<Patient>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PatientTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PatientTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PatientTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Patient>(
      where: where?.call(Patient.t),
      orderBy: orderBy?.call(Patient.t),
      orderByList: orderByList?.call(Patient.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Patient] matching the given query parameters.
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
  Future<Patient?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PatientTable>? where,
    int? offset,
    _i1.OrderByBuilder<PatientTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PatientTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Patient>(
      where: where?.call(Patient.t),
      orderBy: orderBy?.call(Patient.t),
      orderByList: orderByList?.call(Patient.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Patient] by its [id] or null if no such row exists.
  Future<Patient?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Patient>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Patient]s in the list and returns the inserted rows.
  ///
  /// The returned [Patient]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Patient>> insert(
    _i1.Session session,
    List<Patient> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Patient>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Patient] and returns the inserted row.
  ///
  /// The returned [Patient] will have its `id` field set.
  Future<Patient> insertRow(
    _i1.Session session,
    Patient row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Patient>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Patient]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Patient>> update(
    _i1.Session session,
    List<Patient> rows, {
    _i1.ColumnSelections<PatientTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Patient>(
      rows,
      columns: columns?.call(Patient.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Patient]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Patient> updateRow(
    _i1.Session session,
    Patient row, {
    _i1.ColumnSelections<PatientTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Patient>(
      row,
      columns: columns?.call(Patient.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Patient] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Patient?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<PatientUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Patient>(
      id,
      columnValues: columnValues(Patient.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Patient]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Patient>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<PatientUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<PatientTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PatientTable>? orderBy,
    _i1.OrderByListBuilder<PatientTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Patient>(
      columnValues: columnValues(Patient.t.updateTable),
      where: where(Patient.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Patient.t),
      orderByList: orderByList?.call(Patient.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Patient]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Patient>> delete(
    _i1.Session session,
    List<Patient> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Patient>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Patient].
  Future<Patient> deleteRow(
    _i1.Session session,
    Patient row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Patient>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Patient>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PatientTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Patient>(
      where: where(Patient.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PatientTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Patient>(
      where: where?.call(Patient.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
