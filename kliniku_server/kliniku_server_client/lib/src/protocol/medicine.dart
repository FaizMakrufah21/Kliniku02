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

abstract class Medicine implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
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
