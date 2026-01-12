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
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class MedicineStock implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int medicineId;

  String batchNumber;

  int quantity;

  DateTime expiryDate;

  DateTime purchaseDate;

  double purchasePrice;

  DateTime createdAt;

  DateTime updatedAt;

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
