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

abstract class Poli implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Poli._({
    this.id,
    required this.name,
    this.description,
    this.iconName,
    this.colorHex,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Poli({
    int? id,
    required String name,
    String? description,
    String? iconName,
    String? colorHex,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _PoliImpl;

  factory Poli.fromJson(Map<String, dynamic> jsonSerialization) {
    return Poli(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      iconName: jsonSerialization['iconName'] as String?,
      colorHex: jsonSerialization['colorHex'] as String?,
      isActive: jsonSerialization['isActive'] as bool,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = PoliTable();

  static const db = PoliRepository._();

  @override
  int? id;

  String name;

  String? description;

  String? iconName;

  String? colorHex;

  bool isActive;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Poli]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Poli copyWith({
    int? id,
    String? name,
    String? description,
    String? iconName,
    String? colorHex,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Poli',
      if (id != null) 'id': id,
      'name': name,
      if (description != null) 'description': description,
      if (iconName != null) 'iconName': iconName,
      if (colorHex != null) 'colorHex': colorHex,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Poli',
      if (id != null) 'id': id,
      'name': name,
      if (description != null) 'description': description,
      if (iconName != null) 'iconName': iconName,
      if (colorHex != null) 'colorHex': colorHex,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static PoliInclude include() {
    return PoliInclude._();
  }

  static PoliIncludeList includeList({
    _i1.WhereExpressionBuilder<PoliTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PoliTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PoliTable>? orderByList,
    PoliInclude? include,
  }) {
    return PoliIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Poli.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Poli.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PoliImpl extends Poli {
  _PoliImpl({
    int? id,
    required String name,
    String? description,
    String? iconName,
    String? colorHex,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         name: name,
         description: description,
         iconName: iconName,
         colorHex: colorHex,
         isActive: isActive,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [Poli]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Poli copyWith({
    Object? id = _Undefined,
    String? name,
    Object? description = _Undefined,
    Object? iconName = _Undefined,
    Object? colorHex = _Undefined,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Poli(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      iconName: iconName is String? ? iconName : this.iconName,
      colorHex: colorHex is String? ? colorHex : this.colorHex,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class PoliUpdateTable extends _i1.UpdateTable<PoliTable> {
  PoliUpdateTable(super.table);

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
    value,
  );

  _i1.ColumnValue<String, String> description(String? value) => _i1.ColumnValue(
    table.description,
    value,
  );

  _i1.ColumnValue<String, String> iconName(String? value) => _i1.ColumnValue(
    table.iconName,
    value,
  );

  _i1.ColumnValue<String, String> colorHex(String? value) => _i1.ColumnValue(
    table.colorHex,
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

class PoliTable extends _i1.Table<int?> {
  PoliTable({super.tableRelation}) : super(tableName: 'polis') {
    updateTable = PoliUpdateTable(this);
    name = _i1.ColumnString(
      'name',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    iconName = _i1.ColumnString(
      'iconName',
      this,
    );
    colorHex = _i1.ColumnString(
      'colorHex',
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

  late final PoliUpdateTable updateTable;

  late final _i1.ColumnString name;

  late final _i1.ColumnString description;

  late final _i1.ColumnString iconName;

  late final _i1.ColumnString colorHex;

  late final _i1.ColumnBool isActive;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    name,
    description,
    iconName,
    colorHex,
    isActive,
    createdAt,
    updatedAt,
  ];
}

class PoliInclude extends _i1.IncludeObject {
  PoliInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Poli.t;
}

class PoliIncludeList extends _i1.IncludeList {
  PoliIncludeList._({
    _i1.WhereExpressionBuilder<PoliTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Poli.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Poli.t;
}

class PoliRepository {
  const PoliRepository._();

  /// Returns a list of [Poli]s matching the given query parameters.
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
  Future<List<Poli>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PoliTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PoliTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PoliTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Poli>(
      where: where?.call(Poli.t),
      orderBy: orderBy?.call(Poli.t),
      orderByList: orderByList?.call(Poli.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Poli] matching the given query parameters.
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
  Future<Poli?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PoliTable>? where,
    int? offset,
    _i1.OrderByBuilder<PoliTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PoliTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Poli>(
      where: where?.call(Poli.t),
      orderBy: orderBy?.call(Poli.t),
      orderByList: orderByList?.call(Poli.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Poli] by its [id] or null if no such row exists.
  Future<Poli?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Poli>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Poli]s in the list and returns the inserted rows.
  ///
  /// The returned [Poli]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Poli>> insert(
    _i1.Session session,
    List<Poli> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Poli>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Poli] and returns the inserted row.
  ///
  /// The returned [Poli] will have its `id` field set.
  Future<Poli> insertRow(
    _i1.Session session,
    Poli row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Poli>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Poli]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Poli>> update(
    _i1.Session session,
    List<Poli> rows, {
    _i1.ColumnSelections<PoliTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Poli>(
      rows,
      columns: columns?.call(Poli.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Poli]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Poli> updateRow(
    _i1.Session session,
    Poli row, {
    _i1.ColumnSelections<PoliTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Poli>(
      row,
      columns: columns?.call(Poli.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Poli] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Poli?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<PoliUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Poli>(
      id,
      columnValues: columnValues(Poli.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Poli]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Poli>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<PoliUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<PoliTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PoliTable>? orderBy,
    _i1.OrderByListBuilder<PoliTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Poli>(
      columnValues: columnValues(Poli.t.updateTable),
      where: where(Poli.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Poli.t),
      orderByList: orderByList?.call(Poli.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Poli]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Poli>> delete(
    _i1.Session session,
    List<Poli> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Poli>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Poli].
  Future<Poli> deleteRow(
    _i1.Session session,
    Poli row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Poli>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Poli>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PoliTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Poli>(
      where: where(Poli.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PoliTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Poli>(
      where: where?.call(Poli.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
