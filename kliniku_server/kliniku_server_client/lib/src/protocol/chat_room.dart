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

abstract class ChatRoom implements _i1.SerializableModel {
  ChatRoom._({
    this.id,
    required this.patientId,
    required this.doctorId,
    this.appointmentId,
    required this.type,
    required this.status,
    required this.startedAt,
    this.endedAt,
    required this.createdAt,
  });

  factory ChatRoom({
    int? id,
    required int patientId,
    required int doctorId,
    int? appointmentId,
    required String type,
    required String status,
    required DateTime startedAt,
    DateTime? endedAt,
    required DateTime createdAt,
  }) = _ChatRoomImpl;

  factory ChatRoom.fromJson(Map<String, dynamic> jsonSerialization) {
    return ChatRoom(
      id: jsonSerialization['id'] as int?,
      patientId: jsonSerialization['patientId'] as int,
      doctorId: jsonSerialization['doctorId'] as int,
      appointmentId: jsonSerialization['appointmentId'] as int?,
      type: jsonSerialization['type'] as String,
      status: jsonSerialization['status'] as String,
      startedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['startedAt'],
      ),
      endedAt: jsonSerialization['endedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['endedAt']),
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int patientId;

  int doctorId;

  int? appointmentId;

  String type;

  String status;

  DateTime startedAt;

  DateTime? endedAt;

  DateTime createdAt;

  /// Returns a shallow copy of this [ChatRoom]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ChatRoom copyWith({
    int? id,
    int? patientId,
    int? doctorId,
    int? appointmentId,
    String? type,
    String? status,
    DateTime? startedAt,
    DateTime? endedAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ChatRoom',
      if (id != null) 'id': id,
      'patientId': patientId,
      'doctorId': doctorId,
      if (appointmentId != null) 'appointmentId': appointmentId,
      'type': type,
      'status': status,
      'startedAt': startedAt.toJson(),
      if (endedAt != null) 'endedAt': endedAt?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ChatRoomImpl extends ChatRoom {
  _ChatRoomImpl({
    int? id,
    required int patientId,
    required int doctorId,
    int? appointmentId,
    required String type,
    required String status,
    required DateTime startedAt,
    DateTime? endedAt,
    required DateTime createdAt,
  }) : super._(
         id: id,
         patientId: patientId,
         doctorId: doctorId,
         appointmentId: appointmentId,
         type: type,
         status: status,
         startedAt: startedAt,
         endedAt: endedAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [ChatRoom]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  ChatRoom copyWith({
    Object? id = _Undefined,
    int? patientId,
    int? doctorId,
    Object? appointmentId = _Undefined,
    String? type,
    String? status,
    DateTime? startedAt,
    Object? endedAt = _Undefined,
    DateTime? createdAt,
  }) {
    return ChatRoom(
      id: id is int? ? id : this.id,
      patientId: patientId ?? this.patientId,
      doctorId: doctorId ?? this.doctorId,
      appointmentId: appointmentId is int? ? appointmentId : this.appointmentId,
      type: type ?? this.type,
      status: status ?? this.status,
      startedAt: startedAt ?? this.startedAt,
      endedAt: endedAt is DateTime? ? endedAt : this.endedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
