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

abstract class MedicineStock
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  MedicineStock._({
    this.id,
    required this.medicineId,
    required this.batchNumber,
    required this.quantity,
    required this.expiryDate,
    required this.purchaseDate,
    required this.purchasePrice,
    required this.createdAt,
    required this.updatedAt,
  });

  factory MedicineStock({
    int? id,
    required int medicineId,
    required String batchNumber,
    required int quantity,
    required DateTime expiryDate,
    required DateTime purchaseDate,
    required double purchasePrice,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _MedicineStockImpl;

  factory MedicineStock.fromJson(Map<String, dynamic> jsonSerialization) {
    return MedicineStock(
      id: jsonSerialization['id'] as int?,
      medicineId: jsonSerialization['medicineId'] as int,
      batchNumber: jsonSerialization['batchNumber'] as String,
      quantity: jsonSerialization['quantity'] as int,
      expiryDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['expiryDate'],
      ),
      purchaseDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['purchaseDate'],
      ),
      purchasePrice: (jsonSerialization['purchasePrice'] as num).toDouble(),
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = MedicineStockTable();

  static const db = MedicineStockRepository._();

  @override
  int? id;

  int medicineId;

  String batchNumber;

  int quantity;

  DateTime expiryDate;

  DateTime purchaseDate;

  double purchasePrice;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [MedicineStock]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  MedicineStock copyWith({
    int? id,
    int? medicineId,
    String? batchNumber,
    int? quantity,
    DateTime? expiryDate,
    DateTime? purchaseDate,
    double? purchasePrice,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'MedicineStock',
      if (id != null) 'id': id,
      'medicineId': medicineId,
      'batchNumber': batchNumber,
      'quantity': quantity,
      'expiryDate': expiryDate.toJson(),
      'purchaseDate': purchaseDate.toJson(),
      'purchasePrice': purchasePrice,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'MedicineStock',
      if (id != null) 'id': id,
      'medicineId': medicineId,
      'batchNumber': batchNumber,
      'quantity': quantity,
      'expiryDate': expiryDate.toJson(),
      'purchaseDate': purchaseDate.toJson(),
      'purchasePrice': purchasePrice,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static MedicineStockInclude include() {
    return MedicineStockInclude._();
  }

  static MedicineStockIncludeList includeList({
    _i1.WhereExpressionBuilder<MedicineStockTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MedicineStockTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MedicineStockTable>? orderByList,
    MedicineStockInclude? include,
  }) {
    return MedicineStockIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(MedicineStock.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(MedicineStock.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MedicineStockImpl extends MedicineStock {
  _MedicineStockImpl({
    int? id,
    required int medicineId,
    required String batchNumber,
    required int quantity,
    required DateTime expiryDate,
    required DateTime purchaseDate,
    required double purchasePrice,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         medicineId: medicineId,
         batchNumber: batchNumber,
         quantity: quantity,
         expiryDate: expiryDate,
         purchaseDate: purchaseDate,
         purchasePrice: purchasePrice,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [MedicineStock]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  MedicineStock copyWith({
    Object? id = _Undefined,
    int? medicineId,
    String? batchNumber,
    int? quantity,
    DateTime? expiryDate,
    DateTime? purchaseDate,
    double? purchasePrice,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return MedicineStock(
      id: id is int? ? id : this.id,
      medicineId: medicineId ?? this.medicineId,
      batchNumber: batchNumber ?? this.batchNumber,
      quantity: quantity ?? this.quantity,
      expiryDate: expiryDate ?? this.expiryDate,
      purchaseDate: purchaseDate ?? this.purchaseDate,
      purchasePrice: purchasePrice ?? this.purchasePrice,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class MedicineStockUpdateTable extends _i1.UpdateTable<MedicineStockTable> {
  MedicineStockUpdateTable(super.table);

  _i1.ColumnValue<int, int> medicineId(int value) => _i1.ColumnValue(
    table.medicineId,
    value,
  );

  _i1.ColumnValue<String, String> batchNumber(String value) => _i1.ColumnValue(
    table.batchNumber,
    value,
  );

  _i1.ColumnValue<int, int> quantity(int value) => _i1.ColumnValue(
    table.quantity,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> expiryDate(DateTime value) =>
      _i1.ColumnValue(
        table.expiryDate,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> purchaseDate(DateTime value) =>
      _i1.ColumnValue(
        table.purchaseDate,
        value,
      );

  _i1.ColumnValue<double, double> purchasePrice(double value) =>
      _i1.ColumnValue(
        table.purchasePrice,
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

class MedicineStockTable extends _i1.Table<int?> {
  MedicineStockTable({super.tableRelation})
    : super(tableName: 'medicine_stocks') {
    updateTable = MedicineStockUpdateTable(this);
    medicineId = _i1.ColumnInt(
      'medicineId',
      this,
    );
    batchNumber = _i1.ColumnString(
      'batchNumber',
      this,
    );
    quantity = _i1.ColumnInt(
      'quantity',
      this,
    );
    expiryDate = _i1.ColumnDateTime(
      'expiryDate',
      this,
    );
    purchaseDate = _i1.ColumnDateTime(
      'purchaseDate',
      this,
    );
    purchasePrice = _i1.ColumnDouble(
      'purchasePrice',
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

  late final MedicineStockUpdateTable updateTable;

  late final _i1.ColumnInt medicineId;

  late final _i1.ColumnString batchNumber;

  late final _i1.ColumnInt quantity;

  late final _i1.ColumnDateTime expiryDate;

  late final _i1.ColumnDateTime purchaseDate;

  late final _i1.ColumnDouble purchasePrice;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    medicineId,
    batchNumber,
    quantity,
    expiryDate,
    purchaseDate,
    purchasePrice,
    createdAt,
    updatedAt,
  ];
}

class MedicineStockInclude extends _i1.IncludeObject {
  MedicineStockInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => MedicineStock.t;
}

class MedicineStockIncludeList extends _i1.IncludeList {
  MedicineStockIncludeList._({
    _i1.WhereExpressionBuilder<MedicineStockTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(MedicineStock.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => MedicineStock.t;
}

class MedicineStockRepository {
  const MedicineStockRepository._();

  /// Returns a list of [MedicineStock]s matching the given query parameters.
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
  Future<List<MedicineStock>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MedicineStockTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MedicineStockTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MedicineStockTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<MedicineStock>(
      where: where?.call(MedicineStock.t),
      orderBy: orderBy?.call(MedicineStock.t),
      orderByList: orderByList?.call(MedicineStock.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [MedicineStock] matching the given query parameters.
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
  Future<MedicineStock?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MedicineStockTable>? where,
    int? offset,
    _i1.OrderByBuilder<MedicineStockTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MedicineStockTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<MedicineStock>(
      where: where?.call(MedicineStock.t),
      orderBy: orderBy?.call(MedicineStock.t),
      orderByList: orderByList?.call(MedicineStock.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [MedicineStock] by its [id] or null if no such row exists.
  Future<MedicineStock?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<MedicineStock>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [MedicineStock]s in the list and returns the inserted rows.
  ///
  /// The returned [MedicineStock]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<MedicineStock>> insert(
    _i1.Session session,
    List<MedicineStock> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<MedicineStock>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [MedicineStock] and returns the inserted row.
  ///
  /// The returned [MedicineStock] will have its `id` field set.
  Future<MedicineStock> insertRow(
    _i1.Session session,
    MedicineStock row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<MedicineStock>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [MedicineStock]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<MedicineStock>> update(
    _i1.Session session,
    List<MedicineStock> rows, {
    _i1.ColumnSelections<MedicineStockTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<MedicineStock>(
      rows,
      columns: columns?.call(MedicineStock.t),
      transaction: transaction,
    );
  }

  /// Updates a single [MedicineStock]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<MedicineStock> updateRow(
    _i1.Session session,
    MedicineStock row, {
    _i1.ColumnSelections<MedicineStockTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<MedicineStock>(
      row,
      columns: columns?.call(MedicineStock.t),
      transaction: transaction,
    );
  }

  /// Updates a single [MedicineStock] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<MedicineStock?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<MedicineStockUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<MedicineStock>(
      id,
      columnValues: columnValues(MedicineStock.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [MedicineStock]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<MedicineStock>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<MedicineStockUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<MedicineStockTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MedicineStockTable>? orderBy,
    _i1.OrderByListBuilder<MedicineStockTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<MedicineStock>(
      columnValues: columnValues(MedicineStock.t.updateTable),
      where: where(MedicineStock.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(MedicineStock.t),
      orderByList: orderByList?.call(MedicineStock.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [MedicineStock]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<MedicineStock>> delete(
    _i1.Session session,
    List<MedicineStock> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<MedicineStock>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [MedicineStock].
  Future<MedicineStock> deleteRow(
    _i1.Session session,
    MedicineStock row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<MedicineStock>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<MedicineStock>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MedicineStockTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<MedicineStock>(
      where: where(MedicineStock.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MedicineStockTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<MedicineStock>(
      where: where?.call(MedicineStock.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
