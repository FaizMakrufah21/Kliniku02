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

abstract class Medicine
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Medicine._({
    this.id,
    required this.code,
    required this.name,
    this.genericName,
    required this.category,
    required this.unit,
    this.manufacturer,
    required this.price,
    required this.requiresPrescription,
    this.description,
    this.sideEffects,
    this.contraindications,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Medicine({
    int? id,
    required String code,
    required String name,
    String? genericName,
    required String category,
    required String unit,
    String? manufacturer,
    required double price,
    required bool requiresPrescription,
    String? description,
    String? sideEffects,
    String? contraindications,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _MedicineImpl;

  factory Medicine.fromJson(Map<String, dynamic> jsonSerialization) {
    return Medicine(
      id: jsonSerialization['id'] as int?,
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      genericName: jsonSerialization['genericName'] as String?,
      category: jsonSerialization['category'] as String,
      unit: jsonSerialization['unit'] as String,
      manufacturer: jsonSerialization['manufacturer'] as String?,
      price: (jsonSerialization['price'] as num).toDouble(),
      requiresPrescription: jsonSerialization['requiresPrescription'] as bool,
      description: jsonSerialization['description'] as String?,
      sideEffects: jsonSerialization['sideEffects'] as String?,
      contraindications: jsonSerialization['contraindications'] as String?,
      isActive: jsonSerialization['isActive'] as bool,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = MedicineTable();

  static const db = MedicineRepository._();

  @override
  int? id;

  String code;

  String name;

  String? genericName;

  String category;

  String unit;

  String? manufacturer;

  double price;

  bool requiresPrescription;

  String? description;

  String? sideEffects;

  String? contraindications;

  bool isActive;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Medicine]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Medicine copyWith({
    int? id,
    String? code,
    String? name,
    String? genericName,
    String? category,
    String? unit,
    String? manufacturer,
    double? price,
    bool? requiresPrescription,
    String? description,
    String? sideEffects,
    String? contraindications,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Medicine',
      if (id != null) 'id': id,
      'code': code,
      'name': name,
      if (genericName != null) 'genericName': genericName,
      'category': category,
      'unit': unit,
      if (manufacturer != null) 'manufacturer': manufacturer,
      'price': price,
      'requiresPrescription': requiresPrescription,
      if (description != null) 'description': description,
      if (sideEffects != null) 'sideEffects': sideEffects,
      if (contraindications != null) 'contraindications': contraindications,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Medicine',
      if (id != null) 'id': id,
      'code': code,
      'name': name,
      if (genericName != null) 'genericName': genericName,
      'category': category,
      'unit': unit,
      if (manufacturer != null) 'manufacturer': manufacturer,
      'price': price,
      'requiresPrescription': requiresPrescription,
      if (description != null) 'description': description,
      if (sideEffects != null) 'sideEffects': sideEffects,
      if (contraindications != null) 'contraindications': contraindications,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static MedicineInclude include() {
    return MedicineInclude._();
  }

  static MedicineIncludeList includeList({
    _i1.WhereExpressionBuilder<MedicineTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MedicineTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MedicineTable>? orderByList,
    MedicineInclude? include,
  }) {
    return MedicineIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Medicine.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Medicine.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MedicineImpl extends Medicine {
  _MedicineImpl({
    int? id,
    required String code,
    required String name,
    String? genericName,
    required String category,
    required String unit,
    String? manufacturer,
    required double price,
    required bool requiresPrescription,
    String? description,
    String? sideEffects,
    String? contraindications,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         code: code,
         name: name,
         genericName: genericName,
         category: category,
         unit: unit,
         manufacturer: manufacturer,
         price: price,
         requiresPrescription: requiresPrescription,
         description: description,
         sideEffects: sideEffects,
         contraindications: contraindications,
         isActive: isActive,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [Medicine]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Medicine copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? genericName = _Undefined,
    String? category,
    String? unit,
    Object? manufacturer = _Undefined,
    double? price,
    bool? requiresPrescription,
    Object? description = _Undefined,
    Object? sideEffects = _Undefined,
    Object? contraindications = _Undefined,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Medicine(
      id: id is int? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      genericName: genericName is String? ? genericName : this.genericName,
      category: category ?? this.category,
      unit: unit ?? this.unit,
      manufacturer: manufacturer is String? ? manufacturer : this.manufacturer,
      price: price ?? this.price,
      requiresPrescription: requiresPrescription ?? this.requiresPrescription,
      description: description is String? ? description : this.description,
      sideEffects: sideEffects is String? ? sideEffects : this.sideEffects,
      contraindications: contraindications is String?
          ? contraindications
          : this.contraindications,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class MedicineUpdateTable extends _i1.UpdateTable<MedicineTable> {
  MedicineUpdateTable(super.table);

  _i1.ColumnValue<String, String> code(String value) => _i1.ColumnValue(
    table.code,
    value,
  );

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
    value,
  );

  _i1.ColumnValue<String, String> genericName(String? value) => _i1.ColumnValue(
    table.genericName,
    value,
  );

  _i1.ColumnValue<String, String> category(String value) => _i1.ColumnValue(
    table.category,
    value,
  );

  _i1.ColumnValue<String, String> unit(String value) => _i1.ColumnValue(
    table.unit,
    value,
  );

  _i1.ColumnValue<String, String> manufacturer(String? value) =>
      _i1.ColumnValue(
        table.manufacturer,
        value,
      );

  _i1.ColumnValue<double, double> price(double value) => _i1.ColumnValue(
    table.price,
    value,
  );

  _i1.ColumnValue<bool, bool> requiresPrescription(bool value) =>
      _i1.ColumnValue(
        table.requiresPrescription,
        value,
      );

  _i1.ColumnValue<String, String> description(String? value) => _i1.ColumnValue(
    table.description,
    value,
  );

  _i1.ColumnValue<String, String> sideEffects(String? value) => _i1.ColumnValue(
    table.sideEffects,
    value,
  );

  _i1.ColumnValue<String, String> contraindications(String? value) =>
      _i1.ColumnValue(
        table.contraindications,
        value,
      );

  _i1.ColumnValue<bool, bool> isActive(bool value) => _i1.ColumnValue(
    table.isActive,
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

class MedicineTable extends _i1.Table<int?> {
  MedicineTable({super.tableRelation}) : super(tableName: 'medicines') {
    updateTable = MedicineUpdateTable(this);
    code = _i1.ColumnString(
      'code',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    genericName = _i1.ColumnString(
      'genericName',
      this,
    );
    category = _i1.ColumnString(
      'category',
      this,
    );
    unit = _i1.ColumnString(
      'unit',
      this,
    );
    manufacturer = _i1.ColumnString(
      'manufacturer',
      this,
    );
    price = _i1.ColumnDouble(
      'price',
      this,
    );
    requiresPrescription = _i1.ColumnBool(
      'requiresPrescription',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    sideEffects = _i1.ColumnString(
      'sideEffects',
      this,
    );
    contraindications = _i1.ColumnString(
      'contraindications',
      this,
    );
    isActive = _i1.ColumnBool(
      'isActive',
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

  late final MedicineUpdateTable updateTable;

  late final _i1.ColumnString code;

  late final _i1.ColumnString name;

  late final _i1.ColumnString genericName;

  late final _i1.ColumnString category;

  late final _i1.ColumnString unit;

  late final _i1.ColumnString manufacturer;

  late final _i1.ColumnDouble price;

  late final _i1.ColumnBool requiresPrescription;

  late final _i1.ColumnString description;

  late final _i1.ColumnString sideEffects;

  late final _i1.ColumnString contraindications;

  late final _i1.ColumnBool isActive;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    code,
    name,
    genericName,
    category,
    unit,
    manufacturer,
    price,
    requiresPrescription,
    description,
    sideEffects,
    contraindications,
    isActive,
    createdAt,
    updatedAt,
  ];
}

class MedicineInclude extends _i1.IncludeObject {
  MedicineInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Medicine.t;
}

class MedicineIncludeList extends _i1.IncludeList {
  MedicineIncludeList._({
    _i1.WhereExpressionBuilder<MedicineTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Medicine.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Medicine.t;
}

class MedicineRepository {
  const MedicineRepository._();

  /// Returns a list of [Medicine]s matching the given query parameters.
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
  Future<List<Medicine>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MedicineTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MedicineTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MedicineTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Medicine>(
      where: where?.call(Medicine.t),
      orderBy: orderBy?.call(Medicine.t),
      orderByList: orderByList?.call(Medicine.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Medicine] matching the given query parameters.
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
  Future<Medicine?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MedicineTable>? where,
    int? offset,
    _i1.OrderByBuilder<MedicineTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MedicineTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Medicine>(
      where: where?.call(Medicine.t),
      orderBy: orderBy?.call(Medicine.t),
      orderByList: orderByList?.call(Medicine.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Medicine] by its [id] or null if no such row exists.
  Future<Medicine?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Medicine>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Medicine]s in the list and returns the inserted rows.
  ///
  /// The returned [Medicine]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Medicine>> insert(
    _i1.Session session,
    List<Medicine> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Medicine>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Medicine] and returns the inserted row.
  ///
  /// The returned [Medicine] will have its `id` field set.
  Future<Medicine> insertRow(
    _i1.Session session,
    Medicine row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Medicine>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Medicine]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Medicine>> update(
    _i1.Session session,
    List<Medicine> rows, {
    _i1.ColumnSelections<MedicineTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Medicine>(
      rows,
      columns: columns?.call(Medicine.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Medicine]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Medicine> updateRow(
    _i1.Session session,
    Medicine row, {
    _i1.ColumnSelections<MedicineTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Medicine>(
      row,
      columns: columns?.call(Medicine.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Medicine] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Medicine?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<MedicineUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Medicine>(
      id,
      columnValues: columnValues(Medicine.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Medicine]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Medicine>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<MedicineUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<MedicineTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MedicineTable>? orderBy,
    _i1.OrderByListBuilder<MedicineTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Medicine>(
      columnValues: columnValues(Medicine.t.updateTable),
      where: where(Medicine.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Medicine.t),
      orderByList: orderByList?.call(Medicine.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Medicine]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Medicine>> delete(
    _i1.Session session,
    List<Medicine> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Medicine>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Medicine].
  Future<Medicine> deleteRow(
    _i1.Session session,
    Medicine row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Medicine>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Medicine>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MedicineTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Medicine>(
      where: where(Medicine.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MedicineTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Medicine>(
      where: where?.call(Medicine.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
