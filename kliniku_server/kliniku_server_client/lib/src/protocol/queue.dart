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

abstract class Queue implements _i1.SerializableModel {
  Queue._({
    this.id,
    required this.appointmentId,
    required this.queueNumber,
    required this.queuePrefix,
    required this.queueSequence,
    required this.status,
    this.calledAt,
    this.servedAt,
    this.completedAt,
    this.estimatedWaitMinutes,
  });

  factory Queue({
    int? id,
    required int appointmentId,
    required String queueNumber,
    required String queuePrefix,
    required int queueSequence,
    required String status,
    DateTime? calledAt,
    DateTime? servedAt,
    DateTime? completedAt,
    int? estimatedWaitMinutes,
  }) = _QueueImpl;

  factory Queue.fromJson(Map<String, dynamic> jsonSerialization) {
    return Queue(
      id: jsonSerialization['id'] as int?,
      appointmentId: jsonSerialization['appointmentId'] as int,
      queueNumber: jsonSerialization['queueNumber'] as String,
      queuePrefix: jsonSerialization['queuePrefix'] as String,
      queueSequence: jsonSerialization['queueSequence'] as int,
      status: jsonSerialization['status'] as String,
      calledAt: jsonSerialization['calledAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['calledAt']),
      servedAt: jsonSerialization['servedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['servedAt']),
      completedAt: jsonSerialization['completedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['completedAt'],
            ),
      estimatedWaitMinutes: jsonSerialization['estimatedWaitMinutes'] as int?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int appointmentId;

  String queueNumber;

  String queuePrefix;

  int queueSequence;

  String status;

  DateTime? calledAt;

  DateTime? servedAt;

  DateTime? completedAt;

  int? estimatedWaitMinutes;

  /// Returns a shallow copy of this [Queue]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Queue copyWith({
    int? id,
    int? appointmentId,
    String? queueNumber,
    String? queuePrefix,
    int? queueSequence,
    String? status,
    DateTime? calledAt,
    DateTime? servedAt,
    DateTime? completedAt,
    int? estimatedWaitMinutes,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Queue',
      if (id != null) 'id': id,
      'appointmentId': appointmentId,
      'queueNumber': queueNumber,
      'queuePrefix': queuePrefix,
      'queueSequence': queueSequence,
      'status': status,
      if (calledAt != null) 'calledAt': calledAt?.toJson(),
      if (servedAt != null) 'servedAt': servedAt?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      if (estimatedWaitMinutes != null)
        'estimatedWaitMinutes': estimatedWaitMinutes,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _QueueImpl extends Queue {
  _QueueImpl({
    int? id,
    required int appointmentId,
    required String queueNumber,
    required String queuePrefix,
    required int queueSequence,
    required String status,
    DateTime? calledAt,
    DateTime? servedAt,
    DateTime? completedAt,
    int? estimatedWaitMinutes,
  }) : super._(
         id: id,
         appointmentId: appointmentId,
         queueNumber: queueNumber,
         queuePrefix: queuePrefix,
         queueSequence: queueSequence,
         status: status,
         calledAt: calledAt,
         servedAt: servedAt,
         completedAt: completedAt,
         estimatedWaitMinutes: estimatedWaitMinutes,
       );

  /// Returns a shallow copy of this [Queue]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Queue copyWith({
    Object? id = _Undefined,
    int? appointmentId,
    String? queueNumber,
    String? queuePrefix,
    int? queueSequence,
    String? status,
    Object? calledAt = _Undefined,
    Object? servedAt = _Undefined,
    Object? completedAt = _Undefined,
    Object? estimatedWaitMinutes = _Undefined,
  }) {
    return Queue(
      id: id is int? ? id : this.id,
      appointmentId: appointmentId ?? this.appointmentId,
      queueNumber: queueNumber ?? this.queueNumber,
      queuePrefix: queuePrefix ?? this.queuePrefix,
      queueSequence: queueSequence ?? this.queueSequence,
      status: status ?? this.status,
      calledAt: calledAt is DateTime? ? calledAt : this.calledAt,
      servedAt: servedAt is DateTime? ? servedAt : this.servedAt,
      completedAt: completedAt is DateTime? ? completedAt : this.completedAt,
      estimatedWaitMinutes: estimatedWaitMinutes is int?
          ? estimatedWaitMinutes
          : this.estimatedWaitMinutes,
    );
  }
}
