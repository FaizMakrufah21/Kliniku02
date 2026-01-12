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

abstract class Patient implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
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
