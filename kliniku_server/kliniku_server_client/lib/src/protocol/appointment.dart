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

abstract class Appointment implements _i1.SerializableModel {
  Appointment._({
    this.id,
    required this.patientId,
    required this.doctorId,
    required this.poliId,
    required this.appointmentDate,
    required this.timeSlot,
    required this.type,
    required this.status,
    this.cancellationReason,
    this.notes,
    required this.totalFee,
    required this.paymentStatus,
    this.paymentMethod,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Appointment({
    int? id,
    required int patientId,
    required int doctorId,
    required int poliId,
    required DateTime appointmentDate,
    required String timeSlot,
    required String type,
    required String status,
    String? cancellationReason,
    String? notes,
    required double totalFee,
    required String paymentStatus,
    String? paymentMethod,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _AppointmentImpl;

  factory Appointment.fromJson(Map<String, dynamic> jsonSerialization) {
    return Appointment(
      id: jsonSerialization['id'] as int?,
      patientId: jsonSerialization['patientId'] as int,
      doctorId: jsonSerialization['doctorId'] as int,
      poliId: jsonSerialization['poliId'] as int,
      appointmentDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['appointmentDate'],
      ),
      timeSlot: jsonSerialization['timeSlot'] as String,
      type: jsonSerialization['type'] as String,
      status: jsonSerialization['status'] as String,
      cancellationReason: jsonSerialization['cancellationReason'] as String?,
      notes: jsonSerialization['notes'] as String?,
      totalFee: (jsonSerialization['totalFee'] as num).toDouble(),
      paymentStatus: jsonSerialization['paymentStatus'] as String,
      paymentMethod: jsonSerialization['paymentMethod'] as String?,
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

  int patientId;

  int doctorId;

  int poliId;

  DateTime appointmentDate;

  String timeSlot;

  String type;

  String status;

  String? cancellationReason;

  String? notes;

  double totalFee;

  String paymentStatus;

  String? paymentMethod;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [Appointment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Appointment copyWith({
    int? id,
    int? patientId,
    int? doctorId,
    int? poliId,
    DateTime? appointmentDate,
    String? timeSlot,
    String? type,
    String? status,
    String? cancellationReason,
    String? notes,
    double? totalFee,
    String? paymentStatus,
    String? paymentMethod,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Appointment',
      if (id != null) 'id': id,
      'patientId': patientId,
      'doctorId': doctorId,
      'poliId': poliId,
      'appointmentDate': appointmentDate.toJson(),
      'timeSlot': timeSlot,
      'type': type,
      'status': status,
      if (cancellationReason != null) 'cancellationReason': cancellationReason,
      if (notes != null) 'notes': notes,
      'totalFee': totalFee,
      'paymentStatus': paymentStatus,
      if (paymentMethod != null) 'paymentMethod': paymentMethod,
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

class _AppointmentImpl extends Appointment {
  _AppointmentImpl({
    int? id,
    required int patientId,
    required int doctorId,
    required int poliId,
    required DateTime appointmentDate,
    required String timeSlot,
    required String type,
    required String status,
    String? cancellationReason,
    String? notes,
    required double totalFee,
    required String paymentStatus,
    String? paymentMethod,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         patientId: patientId,
         doctorId: doctorId,
         poliId: poliId,
         appointmentDate: appointmentDate,
         timeSlot: timeSlot,
         type: type,
         status: status,
         cancellationReason: cancellationReason,
         notes: notes,
         totalFee: totalFee,
         paymentStatus: paymentStatus,
         paymentMethod: paymentMethod,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [Appointment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Appointment copyWith({
    Object? id = _Undefined,
    int? patientId,
    int? doctorId,
    int? poliId,
    DateTime? appointmentDate,
    String? timeSlot,
    String? type,
    String? status,
    Object? cancellationReason = _Undefined,
    Object? notes = _Undefined,
    double? totalFee,
    String? paymentStatus,
    Object? paymentMethod = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Appointment(
      id: id is int? ? id : this.id,
      patientId: patientId ?? this.patientId,
      doctorId: doctorId ?? this.doctorId,
      poliId: poliId ?? this.poliId,
      appointmentDate: appointmentDate ?? this.appointmentDate,
      timeSlot: timeSlot ?? this.timeSlot,
      type: type ?? this.type,
      status: status ?? this.status,
      cancellationReason: cancellationReason is String?
          ? cancellationReason
          : this.cancellationReason,
      notes: notes is String? ? notes : this.notes,
      totalFee: totalFee ?? this.totalFee,
      paymentStatus: paymentStatus ?? this.paymentStatus,
      paymentMethod: paymentMethod is String?
          ? paymentMethod
          : this.paymentMethod,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
