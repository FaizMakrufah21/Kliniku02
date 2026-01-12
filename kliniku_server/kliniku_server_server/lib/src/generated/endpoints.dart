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
import 'package:serverpod/serverpod.dart' as _i1;
import '../auth/email_idp_endpoint.dart' as _i2;
import '../auth/jwt_refresh_endpoint.dart' as _i3;
import '../endpoints/admin_seed_endpoint.dart' as _i4;
import '../endpoints/appointment_endpoint.dart' as _i5;
import '../endpoints/data_seed_endpoint.dart' as _i6;
import '../endpoints/doctor_endpoint.dart' as _i7;
import '../endpoints/medicine_endpoint.dart' as _i8;
import '../endpoints/patient_endpoint.dart' as _i9;
import '../endpoints/poli_endpoint.dart' as _i10;
import '../endpoints/queue_endpoint.dart' as _i11;
import '../endpoints/simple_auth_endpoint.dart' as _i12;
import '../endpoints/specialization_endpoint.dart' as _i13;
import '../greetings/greeting_endpoint.dart' as _i14;
import 'package:kliniku_server_server/src/generated/doctor.dart' as _i15;
import 'package:kliniku_server_server/src/generated/medicine.dart' as _i16;
import 'package:kliniku_server_server/src/generated/patient.dart' as _i17;
import 'package:kliniku_server_server/src/generated/poli.dart' as _i18;
import 'package:kliniku_server_server/src/generated/queue.dart' as _i19;
import 'package:kliniku_server_server/src/generated/specialization.dart'
    as _i20;
import 'package:serverpod_auth_idp_server/serverpod_auth_idp_server.dart'
    as _i21;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i22;
import 'package:serverpod_auth_core_server/serverpod_auth_core_server.dart'
    as _i23;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'emailIdp': _i2.EmailIdpEndpoint()
        ..initialize(
          server,
          'emailIdp',
          null,
        ),
      'jwtRefresh': _i3.JwtRefreshEndpoint()
        ..initialize(
          server,
          'jwtRefresh',
          null,
        ),
      'adminSeed': _i4.AdminSeedEndpoint()
        ..initialize(
          server,
          'adminSeed',
          null,
        ),
      'appointment': _i5.AppointmentEndpoint()
        ..initialize(
          server,
          'appointment',
          null,
        ),
      'dataSeed': _i6.DataSeedEndpoint()
        ..initialize(
          server,
          'dataSeed',
          null,
        ),
      'doctor': _i7.DoctorEndpoint()
        ..initialize(
          server,
          'doctor',
          null,
        ),
      'medicine': _i8.MedicineEndpoint()
        ..initialize(
          server,
          'medicine',
          null,
        ),
      'patient': _i9.PatientEndpoint()
        ..initialize(
          server,
          'patient',
          null,
        ),
      'poli': _i10.PoliEndpoint()
        ..initialize(
          server,
          'poli',
          null,
        ),
      'queue': _i11.QueueEndpoint()
        ..initialize(
          server,
          'queue',
          null,
        ),
      'simpleAuth': _i12.SimpleAuthEndpoint()
        ..initialize(
          server,
          'simpleAuth',
          null,
        ),
      'specialization': _i13.SpecializationEndpoint()
        ..initialize(
          server,
          'specialization',
          null,
        ),
      'greeting': _i14.GreetingEndpoint()
        ..initialize(
          server,
          'greeting',
          null,
        ),
    };
    connectors['emailIdp'] = _i1.EndpointConnector(
      name: 'emailIdp',
      endpoint: endpoints['emailIdp']!,
      methodConnectors: {
        'login': _i1.MethodConnector(
          name: 'login',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint).login(
                session,
                email: params['email'],
                password: params['password'],
              ),
        ),
        'startRegistration': _i1.MethodConnector(
          name: 'startRegistration',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .startRegistration(
                    session,
                    email: params['email'],
                  ),
        ),
        'verifyRegistrationCode': _i1.MethodConnector(
          name: 'verifyRegistrationCode',
          params: {
            'accountRequestId': _i1.ParameterDescription(
              name: 'accountRequestId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
            'verificationCode': _i1.ParameterDescription(
              name: 'verificationCode',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .verifyRegistrationCode(
                    session,
                    accountRequestId: params['accountRequestId'],
                    verificationCode: params['verificationCode'],
                  ),
        ),
        'finishRegistration': _i1.MethodConnector(
          name: 'finishRegistration',
          params: {
            'registrationToken': _i1.ParameterDescription(
              name: 'registrationToken',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .finishRegistration(
                    session,
                    registrationToken: params['registrationToken'],
                    password: params['password'],
                  ),
        ),
        'startPasswordReset': _i1.MethodConnector(
          name: 'startPasswordReset',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .startPasswordReset(
                    session,
                    email: params['email'],
                  ),
        ),
        'verifyPasswordResetCode': _i1.MethodConnector(
          name: 'verifyPasswordResetCode',
          params: {
            'passwordResetRequestId': _i1.ParameterDescription(
              name: 'passwordResetRequestId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
            'verificationCode': _i1.ParameterDescription(
              name: 'verificationCode',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .verifyPasswordResetCode(
                    session,
                    passwordResetRequestId: params['passwordResetRequestId'],
                    verificationCode: params['verificationCode'],
                  ),
        ),
        'finishPasswordReset': _i1.MethodConnector(
          name: 'finishPasswordReset',
          params: {
            'finishPasswordResetToken': _i1.ParameterDescription(
              name: 'finishPasswordResetToken',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'newPassword': _i1.ParameterDescription(
              name: 'newPassword',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .finishPasswordReset(
                    session,
                    finishPasswordResetToken:
                        params['finishPasswordResetToken'],
                    newPassword: params['newPassword'],
                  ),
        ),
      },
    );
    connectors['jwtRefresh'] = _i1.EndpointConnector(
      name: 'jwtRefresh',
      endpoint: endpoints['jwtRefresh']!,
      methodConnectors: {
        'refreshAccessToken': _i1.MethodConnector(
          name: 'refreshAccessToken',
          params: {
            'refreshToken': _i1.ParameterDescription(
              name: 'refreshToken',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['jwtRefresh'] as _i3.JwtRefreshEndpoint)
                  .refreshAccessToken(
                    session,
                    refreshToken: params['refreshToken'],
                  ),
        ),
      },
    );
    connectors['adminSeed'] = _i1.EndpointConnector(
      name: 'adminSeed',
      endpoint: endpoints['adminSeed']!,
      methodConnectors: {
        'seedAdminAccounts': _i1.MethodConnector(
          name: 'seedAdminAccounts',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['adminSeed'] as _i4.AdminSeedEndpoint)
                  .seedAdminAccounts(session),
        ),
      },
    );
    connectors['appointment'] = _i1.EndpointConnector(
      name: 'appointment',
      endpoint: endpoints['appointment']!,
      methodConnectors: {
        'checkSlotAvailability': _i1.MethodConnector(
          name: 'checkSlotAvailability',
          params: {
            'doctorId': _i1.ParameterDescription(
              name: 'doctorId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'date': _i1.ParameterDescription(
              name: 'date',
              type: _i1.getType<DateTime>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['appointment'] as _i5.AppointmentEndpoint)
                  .checkSlotAvailability(
                    session,
                    doctorId: params['doctorId'],
                    date: params['date'],
                  ),
        ),
        'bookAppointment': _i1.MethodConnector(
          name: 'bookAppointment',
          params: {
            'doctorId': _i1.ParameterDescription(
              name: 'doctorId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'poliId': _i1.ParameterDescription(
              name: 'poliId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'appointmentDate': _i1.ParameterDescription(
              name: 'appointmentDate',
              type: _i1.getType<DateTime>(),
              nullable: false,
            ),
            'timeSlot': _i1.ParameterDescription(
              name: 'timeSlot',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'type': _i1.ParameterDescription(
              name: 'type',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'notes': _i1.ParameterDescription(
              name: 'notes',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['appointment'] as _i5.AppointmentEndpoint)
                  .bookAppointment(
                    session,
                    doctorId: params['doctorId'],
                    poliId: params['poliId'],
                    appointmentDate: params['appointmentDate'],
                    timeSlot: params['timeSlot'],
                    type: params['type'],
                    notes: params['notes'],
                  ),
        ),
        'cancelAppointment': _i1.MethodConnector(
          name: 'cancelAppointment',
          params: {
            'appointmentId': _i1.ParameterDescription(
              name: 'appointmentId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'reason': _i1.ParameterDescription(
              name: 'reason',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['appointment'] as _i5.AppointmentEndpoint)
                  .cancelAppointment(
                    session,
                    params['appointmentId'],
                    reason: params['reason'],
                  ),
        ),
        'getAppointmentDetail': _i1.MethodConnector(
          name: 'getAppointmentDetail',
          params: {
            'appointmentId': _i1.ParameterDescription(
              name: 'appointmentId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['appointment'] as _i5.AppointmentEndpoint)
                  .getAppointmentDetail(
                    session,
                    params['appointmentId'],
                  ),
        ),
        'getAppointmentsByDate': _i1.MethodConnector(
          name: 'getAppointmentsByDate',
          params: {
            'date': _i1.ParameterDescription(
              name: 'date',
              type: _i1.getType<DateTime>(),
              nullable: false,
            ),
            'doctorId': _i1.ParameterDescription(
              name: 'doctorId',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
            'poliId': _i1.ParameterDescription(
              name: 'poliId',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
            'status': _i1.ParameterDescription(
              name: 'status',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['appointment'] as _i5.AppointmentEndpoint)
                  .getAppointmentsByDate(
                    session,
                    date: params['date'],
                    doctorId: params['doctorId'],
                    poliId: params['poliId'],
                    status: params['status'],
                  ),
        ),
      },
    );
    connectors['dataSeed'] = _i1.EndpointConnector(
      name: 'dataSeed',
      endpoint: endpoints['dataSeed']!,
      methodConnectors: {
        'seedAll': _i1.MethodConnector(
          name: 'seedAll',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['dataSeed'] as _i6.DataSeedEndpoint)
                  .seedAll(session),
        ),
        'seedPolis': _i1.MethodConnector(
          name: 'seedPolis',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['dataSeed'] as _i6.DataSeedEndpoint)
                  .seedPolis(session),
        ),
        'seedSpecializations': _i1.MethodConnector(
          name: 'seedSpecializations',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['dataSeed'] as _i6.DataSeedEndpoint)
                  .seedSpecializations(session),
        ),
        'seedDoctors': _i1.MethodConnector(
          name: 'seedDoctors',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['dataSeed'] as _i6.DataSeedEndpoint)
                  .seedDoctors(session),
        ),
        'seedMedicines': _i1.MethodConnector(
          name: 'seedMedicines',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['dataSeed'] as _i6.DataSeedEndpoint)
                  .seedMedicines(session),
        ),
      },
    );
    connectors['doctor'] = _i1.EndpointConnector(
      name: 'doctor',
      endpoint: endpoints['doctor']!,
      methodConnectors: {
        'getAll': _i1.MethodConnector(
          name: 'getAll',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['doctor'] as _i7.DoctorEndpoint).getAll(session),
        ),
        'getById': _i1.MethodConnector(
          name: 'getById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['doctor'] as _i7.DoctorEndpoint).getById(
                session,
                params['id'],
              ),
        ),
        'getByPoliId': _i1.MethodConnector(
          name: 'getByPoliId',
          params: {
            'poliId': _i1.ParameterDescription(
              name: 'poliId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['doctor'] as _i7.DoctorEndpoint).getByPoliId(
                    session,
                    params['poliId'],
                  ),
        ),
        'getBySpecializationId': _i1.MethodConnector(
          name: 'getBySpecializationId',
          params: {
            'specializationId': _i1.ParameterDescription(
              name: 'specializationId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['doctor'] as _i7.DoctorEndpoint)
                  .getBySpecializationId(
                    session,
                    params['specializationId'],
                  ),
        ),
        'searchByName': _i1.MethodConnector(
          name: 'searchByName',
          params: {
            'query': _i1.ParameterDescription(
              name: 'query',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['doctor'] as _i7.DoctorEndpoint).searchByName(
                    session,
                    params['query'],
                  ),
        ),
        'getAvailable': _i1.MethodConnector(
          name: 'getAvailable',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['doctor'] as _i7.DoctorEndpoint)
                  .getAvailable(session),
        ),
        'getAvailableByPoliId': _i1.MethodConnector(
          name: 'getAvailableByPoliId',
          params: {
            'poliId': _i1.ParameterDescription(
              name: 'poliId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['doctor'] as _i7.DoctorEndpoint)
                  .getAvailableByPoliId(
                    session,
                    params['poliId'],
                  ),
        ),
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'doctor': _i1.ParameterDescription(
              name: 'doctor',
              type: _i1.getType<_i15.Doctor>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['doctor'] as _i7.DoctorEndpoint).create(
                session,
                params['doctor'],
              ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'doctor': _i1.ParameterDescription(
              name: 'doctor',
              type: _i1.getType<_i15.Doctor>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['doctor'] as _i7.DoctorEndpoint).update(
                session,
                params['doctor'],
              ),
        ),
        'updateStatus': _i1.MethodConnector(
          name: 'updateStatus',
          params: {
            'doctorId': _i1.ParameterDescription(
              name: 'doctorId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'status': _i1.ParameterDescription(
              name: 'status',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['doctor'] as _i7.DoctorEndpoint).updateStatus(
                    session,
                    params['doctorId'],
                    params['status'],
                  ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['doctor'] as _i7.DoctorEndpoint).delete(
                session,
                params['id'],
              ),
        ),
        'deactivate': _i1.MethodConnector(
          name: 'deactivate',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['doctor'] as _i7.DoctorEndpoint).deactivate(
                session,
                params['id'],
              ),
        ),
      },
    );
    connectors['medicine'] = _i1.EndpointConnector(
      name: 'medicine',
      endpoint: endpoints['medicine']!,
      methodConnectors: {
        'getAll': _i1.MethodConnector(
          name: 'getAll',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['medicine'] as _i8.MedicineEndpoint).getAll(
                session,
              ),
        ),
        'getById': _i1.MethodConnector(
          name: 'getById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['medicine'] as _i8.MedicineEndpoint).getById(
                    session,
                    params['id'],
                  ),
        ),
        'getByCode': _i1.MethodConnector(
          name: 'getByCode',
          params: {
            'code': _i1.ParameterDescription(
              name: 'code',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['medicine'] as _i8.MedicineEndpoint).getByCode(
                    session,
                    params['code'],
                  ),
        ),
        'searchByName': _i1.MethodConnector(
          name: 'searchByName',
          params: {
            'query': _i1.ParameterDescription(
              name: 'query',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['medicine'] as _i8.MedicineEndpoint).searchByName(
                    session,
                    params['query'],
                  ),
        ),
        'getByCategory': _i1.MethodConnector(
          name: 'getByCategory',
          params: {
            'category': _i1.ParameterDescription(
              name: 'category',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['medicine'] as _i8.MedicineEndpoint).getByCategory(
                    session,
                    params['category'],
                  ),
        ),
        'getActive': _i1.MethodConnector(
          name: 'getActive',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['medicine'] as _i8.MedicineEndpoint)
                  .getActive(session),
        ),
        'getPrescriptionRequired': _i1.MethodConnector(
          name: 'getPrescriptionRequired',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['medicine'] as _i8.MedicineEndpoint)
                  .getPrescriptionRequired(session),
        ),
        'getOverTheCounter': _i1.MethodConnector(
          name: 'getOverTheCounter',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['medicine'] as _i8.MedicineEndpoint)
                  .getOverTheCounter(session),
        ),
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'medicine': _i1.ParameterDescription(
              name: 'medicine',
              type: _i1.getType<_i16.Medicine>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['medicine'] as _i8.MedicineEndpoint).create(
                session,
                params['medicine'],
              ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'medicine': _i1.ParameterDescription(
              name: 'medicine',
              type: _i1.getType<_i16.Medicine>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['medicine'] as _i8.MedicineEndpoint).update(
                session,
                params['medicine'],
              ),
        ),
        'updatePrice': _i1.MethodConnector(
          name: 'updatePrice',
          params: {
            'medicineId': _i1.ParameterDescription(
              name: 'medicineId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'newPrice': _i1.ParameterDescription(
              name: 'newPrice',
              type: _i1.getType<double>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['medicine'] as _i8.MedicineEndpoint).updatePrice(
                    session,
                    params['medicineId'],
                    params['newPrice'],
                  ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['medicine'] as _i8.MedicineEndpoint).delete(
                session,
                params['id'],
              ),
        ),
        'deactivate': _i1.MethodConnector(
          name: 'deactivate',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['medicine'] as _i8.MedicineEndpoint).deactivate(
                    session,
                    params['id'],
                  ),
        ),
        'activate': _i1.MethodConnector(
          name: 'activate',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['medicine'] as _i8.MedicineEndpoint).activate(
                    session,
                    params['id'],
                  ),
        ),
      },
    );
    connectors['patient'] = _i1.EndpointConnector(
      name: 'patient',
      endpoint: endpoints['patient']!,
      methodConnectors: {
        'getCurrent': _i1.MethodConnector(
          name: 'getCurrent',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['patient'] as _i9.PatientEndpoint)
                  .getCurrent(session),
        ),
        'getAll': _i1.MethodConnector(
          name: 'getAll',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['patient'] as _i9.PatientEndpoint).getAll(session),
        ),
        'getById': _i1.MethodConnector(
          name: 'getById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['patient'] as _i9.PatientEndpoint).getById(
                session,
                params['id'],
              ),
        ),
        'getByUserId': _i1.MethodConnector(
          name: 'getByUserId',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['patient'] as _i9.PatientEndpoint).getByUserId(
                    session,
                    params['userId'],
                  ),
        ),
        'searchByName': _i1.MethodConnector(
          name: 'searchByName',
          params: {
            'query': _i1.ParameterDescription(
              name: 'query',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['patient'] as _i9.PatientEndpoint).searchByName(
                    session,
                    params['query'],
                  ),
        ),
        'searchByNik': _i1.MethodConnector(
          name: 'searchByNik',
          params: {
            'nik': _i1.ParameterDescription(
              name: 'nik',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['patient'] as _i9.PatientEndpoint).searchByNik(
                    session,
                    params['nik'],
                  ),
        ),
        'getActive': _i1.MethodConnector(
          name: 'getActive',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['patient'] as _i9.PatientEndpoint)
                  .getActive(session),
        ),
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'patient': _i1.ParameterDescription(
              name: 'patient',
              type: _i1.getType<_i17.Patient>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['patient'] as _i9.PatientEndpoint).create(
                session,
                params['patient'],
              ),
        ),
        'createForCurrentUser': _i1.MethodConnector(
          name: 'createForCurrentUser',
          params: {
            'patient': _i1.ParameterDescription(
              name: 'patient',
              type: _i1.getType<_i17.Patient>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['patient'] as _i9.PatientEndpoint)
                  .createForCurrentUser(
                    session,
                    params['patient'],
                  ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'patient': _i1.ParameterDescription(
              name: 'patient',
              type: _i1.getType<_i17.Patient>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['patient'] as _i9.PatientEndpoint).update(
                session,
                params['patient'],
              ),
        ),
        'updateCurrent': _i1.MethodConnector(
          name: 'updateCurrent',
          params: {
            'patient': _i1.ParameterDescription(
              name: 'patient',
              type: _i1.getType<_i17.Patient>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['patient'] as _i9.PatientEndpoint).updateCurrent(
                    session,
                    params['patient'],
                  ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['patient'] as _i9.PatientEndpoint).delete(
                session,
                params['id'],
              ),
        ),
        'deactivate': _i1.MethodConnector(
          name: 'deactivate',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['patient'] as _i9.PatientEndpoint).deactivate(
                    session,
                    params['id'],
                  ),
        ),
      },
    );
    connectors['poli'] = _i1.EndpointConnector(
      name: 'poli',
      endpoint: endpoints['poli']!,
      methodConnectors: {
        'getAll': _i1.MethodConnector(
          name: 'getAll',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['poli'] as _i10.PoliEndpoint).getAll(session),
        ),
        'getById': _i1.MethodConnector(
          name: 'getById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['poli'] as _i10.PoliEndpoint).getById(
                session,
                params['id'],
              ),
        ),
        'getActive': _i1.MethodConnector(
          name: 'getActive',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['poli'] as _i10.PoliEndpoint).getActive(session),
        ),
        'searchByName': _i1.MethodConnector(
          name: 'searchByName',
          params: {
            'query': _i1.ParameterDescription(
              name: 'query',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['poli'] as _i10.PoliEndpoint).searchByName(
                session,
                params['query'],
              ),
        ),
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'poli': _i1.ParameterDescription(
              name: 'poli',
              type: _i1.getType<_i18.Poli>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['poli'] as _i10.PoliEndpoint).create(
                session,
                params['poli'],
              ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'poli': _i1.ParameterDescription(
              name: 'poli',
              type: _i1.getType<_i18.Poli>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['poli'] as _i10.PoliEndpoint).update(
                session,
                params['poli'],
              ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['poli'] as _i10.PoliEndpoint).delete(
                session,
                params['id'],
              ),
        ),
        'deactivate': _i1.MethodConnector(
          name: 'deactivate',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['poli'] as _i10.PoliEndpoint).deactivate(
                session,
                params['id'],
              ),
        ),
      },
    );
    connectors['queue'] = _i1.EndpointConnector(
      name: 'queue',
      endpoint: endpoints['queue']!,
      methodConnectors: {
        'getCurrent': _i1.MethodConnector(
          name: 'getCurrent',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['queue'] as _i11.QueueEndpoint).getCurrent(
                session,
              ),
        ),
        'getAll': _i1.MethodConnector(
          name: 'getAll',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['queue'] as _i11.QueueEndpoint).getAll(session),
        ),
        'getById': _i1.MethodConnector(
          name: 'getById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['queue'] as _i11.QueueEndpoint).getById(
                session,
                params['id'],
              ),
        ),
        'getByAppointmentId': _i1.MethodConnector(
          name: 'getByAppointmentId',
          params: {
            'appointmentId': _i1.ParameterDescription(
              name: 'appointmentId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['queue'] as _i11.QueueEndpoint).getByAppointmentId(
                    session,
                    params['appointmentId'],
                  ),
        ),
        'getActive': _i1.MethodConnector(
          name: 'getActive',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['queue'] as _i11.QueueEndpoint).getActive(session),
        ),
        'getByPoliPrefix': _i1.MethodConnector(
          name: 'getByPoliPrefix',
          params: {
            'prefix': _i1.ParameterDescription(
              name: 'prefix',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['queue'] as _i11.QueueEndpoint).getByPoliPrefix(
                    session,
                    params['prefix'],
                  ),
        ),
        'getActiveByPoliPrefix': _i1.MethodConnector(
          name: 'getActiveByPoliPrefix',
          params: {
            'prefix': _i1.ParameterDescription(
              name: 'prefix',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['queue'] as _i11.QueueEndpoint)
                  .getActiveByPoliPrefix(
                    session,
                    params['prefix'],
                  ),
        ),
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'queue': _i1.ParameterDescription(
              name: 'queue',
              type: _i1.getType<_i19.Queue>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['queue'] as _i11.QueueEndpoint).create(
                session,
                params['queue'],
              ),
        ),
        'createForAppointment': _i1.MethodConnector(
          name: 'createForAppointment',
          params: {
            'appointmentId': _i1.ParameterDescription(
              name: 'appointmentId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'queuePrefix': _i1.ParameterDescription(
              name: 'queuePrefix',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['queue'] as _i11.QueueEndpoint)
                  .createForAppointment(
                    session,
                    appointmentId: params['appointmentId'],
                    queuePrefix: params['queuePrefix'],
                  ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'queue': _i1.ParameterDescription(
              name: 'queue',
              type: _i1.getType<_i19.Queue>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['queue'] as _i11.QueueEndpoint).update(
                session,
                params['queue'],
              ),
        ),
        'updateStatus': _i1.MethodConnector(
          name: 'updateStatus',
          params: {
            'queueId': _i1.ParameterDescription(
              name: 'queueId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'status': _i1.ParameterDescription(
              name: 'status',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['queue'] as _i11.QueueEndpoint).updateStatus(
                    session,
                    params['queueId'],
                    params['status'],
                  ),
        ),
        'callNext': _i1.MethodConnector(
          name: 'callNext',
          params: {
            'queuePrefix': _i1.ParameterDescription(
              name: 'queuePrefix',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['queue'] as _i11.QueueEndpoint).callNext(
                session,
                params['queuePrefix'],
              ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['queue'] as _i11.QueueEndpoint).delete(
                session,
                params['id'],
              ),
        ),
        'skip': _i1.MethodConnector(
          name: 'skip',
          params: {
            'queueId': _i1.ParameterDescription(
              name: 'queueId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['queue'] as _i11.QueueEndpoint).skip(
                session,
                params['queueId'],
              ),
        ),
      },
    );
    connectors['simpleAuth'] = _i1.EndpointConnector(
      name: 'simpleAuth',
      endpoint: endpoints['simpleAuth']!,
      methodConnectors: {
        'register': _i1.MethodConnector(
          name: 'register',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['simpleAuth'] as _i12.SimpleAuthEndpoint).register(
                    session,
                    email: params['email'],
                    password: params['password'],
                  ),
        ),
        'login': _i1.MethodConnector(
          name: 'login',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['simpleAuth'] as _i12.SimpleAuthEndpoint).login(
                    session,
                    email: params['email'],
                    password: params['password'],
                  ),
        ),
        'seedAdminAccounts': _i1.MethodConnector(
          name: 'seedAdminAccounts',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['simpleAuth'] as _i12.SimpleAuthEndpoint)
                  .seedAdminAccounts(session),
        ),
      },
    );
    connectors['specialization'] = _i1.EndpointConnector(
      name: 'specialization',
      endpoint: endpoints['specialization']!,
      methodConnectors: {
        'getAll': _i1.MethodConnector(
          name: 'getAll',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['specialization'] as _i13.SpecializationEndpoint)
                      .getAll(session),
        ),
        'getById': _i1.MethodConnector(
          name: 'getById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['specialization'] as _i13.SpecializationEndpoint)
                      .getById(
                        session,
                        params['id'],
                      ),
        ),
        'searchByName': _i1.MethodConnector(
          name: 'searchByName',
          params: {
            'query': _i1.ParameterDescription(
              name: 'query',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['specialization'] as _i13.SpecializationEndpoint)
                      .searchByName(
                        session,
                        params['query'],
                      ),
        ),
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'specialization': _i1.ParameterDescription(
              name: 'specialization',
              type: _i1.getType<_i20.Specialization>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['specialization'] as _i13.SpecializationEndpoint)
                      .create(
                        session,
                        params['specialization'],
                      ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'specialization': _i1.ParameterDescription(
              name: 'specialization',
              type: _i1.getType<_i20.Specialization>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['specialization'] as _i13.SpecializationEndpoint)
                      .update(
                        session,
                        params['specialization'],
                      ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['specialization'] as _i13.SpecializationEndpoint)
                      .delete(
                        session,
                        params['id'],
                      ),
        ),
      },
    );
    connectors['greeting'] = _i1.EndpointConnector(
      name: 'greeting',
      endpoint: endpoints['greeting']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['greeting'] as _i14.GreetingEndpoint).hello(
                session,
                params['name'],
              ),
        ),
      },
    );
    modules['serverpod_auth_idp'] = _i21.Endpoints()
      ..initializeEndpoints(server);
    modules['serverpod_auth'] = _i22.Endpoints()..initializeEndpoints(server);
    modules['serverpod_auth_core'] = _i23.Endpoints()
      ..initializeEndpoints(server);
  }
}
