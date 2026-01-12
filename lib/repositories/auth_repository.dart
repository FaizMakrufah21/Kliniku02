import 'package:kliniku_server_client/kliniku_server_client.dart';
import 'package:serverpod_auth_client/serverpod_auth_client.dart' show UserInfo;
import '../main.dart'; // import client and sessionManager

/// Repository for handling authentication operations with Serverpod.
/// Wraps the email identity provider endpoints for sign in, sign up,
/// and password reset flows.
class AuthRepository {
  final Client _client;

  AuthRepository(this._client);

  /// Signs in a user with email and password.
  /// Returns the signed-in UserInfo on success.
  /// Throws exceptions for invalid credentials or too many attempts.
  Future<UserInfo?> signIn({
    required String email,
    required String password,
  }) async {
    try {
      // Use SimpleAuthEndpoint for login (doesn't require email verification)
      final userId = await _client.simpleAuth.login(
        email: email,
        password: password,
      );
      if (userId > 0) {
        // Login successful, refresh session
        await sessionManager.refreshSession();
        return sessionManager.signedInUser;
      }
      throw Exception('Login failed');
    } catch (e) {
      throw Exception('Login failed: $e');
    }
  }

  /// Starts the registration process by sending a verification email.
  /// Returns a request ID to be used in subsequent verification steps.
  Future<UuidValue> startRegistration({required String email}) async {
    try {
      return await _client.emailIdp.startRegistration(email: email);
    } catch (e) {
      throw Exception('Failed to start registration: $e');
    }
  }

  /// Verifies the registration code sent to the user's email.
  /// Returns a registration token to complete the registration.
  Future<String> verifyRegistrationCode({
    required UuidValue accountRequestId,
    required String verificationCode,
  }) async {
    try {
      return await _client.emailIdp.verifyRegistrationCode(
        accountRequestId: accountRequestId,
        verificationCode: verificationCode,
      );
    } catch (e) {
      throw Exception('Failed to verify registration code: $e');
    }
  }

  /// Completes the registration with the token and password.
  /// Returns the signed-in UserInfo on success.
  Future<UserInfo?> finishRegistration({
    required String registrationToken,
    required String password,
  }) async {
    try {
      await _client.emailIdp.finishRegistration(
        registrationToken: registrationToken,
        password: password,
      );
      // Wait for the session to be updated
      await sessionManager.refreshSession();
      return sessionManager.signedInUser;
    } catch (e) {
      throw Exception('Failed to complete registration: $e');
    }
  }

  /// Initiates the password reset process by sending an email.
  /// Returns a request ID to be used in subsequent verification steps.
  Future<UuidValue> startPasswordReset({required String email}) async {
    try {
      return await _client.emailIdp.startPasswordReset(email: email);
    } catch (e) {
      throw Exception('Failed to start password reset: $e');
    }
  }

  /// Verifies the password reset code sent to the user's email.
  /// Returns a token to complete the password reset.
  Future<String> verifyPasswordResetCode({
    required UuidValue passwordResetRequestId,
    required String verificationCode,
  }) async {
    try {
      return await _client.emailIdp.verifyPasswordResetCode(
        passwordResetRequestId: passwordResetRequestId,
        verificationCode: verificationCode,
      );
    } catch (e) {
      throw Exception('Failed to verify password reset code: $e');
    }
  }

  /// Completes the password reset with a new password.
  Future<void> finishPasswordReset({
    required String finishPasswordResetToken,
    required String newPassword,
  }) async {
    try {
      await _client.emailIdp.finishPasswordReset(
        finishPasswordResetToken: finishPasswordResetToken,
        newPassword: newPassword,
      );
    } catch (e) {
      throw Exception('Failed to complete password reset: $e');
    }
  }

  /// Signs out the current user from current device.
  Future<bool> signOut() async {
    try {
      return await sessionManager.signOutDevice();
    } catch (e) {
      throw Exception('Failed to sign out: $e');
    }
  }

  /// Signs out the current user from all devices.
  Future<bool> signOutAllDevices() async {
    try {
      return await sessionManager.signOutAllDevices();
    } catch (e) {
      throw Exception('Failed to sign out from all devices: $e');
    }
  }

  /// Checks if the user is currently signed in.
  bool get isSignedIn => sessionManager.isSignedIn;

  /// Gets the current user info if signed in.
  UserInfo? get currentUser => sessionManager.signedInUser;
}
