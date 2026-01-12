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

abstract class Prescription implements _i1.SerializableModel {
  Prescription._({
    this.id,
    required this.medicalRecordId,
    required this.patientId,
    required this.doctorId,
    required this.prescriptionNumber,
    required this.prescriptionDate,
    required this.status,
    required this.totalAmount,
    required this.paymentStatus,
    this.notes,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Prescription({
    int? id,
    required int medicalRecordId,
    required int patientId,
    required int doctorId,
    required String prescriptionNumber,
    required DateTime prescriptionDate,
    required String status,
    required double totalAmount,
    required String paymentStatus,
    String? notes,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _PrescriptionImpl;

  factory Prescription.fromJson(Map<String, dynamic> jsonSerialization) {
    return Prescription(
      id: jsonSerialization['id'] as int?,
      medicalRecordId: jsonSerialization['medicalRecordId'] as int,
      patientId: jsonSerialization['patientId'] as int,
      doctorId: jsonSerialization['doctorId'] as int,
      prescriptionNumber: jsonSerialization['prescriptionNumber'] as String,
      prescriptionDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['prescriptionDate'],
      ),
      status: jsonSerialization['status'] as String,
      totalAmount: (jsonSerialization['totalAmount'] as num).toDouble(),
      paymentStatus: jsonSerialization['paymentStatus'] as String,
      notes: jsonSerialization['notes'] as String?,
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

  int medicalRecordId;

  int patientId;

  int doctorId;

  String prescriptionNumber;

  DateTime prescriptionDate;

  String status;

  double totalAmount;

  String paymentStatus;

  String? notes;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [Prescription]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Prescription copyWith({
    int? id,
    int? medicalRecordId,
    int? patientId,
    int? doctorId,
    String? prescriptionNumber,
    DateTime? prescriptionDate,
    String? status,
    double? totalAmount,
    String? paymentStatus,
    String? notes,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Prescription',
      if (id != null) 'id': id,
      'medicalRecordId': medicalRecordId,
      'patientId': patientId,
      'doctorId': doctorId,
      'prescriptionNumber': prescriptionNumber,
      'prescriptionDate': prescriptionDate.toJson(),
      'status': status,
      'totalAmount': totalAmount,
      'paymentStatus': paymentStatus,
      if (notes != null) 'notes': notes,
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

class _PrescriptionImpl extends Prescription {
  _PrescriptionImpl({
    int? id,
    required int medicalRecordId,
    required int patientId,
    required int doctorId,
    required String prescriptionNumber,
    required DateTime prescriptionDate,
    required String status,
    required double totalAmount,
    required String paymentStatus,
    String? notes,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         medicalRecordId: medicalRecordId,
         patientId: patientId,
         doctorId: doctorId,
         prescriptionNumber: prescriptionNumber,
         prescriptionDate: prescriptionDate,
         status: status,
         totalAmount: totalAmount,
         paymentStatus: paymentStatus,
         notes: notes,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [Prescription]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Prescription copyWith({
    Object? id = _Undefined,
    int? medicalRecordId,
    int? patientId,
    int? doctorId,
    String? prescriptionNumber,
    DateTime? prescriptionDate,
    String? status,
    double? totalAmount,
    String? paymentStatus,
    Object? notes = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Prescription(
      id: id is int? ? id : this.id,
      medicalRecordId: medicalRecordId ?? this.medicalRecordId,
      patientId: patientId ?? this.patientId,
      doctorId: doctorId ?? this.doctorId,
      prescriptionNumber: prescriptionNumber ?? this.prescriptionNumber,
      prescriptionDate: prescriptionDate ?? this.prescriptionDate,
      status: status ?? this.status,
      totalAmount: totalAmount ?? this.totalAmount,
      paymentStatus: paymentStatus ?? this.paymentStatus,
      notes: notes is String? ? notes : this.notes,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
