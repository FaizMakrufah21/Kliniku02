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
import 'appointment.dart' as _i2;
import 'chat_message.dart' as _i3;
import 'chat_room.dart' as _i4;
import 'doctor.dart' as _i5;
import 'doctor_schedule.dart' as _i6;
import 'greetings/greeting.dart' as _i7;
import 'medical_record.dart' as _i8;
import 'medicine.dart' as _i9;
import 'medicine_stock.dart' as _i10;
import 'patient.dart' as _i11;
import 'poli.dart' as _i12;
import 'prescription.dart' as _i13;
import 'prescription_item.dart' as _i14;
import 'queue.dart' as _i15;
import 'specialization.dart' as _i16;
import 'package:kliniku_server_client/src/protocol/appointment.dart' as _i17;
import 'package:serverpod_auth_idp_client/serverpod_auth_idp_client.dart'
    as _i18;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i19;
import 'package:serverpod_auth_core_client/serverpod_auth_core_client.dart'
    as _i20;
export 'appointment.dart';
export 'chat_message.dart';
export 'chat_room.dart';
export 'doctor.dart';
export 'doctor_schedule.dart';
export 'greetings/greeting.dart';
export 'medical_record.dart';
export 'medicine.dart';
export 'medicine_stock.dart';
export 'patient.dart';
export 'poli.dart';
export 'prescription.dart';
export 'prescription_item.dart';
export 'queue.dart';
export 'specialization.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static String? getClassNameFromObjectJson(dynamic data) {
    if (data is! Map) return null;
    final className = data['__className__'] as String?;
    return className;
  }

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;

    final dataClassName = getClassNameFromObjectJson(data);
    if (dataClassName != null && dataClassName != getClassNameForType(t)) {
      try {
        return deserializeByClassName({
          'className': dataClassName,
          'data': data,
        });
      } on FormatException catch (_) {
        // If the className is not recognized (e.g., older client receiving
        // data with a new subtype), fall back to deserializing without the
        // className, using the expected type T.
      }
    }

    if (t == _i2.Appointment) {
      return _i2.Appointment.fromJson(data) as T;
    }
    if (t == _i3.ChatMessage) {
      return _i3.ChatMessage.fromJson(data) as T;
    }
    if (t == _i4.ChatRoom) {
      return _i4.ChatRoom.fromJson(data) as T;
    }
    if (t == _i5.Doctor) {
      return _i5.Doctor.fromJson(data) as T;
    }
    if (t == _i6.DoctorSchedule) {
      return _i6.DoctorSchedule.fromJson(data) as T;
    }
    if (t == _i7.Greeting) {
      return _i7.Greeting.fromJson(data) as T;
    }
    if (t == _i8.MedicalRecord) {
      return _i8.MedicalRecord.fromJson(data) as T;
    }
    if (t == _i9.Medicine) {
      return _i9.Medicine.fromJson(data) as T;
    }
    if (t == _i10.MedicineStock) {
      return _i10.MedicineStock.fromJson(data) as T;
    }
    if (t == _i11.Patient) {
      return _i11.Patient.fromJson(data) as T;
    }
    if (t == _i12.Poli) {
      return _i12.Poli.fromJson(data) as T;
    }
    if (t == _i13.Prescription) {
      return _i13.Prescription.fromJson(data) as T;
    }
    if (t == _i14.PrescriptionItem) {
      return _i14.PrescriptionItem.fromJson(data) as T;
    }
    if (t == _i15.Queue) {
      return _i15.Queue.fromJson(data) as T;
    }
    if (t == _i16.Specialization) {
      return _i16.Specialization.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Appointment?>()) {
      return (data != null ? _i2.Appointment.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.ChatMessage?>()) {
      return (data != null ? _i3.ChatMessage.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.ChatRoom?>()) {
      return (data != null ? _i4.ChatRoom.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Doctor?>()) {
      return (data != null ? _i5.Doctor.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.DoctorSchedule?>()) {
      return (data != null ? _i6.DoctorSchedule.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Greeting?>()) {
      return (data != null ? _i7.Greeting.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.MedicalRecord?>()) {
      return (data != null ? _i8.MedicalRecord.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.Medicine?>()) {
      return (data != null ? _i9.Medicine.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.MedicineStock?>()) {
      return (data != null ? _i10.MedicineStock.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.Patient?>()) {
      return (data != null ? _i11.Patient.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.Poli?>()) {
      return (data != null ? _i12.Poli.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.Prescription?>()) {
      return (data != null ? _i13.Prescription.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i14.PrescriptionItem?>()) {
      return (data != null ? _i14.PrescriptionItem.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i15.Queue?>()) {
      return (data != null ? _i15.Queue.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i16.Specialization?>()) {
      return (data != null ? _i16.Specialization.fromJson(data) : null) as T;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList() as T;
    }
    if (t == List<_i17.Appointment>) {
      return (data as List)
              .map((e) => deserialize<_i17.Appointment>(e))
              .toList()
          as T;
    }
    try {
      return _i18.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _i19.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _i20.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _i2.Appointment => 'Appointment',
      _i3.ChatMessage => 'ChatMessage',
      _i4.ChatRoom => 'ChatRoom',
      _i5.Doctor => 'Doctor',
      _i6.DoctorSchedule => 'DoctorSchedule',
      _i7.Greeting => 'Greeting',
      _i8.MedicalRecord => 'MedicalRecord',
      _i9.Medicine => 'Medicine',
      _i10.MedicineStock => 'MedicineStock',
      _i11.Patient => 'Patient',
      _i12.Poli => 'Poli',
      _i13.Prescription => 'Prescription',
      _i14.PrescriptionItem => 'PrescriptionItem',
      _i15.Queue => 'Queue',
      _i16.Specialization => 'Specialization',
      _ => null,
    };
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;

    if (data is Map<String, dynamic> && data['__className__'] is String) {
      return (data['__className__'] as String).replaceFirst(
        'kliniku_server.',
        '',
      );
    }

    switch (data) {
      case _i2.Appointment():
        return 'Appointment';
      case _i3.ChatMessage():
        return 'ChatMessage';
      case _i4.ChatRoom():
        return 'ChatRoom';
      case _i5.Doctor():
        return 'Doctor';
      case _i6.DoctorSchedule():
        return 'DoctorSchedule';
      case _i7.Greeting():
        return 'Greeting';
      case _i8.MedicalRecord():
        return 'MedicalRecord';
      case _i9.Medicine():
        return 'Medicine';
      case _i10.MedicineStock():
        return 'MedicineStock';
      case _i11.Patient():
        return 'Patient';
      case _i12.Poli():
        return 'Poli';
      case _i13.Prescription():
        return 'Prescription';
      case _i14.PrescriptionItem():
        return 'PrescriptionItem';
      case _i15.Queue():
        return 'Queue';
      case _i16.Specialization():
        return 'Specialization';
    }
    className = _i18.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth_idp.$className';
    }
    className = _i19.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    className = _i20.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth_core.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'Appointment') {
      return deserialize<_i2.Appointment>(data['data']);
    }
    if (dataClassName == 'ChatMessage') {
      return deserialize<_i3.ChatMessage>(data['data']);
    }
    if (dataClassName == 'ChatRoom') {
      return deserialize<_i4.ChatRoom>(data['data']);
    }
    if (dataClassName == 'Doctor') {
      return deserialize<_i5.Doctor>(data['data']);
    }
    if (dataClassName == 'DoctorSchedule') {
      return deserialize<_i6.DoctorSchedule>(data['data']);
    }
    if (dataClassName == 'Greeting') {
      return deserialize<_i7.Greeting>(data['data']);
    }
    if (dataClassName == 'MedicalRecord') {
      return deserialize<_i8.MedicalRecord>(data['data']);
    }
    if (dataClassName == 'Medicine') {
      return deserialize<_i9.Medicine>(data['data']);
    }
    if (dataClassName == 'MedicineStock') {
      return deserialize<_i10.MedicineStock>(data['data']);
    }
    if (dataClassName == 'Patient') {
      return deserialize<_i11.Patient>(data['data']);
    }
    if (dataClassName == 'Poli') {
      return deserialize<_i12.Poli>(data['data']);
    }
    if (dataClassName == 'Prescription') {
      return deserialize<_i13.Prescription>(data['data']);
    }
    if (dataClassName == 'PrescriptionItem') {
      return deserialize<_i14.PrescriptionItem>(data['data']);
    }
    if (dataClassName == 'Queue') {
      return deserialize<_i15.Queue>(data['data']);
    }
    if (dataClassName == 'Specialization') {
      return deserialize<_i16.Specialization>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth_idp.')) {
      data['className'] = dataClassName.substring(19);
      return _i18.Protocol().deserializeByClassName(data);
    }
    if (dataClassName.startsWith('serverpod_auth.')) {
      data['className'] = dataClassName.substring(15);
      return _i19.Protocol().deserializeByClassName(data);
    }
    if (dataClassName.startsWith('serverpod_auth_core.')) {
      data['className'] = dataClassName.substring(20);
      return _i20.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  /// Maps any `Record`s known to this [Protocol] to their JSON representation
  ///
  /// Throws in case the record type is not known.
  ///
  /// This method will return `null` (only) for `null` inputs.
  Map<String, dynamic>? mapRecordToJson(Record? record) {
    if (record == null) {
      return null;
    }
    try {
      return _i18.Protocol().mapRecordToJson(record);
    } catch (_) {}
    try {
      return _i19.Protocol().mapRecordToJson(record);
    } catch (_) {}
    try {
      return _i20.Protocol().mapRecordToJson(record);
    } catch (_) {}
    throw Exception('Unsupported record type ${record.runtimeType}');
  }
}
