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

abstract class Poli implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String? description;

  String? iconName;

  String? colorHex;

  bool isActive;

  DateTime createdAt;

  DateTime updatedAt;

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
