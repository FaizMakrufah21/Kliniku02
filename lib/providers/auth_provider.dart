import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kliniku_server_client/kliniku_server_client.dart';
import 'package:serverpod_auth_client/serverpod_auth_client.dart' show UserInfo;
import '../repositories/auth_repository.dart';
import '../main.dart'; // import client and sessionManager

part 'auth_provider.g.dart';

/// Provides the AuthRepository instance
@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepository(client);
}

/// Enum representing different authentication states
enum AuthStatus { initial, loading, authenticated, unauthenticated, error }

/// State class for authentication
class AuthState {
  final AuthStatus status;
  final UserInfo? user;
  final String? errorMessage;

  const AuthState({
    this.status = AuthStatus.initial,
    this.user,
    this.errorMessage,
  });

  AuthState copyWith({
    AuthStatus? status,
    UserInfo? user,
    String? errorMessage,
  }) {
    return AuthState(
      status: status ?? this.status,
      user: user ?? this.user,
      errorMessage: errorMessage,
    );
  }

  bool get isAuthenticated => status == AuthStatus.authenticated;
  bool get isLoading => status == AuthStatus.loading;
}

/// Notifier for managing authentication state using Riverpod 3.x pattern
@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  AuthState build() {
    _checkAuthStatus();
    return const AuthState();
  }

  void _checkAuthStatus() {
    final repository = ref.read(authRepositoryProvider);
    if (repository.isSignedIn) {
      state = AuthState(
        status: AuthStatus.authenticated,
        user: repository.currentUser,
      );
    } else {
      state = const AuthState(status: AuthStatus.unauthenticated);
    }
  }

  /// Sign in with email and password
  Future<bool> signIn({required String email, required String password}) async {
    state = state.copyWith(status: AuthStatus.loading, errorMessage: null);
    try {
      final repository = ref.read(authRepositoryProvider);
      await repository.signIn(email: email, password: password);
      state = AuthState(
        status: AuthStatus.authenticated,
        user: sessionManager.signedInUser,
      );
      return true;
    } catch (e) {
      state = AuthState(status: AuthStatus.error, errorMessage: e.toString());
      return false;
    }
  }

  /// Start registration process
  Future<UuidValue?> startRegistration({required String email}) async {
    state = state.copyWith(status: AuthStatus.loading, errorMessage: null);
    try {
      final repository = ref.read(authRepositoryProvider);
      final requestId = await repository.startRegistration(email: email);
      state = state.copyWith(status: AuthStatus.unauthenticated);
      return requestId;
    } catch (e) {
      state = AuthState(status: AuthStatus.error, errorMessage: e.toString());
      return null;
    }
  }

  /// Verify registration code
  Future<String?> verifyRegistrationCode({
    required UuidValue accountRequestId,
    required String verificationCode,
  }) async {
    state = state.copyWith(status: AuthStatus.loading, errorMessage: null);
    try {
      final repository = ref.read(authRepositoryProvider);
      final token = await repository.verifyRegistrationCode(
        accountRequestId: accountRequestId,
        verificationCode: verificationCode,
      );
      state = state.copyWith(status: AuthStatus.unauthenticated);
      return token;
    } catch (e) {
      state = AuthState(status: AuthStatus.error, errorMessage: e.toString());
      return null;
    }
  }

  /// Complete registration
  Future<bool> finishRegistration({
    required String registrationToken,
    required String password,
  }) async {
    state = state.copyWith(status: AuthStatus.loading, errorMessage: null);
    try {
      final repository = ref.read(authRepositoryProvider);
      await repository.finishRegistration(
        registrationToken: registrationToken,
        password: password,
      );
      state = AuthState(
        status: AuthStatus.authenticated,
        user: sessionManager.signedInUser,
      );
      return true;
    } catch (e) {
      state = AuthState(status: AuthStatus.error, errorMessage: e.toString());
      return false;
    }
  }

  /// Start password reset
  Future<UuidValue?> startPasswordReset({required String email}) async {
    state = state.copyWith(status: AuthStatus.loading, errorMessage: null);
    try {
      final repository = ref.read(authRepositoryProvider);
      final requestId = await repository.startPasswordReset(email: email);
      state = state.copyWith(status: AuthStatus.unauthenticated);
      return requestId;
    } catch (e) {
      state = AuthState(status: AuthStatus.error, errorMessage: e.toString());
      return null;
    }
  }

  /// Verify password reset code
  Future<String?> verifyPasswordResetCode({
    required UuidValue passwordResetRequestId,
    required String verificationCode,
  }) async {
    state = state.copyWith(status: AuthStatus.loading, errorMessage: null);
    try {
      final repository = ref.read(authRepositoryProvider);
      final token = await repository.verifyPasswordResetCode(
        passwordResetRequestId: passwordResetRequestId,
        verificationCode: verificationCode,
      );
      state = state.copyWith(status: AuthStatus.unauthenticated);
      return token;
    } catch (e) {
      state = AuthState(status: AuthStatus.error, errorMessage: e.toString());
      return null;
    }
  }

  /// Complete password reset
  Future<bool> finishPasswordReset({
    required String finishPasswordResetToken,
    required String newPassword,
  }) async {
    state = state.copyWith(status: AuthStatus.loading, errorMessage: null);
    try {
      final repository = ref.read(authRepositoryProvider);
      await repository.finishPasswordReset(
        finishPasswordResetToken: finishPasswordResetToken,
        newPassword: newPassword,
      );
      state = const AuthState(status: AuthStatus.unauthenticated);
      return true;
    } catch (e) {
      state = AuthState(status: AuthStatus.error, errorMessage: e.toString());
      return false;
    }
  }

  /// Sign out
  Future<void> signOut() async {
    state = state.copyWith(status: AuthStatus.loading, errorMessage: null);
    try {
      final repository = ref.read(authRepositoryProvider);
      await repository.signOut();
      state = const AuthState(status: AuthStatus.unauthenticated);
    } catch (e) {
      state = AuthState(status: AuthStatus.error, errorMessage: e.toString());
    }
  }

  /// Clear error state
  void clearError() {
    state = state.copyWith(errorMessage: null);
  }
}

/// Legacy provider name for backwards compatibility
/// Generated code uses authProvider, this alias provides backward compatibility
final authStateProvider = authProvider;

/// Convenience provider to check if user is authenticated
/// Uses manual Provider instead of @riverpod to avoid UserInfo type issues with codegen
final isAuthenticatedProvider = Provider<bool>((ref) {
  return ref.watch(authProvider).isAuthenticated;
});

/// Convenience provider to get current user
/// Uses manual Provider instead of @riverpod to avoid UserInfo type issues with codegen
final currentUserProvider = Provider<UserInfo?>((ref) {
  return ref.watch(authProvider).user;
});
