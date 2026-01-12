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

abstract class DoctorSchedule implements _i1.SerializableModel {
  DoctorSchedule._({
    this.id,
    required this.doctorId,
    required this.dayOfWeek,
    required this.startTime,
    required this.endTime,
    required this.slotDurationMinutes,
    required this.maxPatients,
    required this.isActive,
  });

  factory DoctorSchedule({
    int? id,
    required int doctorId,
    required int dayOfWeek,
    required String startTime,
    required String endTime,
    required int slotDurationMinutes,
    required int maxPatients,
    required bool isActive,
  }) = _DoctorScheduleImpl;

  factory DoctorSchedule.fromJson(Map<String, dynamic> jsonSerialization) {
    return DoctorSchedule(
      id: jsonSerialization['id'] as int?,
      doctorId: jsonSerialization['doctorId'] as int,
      dayOfWeek: jsonSerialization['dayOfWeek'] as int,
      startTime: jsonSerialization['startTime'] as String,
      endTime: jsonSerialization['endTime'] as String,
      slotDurationMinutes: jsonSerialization['slotDurationMinutes'] as int,
      maxPatients: jsonSerialization['maxPatients'] as int,
      isActive: jsonSerialization['isActive'] as bool,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int doctorId;

  int dayOfWeek;

  String startTime;

  String endTime;

  int slotDurationMinutes;

  int maxPatients;

  bool isActive;

  /// Returns a shallow copy of this [DoctorSchedule]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  DoctorSchedule copyWith({
    int? id,
    int? doctorId,
    int? dayOfWeek,
    String? startTime,
    String? endTime,
    int? slotDurationMinutes,
    int? maxPatients,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'DoctorSchedule',
      if (id != null) 'id': id,
      'doctorId': doctorId,
      'dayOfWeek': dayOfWeek,
      'startTime': startTime,
      'endTime': endTime,
      'slotDurationMinutes': slotDurationMinutes,
      'maxPatients': maxPatients,
      'isActive': isActive,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DoctorScheduleImpl extends DoctorSchedule {
  _DoctorScheduleImpl({
    int? id,
    required int doctorId,
    required int dayOfWeek,
    required String startTime,
    required String endTime,
    required int slotDurationMinutes,
    required int maxPatients,
    required bool isActive,
  }) : super._(
         id: id,
         doctorId: doctorId,
         dayOfWeek: dayOfWeek,
         startTime: startTime,
         endTime: endTime,
         slotDurationMinutes: slotDurationMinutes,
         maxPatients: maxPatients,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [DoctorSchedule]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  DoctorSchedule copyWith({
    Object? id = _Undefined,
    int? doctorId,
    int? dayOfWeek,
    String? startTime,
    String? endTime,
    int? slotDurationMinutes,
    int? maxPatients,
    bool? isActive,
  }) {
    return DoctorSchedule(
      id: id is int? ? id : this.id,
      doctorId: doctorId ?? this.doctorId,
      dayOfWeek: dayOfWeek ?? this.dayOfWeek,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      slotDurationMinutes: slotDurationMinutes ?? this.slotDurationMinutes,
      maxPatients: maxPatients ?? this.maxPatients,
      isActive: isActive ?? this.isActive,
    );
  }
}
