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

abstract class Specialization
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Specialization._({
    this.id,
    required this.name,
    this.description,
    this.iconName,
  });

  factory Specialization({
    int? id,
    required String name,
    String? description,
    String? iconName,
  }) = _SpecializationImpl;

  factory Specialization.fromJson(Map<String, dynamic> jsonSerialization) {
    return Specialization(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      iconName: jsonSerialization['iconName'] as String?,
    );
  }

  static final t = SpecializationTable();

  static const db = SpecializationRepository._();

  @override
  int? id;

  String name;

  String? description;

  String? iconName;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Specialization]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Specialization copyWith({
    int? id,
    String? name,
    String? description,
    String? iconName,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Specialization',
      if (id != null) 'id': id,
      'name': name,
      if (description != null) 'description': description,
      if (iconName != null) 'iconName': iconName,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Specialization',
      if (id != null) 'id': id,
      'name': name,
      if (description != null) 'description': description,
      if (iconName != null) 'iconName': iconName,
    };
  }

  static SpecializationInclude include() {
    return SpecializationInclude._();
  }

  static SpecializationIncludeList includeList({
    _i1.WhereExpressionBuilder<SpecializationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SpecializationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SpecializationTable>? orderByList,
    SpecializationInclude? include,
  }) {
    return SpecializationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Specialization.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Specialization.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SpecializationImpl extends Specialization {
  _SpecializationImpl({
    int? id,
    required String name,
    String? description,
    String? iconName,
  }) : super._(
         id: id,
         name: name,
         description: description,
         iconName: iconName,
       );

  /// Returns a shallow copy of this [Specialization]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Specialization copyWith({
    Object? id = _Undefined,
    String? name,
    Object? description = _Undefined,
    Object? iconName = _Undefined,
  }) {
    return Specialization(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      iconName: iconName is String? ? iconName : this.iconName,
    );
  }
}

class SpecializationUpdateTable extends _i1.UpdateTable<SpecializationTable> {
  SpecializationUpdateTable(super.table);

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
}

class SpecializationTable extends _i1.Table<int?> {
  SpecializationTable({super.tableRelation})
    : super(tableName: 'specializations') {
    updateTable = SpecializationUpdateTable(this);
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
  }

  late final SpecializationUpdateTable updateTable;

  late final _i1.ColumnString name;

  late final _i1.ColumnString description;

  late final _i1.ColumnString iconName;

  @override
  List<_i1.Column> get columns => [
    id,
    name,
    description,
    iconName,
  ];
}

class SpecializationInclude extends _i1.IncludeObject {
  SpecializationInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Specialization.t;
}

class SpecializationIncludeList extends _i1.IncludeList {
  SpecializationIncludeList._({
    _i1.WhereExpressionBuilder<SpecializationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Specialization.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Specialization.t;
}

class SpecializationRepository {
  const SpecializationRepository._();

  /// Returns a list of [Specialization]s matching the given query parameters.
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
  Future<List<Specialization>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SpecializationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SpecializationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SpecializationTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Specialization>(
      where: where?.call(Specialization.t),
      orderBy: orderBy?.call(Specialization.t),
      orderByList: orderByList?.call(Specialization.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Specialization] matching the given query parameters.
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
  Future<Specialization?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SpecializationTable>? where,
    int? offset,
    _i1.OrderByBuilder<SpecializationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SpecializationTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Specialization>(
      where: where?.call(Specialization.t),
      orderBy: orderBy?.call(Specialization.t),
      orderByList: orderByList?.call(Specialization.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Specialization] by its [id] or null if no such row exists.
  Future<Specialization?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Specialization>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Specialization]s in the list and returns the inserted rows.
  ///
  /// The returned [Specialization]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Specialization>> insert(
    _i1.Session session,
    List<Specialization> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Specialization>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Specialization] and returns the inserted row.
  ///
  /// The returned [Specialization] will have its `id` field set.
  Future<Specialization> insertRow(
    _i1.Session session,
    Specialization row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Specialization>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Specialization]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Specialization>> update(
    _i1.Session session,
    List<Specialization> rows, {
    _i1.ColumnSelections<SpecializationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Specialization>(
      rows,
      columns: columns?.call(Specialization.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Specialization]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Specialization> updateRow(
    _i1.Session session,
    Specialization row, {
    _i1.ColumnSelections<SpecializationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Specialization>(
      row,
      columns: columns?.call(Specialization.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Specialization] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Specialization?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<SpecializationUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Specialization>(
      id,
      columnValues: columnValues(Specialization.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Specialization]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Specialization>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<SpecializationUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<SpecializationTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SpecializationTable>? orderBy,
    _i1.OrderByListBuilder<SpecializationTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Specialization>(
      columnValues: columnValues(Specialization.t.updateTable),
      where: where(Specialization.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Specialization.t),
      orderByList: orderByList?.call(Specialization.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Specialization]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Specialization>> delete(
    _i1.Session session,
    List<Specialization> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Specialization>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Specialization].
  Future<Specialization> deleteRow(
    _i1.Session session,
    Specialization row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Specialization>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Specialization>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SpecializationTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Specialization>(
      where: where(Specialization.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SpecializationTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Specialization>(
      where: where?.call(Specialization.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
