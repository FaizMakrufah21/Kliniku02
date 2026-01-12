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

abstract class PrescriptionItem implements _i1.SerializableModel {
  PrescriptionItem._({
    this.id,
    required this.prescriptionId,
    required this.medicineId,
    required this.quantity,
    required this.dosage,
    required this.frequency,
    required this.duration,
    this.instructions,
    required this.unitPrice,
    required this.subtotal,
  });

  factory PrescriptionItem({
    int? id,
    required int prescriptionId,
    required int medicineId,
    required int quantity,
    required String dosage,
    required String frequency,
    required String duration,
    String? instructions,
    required double unitPrice,
    required double subtotal,
  }) = _PrescriptionItemImpl;

  factory PrescriptionItem.fromJson(Map<String, dynamic> jsonSerialization) {
    return PrescriptionItem(
      id: jsonSerialization['id'] as int?,
      prescriptionId: jsonSerialization['prescriptionId'] as int,
      medicineId: jsonSerialization['medicineId'] as int,
      quantity: jsonSerialization['quantity'] as int,
      dosage: jsonSerialization['dosage'] as String,
      frequency: jsonSerialization['frequency'] as String,
      duration: jsonSerialization['duration'] as String,
      instructions: jsonSerialization['instructions'] as String?,
      unitPrice: (jsonSerialization['unitPrice'] as num).toDouble(),
      subtotal: (jsonSerialization['subtotal'] as num).toDouble(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int prescriptionId;

  int medicineId;

  int quantity;

  String dosage;

  String frequency;

  String duration;

  String? instructions;

  double unitPrice;

  double subtotal;

  /// Returns a shallow copy of this [PrescriptionItem]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PrescriptionItem copyWith({
    int? id,
    int? prescriptionId,
    int? medicineId,
    int? quantity,
    String? dosage,
    String? frequency,
    String? duration,
    String? instructions,
    double? unitPrice,
    double? subtotal,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PrescriptionItem',
      if (id != null) 'id': id,
      'prescriptionId': prescriptionId,
      'medicineId': medicineId,
      'quantity': quantity,
      'dosage': dosage,
      'frequency': frequency,
      'duration': duration,
      if (instructions != null) 'instructions': instructions,
      'unitPrice': unitPrice,
      'subtotal': subtotal,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PrescriptionItemImpl extends PrescriptionItem {
  _PrescriptionItemImpl({
    int? id,
    required int prescriptionId,
    required int medicineId,
    required int quantity,
    required String dosage,
    required String frequency,
    required String duration,
    String? instructions,
    required double unitPrice,
    required double subtotal,
  }) : super._(
         id: id,
         prescriptionId: prescriptionId,
         medicineId: medicineId,
         quantity: quantity,
         dosage: dosage,
         frequency: frequency,
         duration: duration,
         instructions: instructions,
         unitPrice: unitPrice,
         subtotal: subtotal,
       );

  /// Returns a shallow copy of this [PrescriptionItem]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PrescriptionItem copyWith({
    Object? id = _Undefined,
    int? prescriptionId,
    int? medicineId,
    int? quantity,
    String? dosage,
    String? frequency,
    String? duration,
    Object? instructions = _Undefined,
    double? unitPrice,
    double? subtotal,
  }) {
    return PrescriptionItem(
      id: id is int? ? id : this.id,
      prescriptionId: prescriptionId ?? this.prescriptionId,
      medicineId: medicineId ?? this.medicineId,
      quantity: quantity ?? this.quantity,
      dosage: dosage ?? this.dosage,
      frequency: frequency ?? this.frequency,
      duration: duration ?? this.duration,
      instructions: instructions is String? ? instructions : this.instructions,
      unitPrice: unitPrice ?? this.unitPrice,
      subtotal: subtotal ?? this.subtotal,
    );
  }
}
