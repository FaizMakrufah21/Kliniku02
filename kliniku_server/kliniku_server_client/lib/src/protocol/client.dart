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
import 'package:serverpod_auth_idp_client/serverpod_auth_idp_client.dart'
    as _i1;
import 'package:serverpod_client/serverpod_client.dart' as _i2;
import 'dart:async' as _i3;
import 'package:serverpod_auth_core_client/serverpod_auth_core_client.dart'
    as _i4;
import 'package:kliniku_server_client/src/protocol/appointment.dart' as _i5;
import 'package:kliniku_server_client/src/protocol/doctor.dart' as _i6;
import 'package:kliniku_server_client/src/protocol/medicine.dart' as _i7;
import 'package:kliniku_server_client/src/protocol/patient.dart' as _i8;
import 'package:kliniku_server_client/src/protocol/poli.dart' as _i9;
import 'package:kliniku_server_client/src/protocol/queue.dart' as _i10;
import 'package:kliniku_server_client/src/protocol/specialization.dart' as _i11;
import 'package:kliniku_server_client/src/protocol/greetings/greeting.dart'
    as _i12;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i13;
import 'protocol.dart' as _i14;

/// By extending [EmailIdpBaseEndpoint], the email identity provider endpoints
/// are made available on the server and enable the corresponding sign-in widget
/// on the client.
/// {@category Endpoint}
class EndpointEmailIdp extends _i1.EndpointEmailIdpBase {
  EndpointEmailIdp(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'emailIdp';

  /// Logs in the user and returns a new session.
  ///
  /// Throws an [EmailAccountLoginException] in case of errors, with reason:
  /// - [EmailAccountLoginExceptionReason.invalidCredentials] if the email or
  ///   password is incorrect.
  /// - [EmailAccountLoginExceptionReason.tooManyAttempts] if there have been
  ///   too many failed login attempts.
  ///
  /// Throws an [AuthUserBlockedException] if the auth user is blocked.
  @override
  _i3.Future<_i4.AuthSuccess> login({
    required String email,
    required String password,
  }) => caller.callServerEndpoint<_i4.AuthSuccess>(
    'emailIdp',
    'login',
    {
      'email': email,
      'password': password,
    },
  );

  /// Starts the registration for a new user account with an email-based login
  /// associated to it.
  ///
  /// Upon successful completion of this method, an email will have been
  /// sent to [email] with a verification link, which the user must open to
  /// complete the registration.
  ///
  /// Always returns a account request ID, which can be used to complete the
  /// registration. If the email is already registered, the returned ID will not
  /// be valid.
  @override
  _i3.Future<_i2.UuidValue> startRegistration({required String email}) =>
      caller.callServerEndpoint<_i2.UuidValue>(
        'emailIdp',
        'startRegistration',
        {'email': email},
      );

  /// Verifies an account request code and returns a token
  /// that can be used to complete the account creation.
  ///
  /// Throws an [EmailAccountRequestException] in case of errors, with reason:
  /// - [EmailAccountRequestExceptionReason.expired] if the account request has
  ///   already expired.
  /// - [EmailAccountRequestExceptionReason.policyViolation] if the password
  ///   does not comply with the password policy.
  /// - [EmailAccountRequestExceptionReason.invalid] if no request exists
  ///   for the given [accountRequestId] or [verificationCode] is invalid.
  @override
  _i3.Future<String> verifyRegistrationCode({
    required _i2.UuidValue accountRequestId,
    required String verificationCode,
  }) => caller.callServerEndpoint<String>(
    'emailIdp',
    'verifyRegistrationCode',
    {
      'accountRequestId': accountRequestId,
      'verificationCode': verificationCode,
    },
  );

  /// Completes a new account registration, creating a new auth user with a
  /// profile and attaching the given email account to it.
  ///
  /// Throws an [EmailAccountRequestException] in case of errors, with reason:
  /// - [EmailAccountRequestExceptionReason.expired] if the account request has
  ///   already expired.
  /// - [EmailAccountRequestExceptionReason.policyViolation] if the password
  ///   does not comply with the password policy.
  /// - [EmailAccountRequestExceptionReason.invalid] if the [registrationToken]
  ///   is invalid.
  ///
  /// Throws an [AuthUserBlockedException] if the auth user is blocked.
  ///
  /// Returns a session for the newly created user.
  @override
  _i3.Future<_i4.AuthSuccess> finishRegistration({
    required String registrationToken,
    required String password,
  }) => caller.callServerEndpoint<_i4.AuthSuccess>(
    'emailIdp',
    'finishRegistration',
    {
      'registrationToken': registrationToken,
      'password': password,
    },
  );

  /// Requests a password reset for [email].
  ///
  /// If the email address is registered, an email with reset instructions will
  /// be send out. If the email is unknown, this method will have no effect.
  ///
  /// Always returns a password reset request ID, which can be used to complete
  /// the reset. If the email is not registered, the returned ID will not be
  /// valid.
  ///
  /// Throws an [EmailAccountPasswordResetException] in case of errors, with reason:
  /// - [EmailAccountPasswordResetExceptionReason.tooManyAttempts] if the user has
  ///   made too many attempts trying to request a password reset.
  ///
  @override
  _i3.Future<_i2.UuidValue> startPasswordReset({required String email}) =>
      caller.callServerEndpoint<_i2.UuidValue>(
        'emailIdp',
        'startPasswordReset',
        {'email': email},
      );

  /// Verifies a password reset code and returns a finishPasswordResetToken
  /// that can be used to finish the password reset.
  ///
  /// Throws an [EmailAccountPasswordResetException] in case of errors, with reason:
  /// - [EmailAccountPasswordResetExceptionReason.expired] if the password reset
  ///   request has already expired.
  /// - [EmailAccountPasswordResetExceptionReason.tooManyAttempts] if the user has
  ///   made too many attempts trying to verify the password reset.
  /// - [EmailAccountPasswordResetExceptionReason.invalid] if no request exists
  ///   for the given [passwordResetRequestId] or [verificationCode] is invalid.
  ///
  /// If multiple steps are required to complete the password reset, this endpoint
  /// should be overridden to return credentials for the next step instead
  /// of the credentials for setting the password.
  @override
  _i3.Future<String> verifyPasswordResetCode({
    required _i2.UuidValue passwordResetRequestId,
    required String verificationCode,
  }) => caller.callServerEndpoint<String>(
    'emailIdp',
    'verifyPasswordResetCode',
    {
      'passwordResetRequestId': passwordResetRequestId,
      'verificationCode': verificationCode,
    },
  );

  /// Completes a password reset request by setting a new password.
  ///
  /// The [verificationCode] returned from [verifyPasswordResetCode] is used to
  /// validate the password reset request.
  ///
  /// Throws an [EmailAccountPasswordResetException] in case of errors, with reason:
  /// - [EmailAccountPasswordResetExceptionReason.expired] if the password reset
  ///   request has already expired.
  /// - [EmailAccountPasswordResetExceptionReason.policyViolation] if the new
  ///   password does not comply with the password policy.
  /// - [EmailAccountPasswordResetExceptionReason.invalid] if no request exists
  ///   for the given [passwordResetRequestId] or [verificationCode] is invalid.
  ///
  /// Throws an [AuthUserBlockedException] if the auth user is blocked.
  @override
  _i3.Future<void> finishPasswordReset({
    required String finishPasswordResetToken,
    required String newPassword,
  }) => caller.callServerEndpoint<void>(
    'emailIdp',
    'finishPasswordReset',
    {
      'finishPasswordResetToken': finishPasswordResetToken,
      'newPassword': newPassword,
    },
  );
}

/// By extending [RefreshJwtTokensEndpoint], the JWT token refresh endpoint
/// is made available on the server and enables automatic token refresh on the client.
/// {@category Endpoint}
class EndpointJwtRefresh extends _i4.EndpointRefreshJwtTokens {
  EndpointJwtRefresh(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'jwtRefresh';

  /// Creates a new token pair for the given [refreshToken].
  ///
  /// Can throw the following exceptions:
  /// -[RefreshTokenMalformedException]: refresh token is malformed and could
  ///   not be parsed. Not expected to happen for tokens issued by the server.
  /// -[RefreshTokenNotFoundException]: refresh token is unknown to the server.
  ///   Either the token was deleted or generated by a different server.
  /// -[RefreshTokenExpiredException]: refresh token has expired. Will happen
  ///   only if it has not been used within configured `refreshTokenLifetime`.
  /// -[RefreshTokenInvalidSecretException]: refresh token is incorrect, meaning
  ///   it does not refer to the current secret refresh token. This indicates
  ///   either a malfunctioning client or a malicious attempt by someone who has
  ///   obtained the refresh token. In this case the underlying refresh token
  ///   will be deleted, and access to it will expire fully when the last access
  ///   token is elapsed.
  ///
  /// This endpoint is unauthenticated, meaning the client won't include any
  /// authentication information with the call.
  @override
  _i3.Future<_i4.AuthSuccess> refreshAccessToken({
    required String refreshToken,
  }) => caller.callServerEndpoint<_i4.AuthSuccess>(
    'jwtRefresh',
    'refreshAccessToken',
    {'refreshToken': refreshToken},
    authenticated: false,
  );
}

/// Endpoint for seeding admin accounts
/// {@category Endpoint}
class EndpointAdminSeed extends _i2.EndpointRef {
  EndpointAdminSeed(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'adminSeed';

  /// Seeds 3 admin accounts for initial setup
  /// Returns list of created admin emails
  _i3.Future<List<String>> seedAdminAccounts() =>
      caller.callServerEndpoint<List<String>>(
        'adminSeed',
        'seedAdminAccounts',
        {},
      );
}

/// {@category Endpoint}
class EndpointAppointment extends _i2.EndpointRef {
  EndpointAppointment(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'appointment';

  /// Check slot availability
  _i3.Future<List<String>> checkSlotAvailability({
    required int doctorId,
    required DateTime date,
  }) => caller.callServerEndpoint<List<String>>(
    'appointment',
    'checkSlotAvailability',
    {
      'doctorId': doctorId,
      'date': date,
    },
  );

  /// Book appointment
  _i3.Future<_i5.Appointment> bookAppointment({
    required int doctorId,
    required int poliId,
    required DateTime appointmentDate,
    required String timeSlot,
    required String type,
    String? notes,
  }) => caller.callServerEndpoint<_i5.Appointment>(
    'appointment',
    'bookAppointment',
    {
      'doctorId': doctorId,
      'poliId': poliId,
      'appointmentDate': appointmentDate,
      'timeSlot': timeSlot,
      'type': type,
      'notes': notes,
    },
  );

  /// Cancel appointment
  _i3.Future<bool> cancelAppointment(
    int appointmentId, {
    required String reason,
  }) => caller.callServerEndpoint<bool>(
    'appointment',
    'cancelAppointment',
    {
      'appointmentId': appointmentId,
      'reason': reason,
    },
  );

  /// Get appointment details
  _i3.Future<_i5.Appointment?> getAppointmentDetail(int appointmentId) =>
      caller.callServerEndpoint<_i5.Appointment?>(
        'appointment',
        'getAppointmentDetail',
        {'appointmentId': appointmentId},
      );

  /// Get all appointments for a date
  _i3.Future<List<_i5.Appointment>> getAppointmentsByDate({
    required DateTime date,
    int? doctorId,
    int? poliId,
    String? status,
  }) => caller.callServerEndpoint<List<_i5.Appointment>>(
    'appointment',
    'getAppointmentsByDate',
    {
      'date': date,
      'doctorId': doctorId,
      'poliId': poliId,
      'status': status,
    },
  );
}

/// Endpoint for seeding initial data into the database.
/// Used for development and initial setup.
/// {@category Endpoint}
class EndpointDataSeed extends _i2.EndpointRef {
  EndpointDataSeed(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'dataSeed';

  /// Seed all initial data
  _i3.Future<Map<String, int>> seedAll() =>
      caller.callServerEndpoint<Map<String, int>>(
        'dataSeed',
        'seedAll',
        {},
      );

  /// Seed Poli data
  _i3.Future<int> seedPolis() => caller.callServerEndpoint<int>(
    'dataSeed',
    'seedPolis',
    {},
  );

  /// Seed Specialization data
  _i3.Future<int> seedSpecializations() => caller.callServerEndpoint<int>(
    'dataSeed',
    'seedSpecializations',
    {},
  );

  /// Seed Doctor data
  _i3.Future<int> seedDoctors() => caller.callServerEndpoint<int>(
    'dataSeed',
    'seedDoctors',
    {},
  );

  /// Seed Medicine data
  _i3.Future<int> seedMedicines() => caller.callServerEndpoint<int>(
    'dataSeed',
    'seedMedicines',
    {},
  );
}

/// Endpoint for managing Doctor data with full CRUD operations.
/// {@category Endpoint}
class EndpointDoctor extends _i2.EndpointRef {
  EndpointDoctor(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'doctor';

  /// Get all doctors
  _i3.Future<List<_i6.Doctor>> getAll() =>
      caller.callServerEndpoint<List<_i6.Doctor>>(
        'doctor',
        'getAll',
        {},
      );

  /// Get doctor by ID
  _i3.Future<_i6.Doctor?> getById(int id) =>
      caller.callServerEndpoint<_i6.Doctor?>(
        'doctor',
        'getById',
        {'id': id},
      );

  /// Get all doctors in a specific poli
  _i3.Future<List<_i6.Doctor>> getByPoliId(int poliId) =>
      caller.callServerEndpoint<List<_i6.Doctor>>(
        'doctor',
        'getByPoliId',
        {'poliId': poliId},
      );

  /// Get all doctors with a specific specialization
  _i3.Future<List<_i6.Doctor>> getBySpecializationId(int specializationId) =>
      caller.callServerEndpoint<List<_i6.Doctor>>(
        'doctor',
        'getBySpecializationId',
        {'specializationId': specializationId},
      );

  /// Search doctors by name
  _i3.Future<List<_i6.Doctor>> searchByName(String query) =>
      caller.callServerEndpoint<List<_i6.Doctor>>(
        'doctor',
        'searchByName',
        {'query': query},
      );

  /// Get all available (active) doctors
  _i3.Future<List<_i6.Doctor>> getAvailable() =>
      caller.callServerEndpoint<List<_i6.Doctor>>(
        'doctor',
        'getAvailable',
        {},
      );

  /// Get available doctors in a specific poli
  _i3.Future<List<_i6.Doctor>> getAvailableByPoliId(int poliId) =>
      caller.callServerEndpoint<List<_i6.Doctor>>(
        'doctor',
        'getAvailableByPoliId',
        {'poliId': poliId},
      );

  /// Create a new doctor
  _i3.Future<_i6.Doctor> create(_i6.Doctor doctor) =>
      caller.callServerEndpoint<_i6.Doctor>(
        'doctor',
        'create',
        {'doctor': doctor},
      );

  /// Update an existing doctor
  _i3.Future<_i6.Doctor> update(_i6.Doctor doctor) =>
      caller.callServerEndpoint<_i6.Doctor>(
        'doctor',
        'update',
        {'doctor': doctor},
      );

  /// Update doctor status
  _i3.Future<_i6.Doctor> updateStatus(
    int doctorId,
    String status,
  ) => caller.callServerEndpoint<_i6.Doctor>(
    'doctor',
    'updateStatus',
    {
      'doctorId': doctorId,
      'status': status,
    },
  );

  /// Delete a doctor by ID
  _i3.Future<bool> delete(int id) => caller.callServerEndpoint<bool>(
    'doctor',
    'delete',
    {'id': id},
  );

  /// Soft delete - set doctor as inactive
  _i3.Future<bool> deactivate(int id) => caller.callServerEndpoint<bool>(
    'doctor',
    'deactivate',
    {'id': id},
  );
}

/// Endpoint for managing Medicine data with full CRUD operations.
/// {@category Endpoint}
class EndpointMedicine extends _i2.EndpointRef {
  EndpointMedicine(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'medicine';

  /// Get all medicines
  _i3.Future<List<_i7.Medicine>> getAll() =>
      caller.callServerEndpoint<List<_i7.Medicine>>(
        'medicine',
        'getAll',
        {},
      );

  /// Get medicine by ID
  _i3.Future<_i7.Medicine?> getById(int id) =>
      caller.callServerEndpoint<_i7.Medicine?>(
        'medicine',
        'getById',
        {'id': id},
      );

  /// Get medicine by code
  _i3.Future<_i7.Medicine?> getByCode(String code) =>
      caller.callServerEndpoint<_i7.Medicine?>(
        'medicine',
        'getByCode',
        {'code': code},
      );

  /// Search medicines by name
  _i3.Future<List<_i7.Medicine>> searchByName(String query) =>
      caller.callServerEndpoint<List<_i7.Medicine>>(
        'medicine',
        'searchByName',
        {'query': query},
      );

  /// Get medicines by category
  _i3.Future<List<_i7.Medicine>> getByCategory(String category) =>
      caller.callServerEndpoint<List<_i7.Medicine>>(
        'medicine',
        'getByCategory',
        {'category': category},
      );

  /// Get active medicines
  _i3.Future<List<_i7.Medicine>> getActive() =>
      caller.callServerEndpoint<List<_i7.Medicine>>(
        'medicine',
        'getActive',
        {},
      );

  /// Get medicines that require prescription
  _i3.Future<List<_i7.Medicine>> getPrescriptionRequired() =>
      caller.callServerEndpoint<List<_i7.Medicine>>(
        'medicine',
        'getPrescriptionRequired',
        {},
      );

  /// Get over-the-counter medicines (no prescription required)
  _i3.Future<List<_i7.Medicine>> getOverTheCounter() =>
      caller.callServerEndpoint<List<_i7.Medicine>>(
        'medicine',
        'getOverTheCounter',
        {},
      );

  /// Create a new medicine
  _i3.Future<_i7.Medicine> create(_i7.Medicine medicine) =>
      caller.callServerEndpoint<_i7.Medicine>(
        'medicine',
        'create',
        {'medicine': medicine},
      );

  /// Update an existing medicine
  _i3.Future<_i7.Medicine> update(_i7.Medicine medicine) =>
      caller.callServerEndpoint<_i7.Medicine>(
        'medicine',
        'update',
        {'medicine': medicine},
      );

  /// Update medicine price
  _i3.Future<_i7.Medicine> updatePrice(
    int medicineId,
    double newPrice,
  ) => caller.callServerEndpoint<_i7.Medicine>(
    'medicine',
    'updatePrice',
    {
      'medicineId': medicineId,
      'newPrice': newPrice,
    },
  );

  /// Delete a medicine by ID
  _i3.Future<bool> delete(int id) => caller.callServerEndpoint<bool>(
    'medicine',
    'delete',
    {'id': id},
  );

  /// Soft delete - set medicine as inactive
  _i3.Future<bool> deactivate(int id) => caller.callServerEndpoint<bool>(
    'medicine',
    'deactivate',
    {'id': id},
  );

  /// Reactivate a deactivated medicine
  _i3.Future<bool> activate(int id) => caller.callServerEndpoint<bool>(
    'medicine',
    'activate',
    {'id': id},
  );
}

/// Endpoint for managing Patient data with full CRUD operations.
/// {@category Endpoint}
class EndpointPatient extends _i2.EndpointRef {
  EndpointPatient(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'patient';

  /// Get current patient profile for the logged-in user.
  /// Uses session.auth to get authenticated user ID.
  _i3.Future<_i8.Patient?> getCurrent() =>
      caller.callServerEndpoint<_i8.Patient?>(
        'patient',
        'getCurrent',
        {},
      );

  /// Get all patients (Admin only)
  _i3.Future<List<_i8.Patient>> getAll() =>
      caller.callServerEndpoint<List<_i8.Patient>>(
        'patient',
        'getAll',
        {},
      );

  /// Get patient by ID
  _i3.Future<_i8.Patient?> getById(int id) =>
      caller.callServerEndpoint<_i8.Patient?>(
        'patient',
        'getById',
        {'id': id},
      );

  /// Get patient by user ID
  _i3.Future<_i8.Patient?> getByUserId(int userId) =>
      caller.callServerEndpoint<_i8.Patient?>(
        'patient',
        'getByUserId',
        {'userId': userId},
      );

  /// Search patients by name (Admin only)
  _i3.Future<List<_i8.Patient>> searchByName(String query) =>
      caller.callServerEndpoint<List<_i8.Patient>>(
        'patient',
        'searchByName',
        {'query': query},
      );

  /// Search patient by NIK (Admin only)
  _i3.Future<_i8.Patient?> searchByNik(String nik) =>
      caller.callServerEndpoint<_i8.Patient?>(
        'patient',
        'searchByNik',
        {'nik': nik},
      );

  /// Get active patients
  _i3.Future<List<_i8.Patient>> getActive() =>
      caller.callServerEndpoint<List<_i8.Patient>>(
        'patient',
        'getActive',
        {},
      );

  /// Create a new patient profile
  _i3.Future<_i8.Patient> create(_i8.Patient patient) =>
      caller.callServerEndpoint<_i8.Patient>(
        'patient',
        'create',
        {'patient': patient},
      );

  /// Create patient profile for current logged-in user
  _i3.Future<_i8.Patient> createForCurrentUser(_i8.Patient patient) =>
      caller.callServerEndpoint<_i8.Patient>(
        'patient',
        'createForCurrentUser',
        {'patient': patient},
      );

  /// Update an existing patient
  _i3.Future<_i8.Patient> update(_i8.Patient patient) =>
      caller.callServerEndpoint<_i8.Patient>(
        'patient',
        'update',
        {'patient': patient},
      );

  /// Update current patient profile
  _i3.Future<_i8.Patient> updateCurrent(_i8.Patient patient) =>
      caller.callServerEndpoint<_i8.Patient>(
        'patient',
        'updateCurrent',
        {'patient': patient},
      );

  /// Delete a patient by ID (Admin only)
  _i3.Future<bool> delete(int id) => caller.callServerEndpoint<bool>(
    'patient',
    'delete',
    {'id': id},
  );

  /// Soft delete - set patient as inactive
  _i3.Future<bool> deactivate(int id) => caller.callServerEndpoint<bool>(
    'patient',
    'deactivate',
    {'id': id},
  );
}

/// Endpoint for managing Poli (Polyclinic) data with full CRUD operations.
/// {@category Endpoint}
class EndpointPoli extends _i2.EndpointRef {
  EndpointPoli(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'poli';

  /// Get all polis
  _i3.Future<List<_i9.Poli>> getAll() =>
      caller.callServerEndpoint<List<_i9.Poli>>(
        'poli',
        'getAll',
        {},
      );

  /// Get poli by ID
  _i3.Future<_i9.Poli?> getById(int id) => caller.callServerEndpoint<_i9.Poli?>(
    'poli',
    'getById',
    {'id': id},
  );

  /// Get all active polis
  _i3.Future<List<_i9.Poli>> getActive() =>
      caller.callServerEndpoint<List<_i9.Poli>>(
        'poli',
        'getActive',
        {},
      );

  /// Search polis by name
  _i3.Future<List<_i9.Poli>> searchByName(String query) =>
      caller.callServerEndpoint<List<_i9.Poli>>(
        'poli',
        'searchByName',
        {'query': query},
      );

  /// Create a new poli
  _i3.Future<_i9.Poli> create(_i9.Poli poli) =>
      caller.callServerEndpoint<_i9.Poli>(
        'poli',
        'create',
        {'poli': poli},
      );

  /// Update an existing poli
  _i3.Future<_i9.Poli> update(_i9.Poli poli) =>
      caller.callServerEndpoint<_i9.Poli>(
        'poli',
        'update',
        {'poli': poli},
      );

  /// Delete a poli by ID
  _i3.Future<bool> delete(int id) => caller.callServerEndpoint<bool>(
    'poli',
    'delete',
    {'id': id},
  );

  /// Soft delete - set poli as inactive instead of deleting
  _i3.Future<bool> deactivate(int id) => caller.callServerEndpoint<bool>(
    'poli',
    'deactivate',
    {'id': id},
  );
}

/// Endpoint for managing Queue data with full CRUD operations.
/// {@category Endpoint}
class EndpointQueue extends _i2.EndpointRef {
  EndpointQueue(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'queue';

  /// Get current queue for logged-in user's active appointment
  _i3.Future<_i10.Queue?> getCurrent() =>
      caller.callServerEndpoint<_i10.Queue?>(
        'queue',
        'getCurrent',
        {},
      );

  /// Get all queues
  _i3.Future<List<_i10.Queue>> getAll() =>
      caller.callServerEndpoint<List<_i10.Queue>>(
        'queue',
        'getAll',
        {},
      );

  /// Get queue by ID
  _i3.Future<_i10.Queue?> getById(int id) =>
      caller.callServerEndpoint<_i10.Queue?>(
        'queue',
        'getById',
        {'id': id},
      );

  /// Get queue by appointment ID
  _i3.Future<_i10.Queue?> getByAppointmentId(int appointmentId) =>
      caller.callServerEndpoint<_i10.Queue?>(
        'queue',
        'getByAppointmentId',
        {'appointmentId': appointmentId},
      );

  /// Get active queues (waiting, called, or serving)
  _i3.Future<List<_i10.Queue>> getActive() =>
      caller.callServerEndpoint<List<_i10.Queue>>(
        'queue',
        'getActive',
        {},
      );

  /// Get queues by poli prefix (e.g., "A" for Umum, "B" for Gigi)
  _i3.Future<List<_i10.Queue>> getByPoliPrefix(String prefix) =>
      caller.callServerEndpoint<List<_i10.Queue>>(
        'queue',
        'getByPoliPrefix',
        {'prefix': prefix},
      );

  /// Get active queues by poli prefix
  _i3.Future<List<_i10.Queue>> getActiveByPoliPrefix(String prefix) =>
      caller.callServerEndpoint<List<_i10.Queue>>(
        'queue',
        'getActiveByPoliPrefix',
        {'prefix': prefix},
      );

  /// Create a new queue entry for an appointment
  _i3.Future<_i10.Queue> create(_i10.Queue queue) =>
      caller.callServerEndpoint<_i10.Queue>(
        'queue',
        'create',
        {'queue': queue},
      );

  /// Create queue automatically when appointment is confirmed
  _i3.Future<_i10.Queue> createForAppointment({
    required int appointmentId,
    required String queuePrefix,
  }) => caller.callServerEndpoint<_i10.Queue>(
    'queue',
    'createForAppointment',
    {
      'appointmentId': appointmentId,
      'queuePrefix': queuePrefix,
    },
  );

  /// Update a queue entry
  _i3.Future<_i10.Queue> update(_i10.Queue queue) =>
      caller.callServerEndpoint<_i10.Queue>(
        'queue',
        'update',
        {'queue': queue},
      );

  /// Update queue status
  _i3.Future<_i10.Queue> updateStatus(
    int queueId,
    String status,
  ) => caller.callServerEndpoint<_i10.Queue>(
    'queue',
    'updateStatus',
    {
      'queueId': queueId,
      'status': status,
    },
  );

  /// Call next queue in a specific poli (Admin operation)
  _i3.Future<_i10.Queue?> callNext(String queuePrefix) =>
      caller.callServerEndpoint<_i10.Queue?>(
        'queue',
        'callNext',
        {'queuePrefix': queuePrefix},
      );

  /// Delete a queue entry by ID
  _i3.Future<bool> delete(int id) => caller.callServerEndpoint<bool>(
    'queue',
    'delete',
    {'id': id},
  );

  /// Skip a queue (mark as skipped instead of deleting)
  _i3.Future<bool> skip(int queueId) => caller.callServerEndpoint<bool>(
    'queue',
    'skip',
    {'queueId': queueId},
  );
}

/// Simple authentication endpoint for development.
/// Provides direct user creation without email verification.
/// {@category Endpoint}
class EndpointSimpleAuth extends _i2.EndpointRef {
  EndpointSimpleAuth(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'simpleAuth';

  /// Register a new user directly without email verification.
  /// For development/testing purposes only.
  _i3.Future<bool> register({
    required String email,
    required String password,
  }) => caller.callServerEndpoint<bool>(
    'simpleAuth',
    'register',
    {
      'email': email,
      'password': password,
    },
  );

  /// Login with email and password.
  /// Returns user ID on success.
  _i3.Future<int> login({
    required String email,
    required String password,
  }) => caller.callServerEndpoint<int>(
    'simpleAuth',
    'login',
    {
      'email': email,
      'password': password,
    },
  );

  /// Seeds 3 admin accounts.
  _i3.Future<List<String>> seedAdminAccounts() =>
      caller.callServerEndpoint<List<String>>(
        'simpleAuth',
        'seedAdminAccounts',
        {},
      );
}

/// Endpoint for managing Specialization data with CRUD operations.
/// {@category Endpoint}
class EndpointSpecialization extends _i2.EndpointRef {
  EndpointSpecialization(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'specialization';

  /// Get all specializations
  _i3.Future<List<_i11.Specialization>> getAll() =>
      caller.callServerEndpoint<List<_i11.Specialization>>(
        'specialization',
        'getAll',
        {},
      );

  /// Get specialization by ID
  _i3.Future<_i11.Specialization?> getById(int id) =>
      caller.callServerEndpoint<_i11.Specialization?>(
        'specialization',
        'getById',
        {'id': id},
      );

  /// Search specializations by name
  _i3.Future<List<_i11.Specialization>> searchByName(String query) =>
      caller.callServerEndpoint<List<_i11.Specialization>>(
        'specialization',
        'searchByName',
        {'query': query},
      );

  /// Create a new specialization
  _i3.Future<_i11.Specialization> create(_i11.Specialization specialization) =>
      caller.callServerEndpoint<_i11.Specialization>(
        'specialization',
        'create',
        {'specialization': specialization},
      );

  /// Update an existing specialization
  _i3.Future<_i11.Specialization> update(_i11.Specialization specialization) =>
      caller.callServerEndpoint<_i11.Specialization>(
        'specialization',
        'update',
        {'specialization': specialization},
      );

  /// Delete a specialization by ID
  _i3.Future<bool> delete(int id) => caller.callServerEndpoint<bool>(
    'specialization',
    'delete',
    {'id': id},
  );
}

/// This is an example endpoint that returns a greeting message through
/// its [hello] method.
/// {@category Endpoint}
class EndpointGreeting extends _i2.EndpointRef {
  EndpointGreeting(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'greeting';

  /// Returns a personalized greeting message: "Hello {name}".
  _i3.Future<_i12.Greeting> hello(String name) =>
      caller.callServerEndpoint<_i12.Greeting>(
        'greeting',
        'hello',
        {'name': name},
      );
}

class Modules {
  Modules(Client client) {
    serverpod_auth_idp = _i1.Caller(client);
    auth = _i13.Caller(client);
    serverpod_auth_core = _i4.Caller(client);
  }

  late final _i1.Caller serverpod_auth_idp;

  late final _i13.Caller auth;

  late final _i4.Caller serverpod_auth_core;
}

class Client extends _i2.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    @Deprecated(
      'Use authKeyProvider instead. This will be removed in future releases.',
    )
    super.authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i2.MethodCallContext,
      Object,
      StackTrace,
    )?
    onFailedCall,
    Function(_i2.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
         host,
         _i14.Protocol(),
         securityContext: securityContext,
         streamingConnectionTimeout: streamingConnectionTimeout,
         connectionTimeout: connectionTimeout,
         onFailedCall: onFailedCall,
         onSucceededCall: onSucceededCall,
         disconnectStreamsOnLostInternetConnection:
             disconnectStreamsOnLostInternetConnection,
       ) {
    emailIdp = EndpointEmailIdp(this);
    jwtRefresh = EndpointJwtRefresh(this);
    adminSeed = EndpointAdminSeed(this);
    appointment = EndpointAppointment(this);
    dataSeed = EndpointDataSeed(this);
    doctor = EndpointDoctor(this);
    medicine = EndpointMedicine(this);
    patient = EndpointPatient(this);
    poli = EndpointPoli(this);
    queue = EndpointQueue(this);
    simpleAuth = EndpointSimpleAuth(this);
    specialization = EndpointSpecialization(this);
    greeting = EndpointGreeting(this);
    modules = Modules(this);
  }

  late final EndpointEmailIdp emailIdp;

  late final EndpointJwtRefresh jwtRefresh;

  late final EndpointAdminSeed adminSeed;

  late final EndpointAppointment appointment;

  late final EndpointDataSeed dataSeed;

  late final EndpointDoctor doctor;

  late final EndpointMedicine medicine;

  late final EndpointPatient patient;

  late final EndpointPoli poli;

  late final EndpointQueue queue;

  late final EndpointSimpleAuth simpleAuth;

  late final EndpointSpecialization specialization;

  late final EndpointGreeting greeting;

  late final Modules modules;

  @override
  Map<String, _i2.EndpointRef> get endpointRefLookup => {
    'emailIdp': emailIdp,
    'jwtRefresh': jwtRefresh,
    'adminSeed': adminSeed,
    'appointment': appointment,
    'dataSeed': dataSeed,
    'doctor': doctor,
    'medicine': medicine,
    'patient': patient,
    'poli': poli,
    'queue': queue,
    'simpleAuth': simpleAuth,
    'specialization': specialization,
    'greeting': greeting,
  };

  @override
  Map<String, _i2.ModuleEndpointCaller> get moduleLookup => {
    'serverpod_auth_idp': modules.serverpod_auth_idp,
    'auth': modules.auth,
    'serverpod_auth_core': modules.serverpod_auth_core,
  };
}
