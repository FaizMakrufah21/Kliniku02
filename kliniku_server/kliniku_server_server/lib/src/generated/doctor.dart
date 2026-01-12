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

abstract class Doctor implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Doctor._({
    this.id,
    required this.employeeId,
    required this.name,
    required this.specializationId,
    required this.poliId,
    required this.phone,
    required this.licenseNumber,
    required this.experienceYears,
    required this.consultationFee,
    required this.teleconsultFee,
    this.bio,
    this.profileImageUrl,
    this.rating,
    this.totalReviews,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Doctor({
    int? id,
    required String employeeId,
    required String name,
    required int specializationId,
    required int poliId,
    required String phone,
    required String licenseNumber,
    required int experienceYears,
    required double consultationFee,
    required double teleconsultFee,
    String? bio,
    String? profileImageUrl,
    double? rating,
    int? totalReviews,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _DoctorImpl;

  factory Doctor.fromJson(Map<String, dynamic> jsonSerialization) {
    return Doctor(
      id: jsonSerialization['id'] as int?,
      employeeId: jsonSerialization['employeeId'] as String,
      name: jsonSerialization['name'] as String,
      specializationId: jsonSerialization['specializationId'] as int,
      poliId: jsonSerialization['poliId'] as int,
      phone: jsonSerialization['phone'] as String,
      licenseNumber: jsonSerialization['licenseNumber'] as String,
      experienceYears: jsonSerialization['experienceYears'] as int,
      consultationFee: (jsonSerialization['consultationFee'] as num).toDouble(),
      teleconsultFee: (jsonSerialization['teleconsultFee'] as num).toDouble(),
      bio: jsonSerialization['bio'] as String?,
      profileImageUrl: jsonSerialization['profileImageUrl'] as String?,
      rating: (jsonSerialization['rating'] as num?)?.toDouble(),
      totalReviews: jsonSerialization['totalReviews'] as int?,
      status: jsonSerialization['status'] as String,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = DoctorTable();

  static const db = DoctorRepository._();

  @override
  int? id;

  String employeeId;

  String name;

  int specializationId;

  int poliId;

  String phone;

  String licenseNumber;

  int experienceYears;

  double consultationFee;

  double teleconsultFee;

  String? bio;

  String? profileImageUrl;

  double? rating;

  int? totalReviews;

  String status;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Doctor]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Doctor copyWith({
    int? id,
    String? employeeId,
    String? name,
    int? specializationId,
    int? poliId,
    String? phone,
    String? licenseNumber,
    int? experienceYears,
    double? consultationFee,
    double? teleconsultFee,
    String? bio,
    String? profileImageUrl,
    double? rating,
    int? totalReviews,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Doctor',
      if (id != null) 'id': id,
      'employeeId': employeeId,
      'name': name,
      'specializationId': specializationId,
      'poliId': poliId,
      'phone': phone,
      'licenseNumber': licenseNumber,
      'experienceYears': experienceYears,
      'consultationFee': consultationFee,
      'teleconsultFee': teleconsultFee,
      if (bio != null) 'bio': bio,
      if (profileImageUrl != null) 'profileImageUrl': profileImageUrl,
      if (rating != null) 'rating': rating,
      if (totalReviews != null) 'totalReviews': totalReviews,
      'status': status,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Doctor',
      if (id != null) 'id': id,
      'employeeId': employeeId,
      'name': name,
      'specializationId': specializationId,
      'poliId': poliId,
      'phone': phone,
      'licenseNumber': licenseNumber,
      'experienceYears': experienceYears,
      'consultationFee': consultationFee,
      'teleconsultFee': teleconsultFee,
      if (bio != null) 'bio': bio,
      if (profileImageUrl != null) 'profileImageUrl': profileImageUrl,
      if (rating != null) 'rating': rating,
      if (totalReviews != null) 'totalReviews': totalReviews,
      'status': status,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static DoctorInclude include() {
    return DoctorInclude._();
  }

  static DoctorIncludeList includeList({
    _i1.WhereExpressionBuilder<DoctorTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DoctorTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DoctorTable>? orderByList,
    DoctorInclude? include,
  }) {
    return DoctorIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Doctor.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Doctor.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DoctorImpl extends Doctor {
  _DoctorImpl({
    int? id,
    required String employeeId,
    required String name,
    required int specializationId,
    required int poliId,
    required String phone,
    required String licenseNumber,
    required int experienceYears,
    required double consultationFee,
    required double teleconsultFee,
    String? bio,
    String? profileImageUrl,
    double? rating,
    int? totalReviews,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         employeeId: employeeId,
         name: name,
         specializationId: specializationId,
         poliId: poliId,
         phone: phone,
         licenseNumber: licenseNumber,
         experienceYears: experienceYears,
         consultationFee: consultationFee,
         teleconsultFee: teleconsultFee,
         bio: bio,
         profileImageUrl: profileImageUrl,
         rating: rating,
         totalReviews: totalReviews,
         status: status,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [Doctor]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Doctor copyWith({
    Object? id = _Undefined,
    String? employeeId,
    String? name,
    int? specializationId,
    int? poliId,
    String? phone,
    String? licenseNumber,
    int? experienceYears,
    double? consultationFee,
    double? teleconsultFee,
    Object? bio = _Undefined,
    Object? profileImageUrl = _Undefined,
    Object? rating = _Undefined,
    Object? totalReviews = _Undefined,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Doctor(
      id: id is int? ? id : this.id,
      employeeId: employeeId ?? this.employeeId,
      name: name ?? this.name,
      specializationId: specializationId ?? this.specializationId,
      poliId: poliId ?? this.poliId,
      phone: phone ?? this.phone,
      licenseNumber: licenseNumber ?? this.licenseNumber,
      experienceYears: experienceYears ?? this.experienceYears,
      consultationFee: consultationFee ?? this.consultationFee,
      teleconsultFee: teleconsultFee ?? this.teleconsultFee,
      bio: bio is String? ? bio : this.bio,
      profileImageUrl: profileImageUrl is String?
          ? profileImageUrl
          : this.profileImageUrl,
      rating: rating is double? ? rating : this.rating,
      totalReviews: totalReviews is int? ? totalReviews : this.totalReviews,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class DoctorUpdateTable extends _i1.UpdateTable<DoctorTable> {
  DoctorUpdateTable(super.table);

  _i1.ColumnValue<String, String> employeeId(String value) => _i1.ColumnValue(
    table.employeeId,
    value,
  );

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
    value,
  );

  _i1.ColumnValue<int, int> specializationId(int value) => _i1.ColumnValue(
    table.specializationId,
    value,
  );

  _i1.ColumnValue<int, int> poliId(int value) => _i1.ColumnValue(
    table.poliId,
    value,
  );

  _i1.ColumnValue<String, String> phone(String value) => _i1.ColumnValue(
    table.phone,
    value,
  );

  _i1.ColumnValue<String, String> licenseNumber(String value) =>
      _i1.ColumnValue(
        table.licenseNumber,
        value,
      );

  _i1.ColumnValue<int, int> experienceYears(int value) => _i1.ColumnValue(
    table.experienceYears,
    value,
  );

  _i1.ColumnValue<double, double> consultationFee(double value) =>
      _i1.ColumnValue(
        table.consultationFee,
        value,
      );

  _i1.ColumnValue<double, double> teleconsultFee(double value) =>
      _i1.ColumnValue(
        table.teleconsultFee,
        value,
      );

  _i1.ColumnValue<String, String> bio(String? value) => _i1.ColumnValue(
    table.bio,
    value,
  );

  _i1.ColumnValue<String, String> profileImageUrl(String? value) =>
      _i1.ColumnValue(
        table.profileImageUrl,
        value,
      );

  _i1.ColumnValue<double, double> rating(double? value) => _i1.ColumnValue(
    table.rating,
    value,
  );

  _i1.ColumnValue<int, int> totalReviews(int? value) => _i1.ColumnValue(
    table.totalReviews,
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

class DoctorTable extends _i1.Table<int?> {
  DoctorTable({super.tableRelation}) : super(tableName: 'doctors') {
    updateTable = DoctorUpdateTable(this);
    employeeId = _i1.ColumnString(
      'employeeId',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    specializationId = _i1.ColumnInt(
      'specializationId',
      this,
    );
    poliId = _i1.ColumnInt(
      'poliId',
      this,
    );
    phone = _i1.ColumnString(
      'phone',
      this,
    );
    licenseNumber = _i1.ColumnString(
      'licenseNumber',
      this,
    );
    experienceYears = _i1.ColumnInt(
      'experienceYears',
      this,
    );
    consultationFee = _i1.ColumnDouble(
      'consultationFee',
      this,
    );
    teleconsultFee = _i1.ColumnDouble(
      'teleconsultFee',
      this,
    );
    bio = _i1.ColumnString(
      'bio',
      this,
    );
    profileImageUrl = _i1.ColumnString(
      'profileImageUrl',
      this,
    );
    rating = _i1.ColumnDouble(
      'rating',
      this,
    );
    totalReviews = _i1.ColumnInt(
      'totalReviews',
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

  late final DoctorUpdateTable updateTable;

  late final _i1.ColumnString employeeId;

  late final _i1.ColumnString name;

  late final _i1.ColumnInt specializationId;

  late final _i1.ColumnInt poliId;

  late final _i1.ColumnString phone;

  late final _i1.ColumnString licenseNumber;

  late final _i1.ColumnInt experienceYears;

  late final _i1.ColumnDouble consultationFee;

  late final _i1.ColumnDouble teleconsultFee;

  late final _i1.ColumnString bio;

  late final _i1.ColumnString profileImageUrl;

  late final _i1.ColumnDouble rating;

  late final _i1.ColumnInt totalReviews;

  late final _i1.ColumnString status;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    employeeId,
    name,
    specializationId,
    poliId,
    phone,
    licenseNumber,
    experienceYears,
    consultationFee,
    teleconsultFee,
    bio,
    profileImageUrl,
    rating,
    totalReviews,
    status,
    createdAt,
    updatedAt,
  ];
}

class DoctorInclude extends _i1.IncludeObject {
  DoctorInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Doctor.t;
}

class DoctorIncludeList extends _i1.IncludeList {
  DoctorIncludeList._({
    _i1.WhereExpressionBuilder<DoctorTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Doctor.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Doctor.t;
}

class DoctorRepository {
  const DoctorRepository._();

  /// Returns a list of [Doctor]s matching the given query parameters.
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
  Future<List<Doctor>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DoctorTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DoctorTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DoctorTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Doctor>(
      where: where?.call(Doctor.t),
      orderBy: orderBy?.call(Doctor.t),
      orderByList: orderByList?.call(Doctor.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Doctor] matching the given query parameters.
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
  Future<Doctor?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DoctorTable>? where,
    int? offset,
    _i1.OrderByBuilder<DoctorTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DoctorTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Doctor>(
      where: where?.call(Doctor.t),
      orderBy: orderBy?.call(Doctor.t),
      orderByList: orderByList?.call(Doctor.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Doctor] by its [id] or null if no such row exists.
  Future<Doctor?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Doctor>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Doctor]s in the list and returns the inserted rows.
  ///
  /// The returned [Doctor]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Doctor>> insert(
    _i1.Session session,
    List<Doctor> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Doctor>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Doctor] and returns the inserted row.
  ///
  /// The returned [Doctor] will have its `id` field set.
  Future<Doctor> insertRow(
    _i1.Session session,
    Doctor row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Doctor>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Doctor]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Doctor>> update(
    _i1.Session session,
    List<Doctor> rows, {
    _i1.ColumnSelections<DoctorTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Doctor>(
      rows,
      columns: columns?.call(Doctor.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Doctor]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Doctor> updateRow(
    _i1.Session session,
    Doctor row, {
    _i1.ColumnSelections<DoctorTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Doctor>(
      row,
      columns: columns?.call(Doctor.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Doctor] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Doctor?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<DoctorUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Doctor>(
      id,
      columnValues: columnValues(Doctor.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Doctor]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Doctor>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<DoctorUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<DoctorTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DoctorTable>? orderBy,
    _i1.OrderByListBuilder<DoctorTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Doctor>(
      columnValues: columnValues(Doctor.t.updateTable),
      where: where(Doctor.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Doctor.t),
      orderByList: orderByList?.call(Doctor.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Doctor]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Doctor>> delete(
    _i1.Session session,
    List<Doctor> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Doctor>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Doctor].
  Future<Doctor> deleteRow(
    _i1.Session session,
    Doctor row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Doctor>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Doctor>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DoctorTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Doctor>(
      where: where(Doctor.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DoctorTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Doctor>(
      where: where?.call(Doctor.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
