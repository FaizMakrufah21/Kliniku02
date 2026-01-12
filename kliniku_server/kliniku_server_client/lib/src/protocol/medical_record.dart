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

abstract class MedicalRecord implements _i1.SerializableModel {
  MedicalRecord._({
    this.id,
    required this.appointmentId,
    required this.patientId,
    required this.doctorId,
    required this.recordDate,
    required this.chiefComplaint,
    this.presentIllness,
    this.physicalExamination,
    this.vitalSigns,
    required this.diagnosis,
    this.icdCode,
    this.treatmentPlan,
    this.notes,
    required this.createdAt,
    required this.updatedAt,
  });

  factory MedicalRecord({
    int? id,
    required int appointmentId,
    required int patientId,
    required int doctorId,
    required DateTime recordDate,
    required String chiefComplaint,
    String? presentIllness,
    String? physicalExamination,
    String? vitalSigns,
    required String diagnosis,
    String? icdCode,
    String? treatmentPlan,
    String? notes,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _MedicalRecordImpl;

  factory MedicalRecord.fromJson(Map<String, dynamic> jsonSerialization) {
    return MedicalRecord(
      id: jsonSerialization['id'] as int?,
      appointmentId: jsonSerialization['appointmentId'] as int,
      patientId: jsonSerialization['patientId'] as int,
      doctorId: jsonSerialization['doctorId'] as int,
      recordDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['recordDate'],
      ),
      chiefComplaint: jsonSerialization['chiefComplaint'] as String,
      presentIllness: jsonSerialization['presentIllness'] as String?,
      physicalExamination: jsonSerialization['physicalExamination'] as String?,
      vitalSigns: jsonSerialization['vitalSigns'] as String?,
      diagnosis: jsonSerialization['diagnosis'] as String,
      icdCode: jsonSerialization['icdCode'] as String?,
      treatmentPlan: jsonSerialization['treatmentPlan'] as String?,
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

  int appointmentId;

  int patientId;

  int doctorId;

  DateTime recordDate;

  String chiefComplaint;

  String? presentIllness;

  String? physicalExamination;

  String? vitalSigns;

  String diagnosis;

  String? icdCode;

  String? treatmentPlan;

  String? notes;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [MedicalRecord]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  MedicalRecord copyWith({
    int? id,
    int? appointmentId,
    int? patientId,
    int? doctorId,
    DateTime? recordDate,
    String? chiefComplaint,
    String? presentIllness,
    String? physicalExamination,
    String? vitalSigns,
    String? diagnosis,
    String? icdCode,
    String? treatmentPlan,
    String? notes,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'MedicalRecord',
      if (id != null) 'id': id,
      'appointmentId': appointmentId,
      'patientId': patientId,
      'doctorId': doctorId,
      'recordDate': recordDate.toJson(),
      'chiefComplaint': chiefComplaint,
      if (presentIllness != null) 'presentIllness': presentIllness,
      if (physicalExamination != null)
        'physicalExamination': physicalExamination,
      if (vitalSigns != null) 'vitalSigns': vitalSigns,
      'diagnosis': diagnosis,
      if (icdCode != null) 'icdCode': icdCode,
      if (treatmentPlan != null) 'treatmentPlan': treatmentPlan,
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

class _MedicalRecordImpl extends MedicalRecord {
  _MedicalRecordImpl({
    int? id,
    required int appointmentId,
    required int patientId,
    required int doctorId,
    required DateTime recordDate,
    required String chiefComplaint,
    String? presentIllness,
    String? physicalExamination,
    String? vitalSigns,
    required String diagnosis,
    String? icdCode,
    String? treatmentPlan,
    String? notes,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         appointmentId: appointmentId,
         patientId: patientId,
         doctorId: doctorId,
         recordDate: recordDate,
         chiefComplaint: chiefComplaint,
         presentIllness: presentIllness,
         physicalExamination: physicalExamination,
         vitalSigns: vitalSigns,
         diagnosis: diagnosis,
         icdCode: icdCode,
         treatmentPlan: treatmentPlan,
         notes: notes,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [MedicalRecord]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  MedicalRecord copyWith({
    Object? id = _Undefined,
    int? appointmentId,
    int? patientId,
    int? doctorId,
    DateTime? recordDate,
    String? chiefComplaint,
    Object? presentIllness = _Undefined,
    Object? physicalExamination = _Undefined,
    Object? vitalSigns = _Undefined,
    String? diagnosis,
    Object? icdCode = _Undefined,
    Object? treatmentPlan = _Undefined,
    Object? notes = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return MedicalRecord(
      id: id is int? ? id : this.id,
      appointmentId: appointmentId ?? this.appointmentId,
      patientId: patientId ?? this.patientId,
      doctorId: doctorId ?? this.doctorId,
      recordDate: recordDate ?? this.recordDate,
      chiefComplaint: chiefComplaint ?? this.chiefComplaint,
      presentIllness: presentIllness is String?
          ? presentIllness
          : this.presentIllness,
      physicalExamination: physicalExamination is String?
          ? physicalExamination
          : this.physicalExamination,
      vitalSigns: vitalSigns is String? ? vitalSigns : this.vitalSigns,
      diagnosis: diagnosis ?? this.diagnosis,
      icdCode: icdCode is String? ? icdCode : this.icdCode,
      treatmentPlan: treatmentPlan is String?
          ? treatmentPlan
          : this.treatmentPlan,
      notes: notes is String? ? notes : this.notes,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
