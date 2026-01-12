import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';
import 'package:bcrypt/bcrypt.dart';

/// Simple authentication endpoint for development.
/// Provides direct user creation without email verification.
class SimpleAuthEndpoint extends Endpoint {
  /// Register a new user directly without email verification.
  /// For development/testing purposes only.
  Future<bool> register(
    Session session, {
    required String email,
    required String password,
  }) async {
    try {
      // Check if user already exists
      final existingUser = await Users.findUserByEmail(session, email);
      if (existingUser != null) {
        throw Exception('Email sudah terdaftar');
      }

      // Create user
      final userInfo = await Users.createUser(
        session,
        UserInfo(
          userIdentifier: email,
          userName: email.split('@')[0],
          email: email,
          created: DateTime.now(),
          scopeNames: ['user'],
          blocked: false,
        ),
        'email',
      );

      if (userInfo == null) {
        throw Exception('Gagal membuat user');
      }

      // Create email auth record with password hash
      final hash = BCrypt.hashpw(password, BCrypt.gensalt());
      await EmailAuth.db.insertRow(
        session,
        EmailAuth(
          userId: userInfo.id!,
          email: email,
          hash: hash,
        ),
      );

      return true;
    } catch (e) {
      throw Exception('Pendaftaran gagal: $e');
    }
  }

  /// Login with email and password.
  /// Returns user ID on success.
  Future<int> login(
    Session session, {
    required String email,
    required String password,
  }) async {
    try {
      // Find user
      final user = await Users.findUserByEmail(session, email);
      if (user == null) {
        throw Exception('Email tidak ditemukan');
      }

      // Find email auth
      final emailAuth = await EmailAuth.db.findFirstRow(
        session,
        where: (t) => t.userId.equals(user.id!),
      );

      if (emailAuth == null) {
        throw Exception('Akun tidak memiliki password');
      }

      // Verify password using bcrypt
      final valid = BCrypt.checkpw(password, emailAuth.hash);

      if (!valid) {
        throw Exception('Password salah');
      }

      return user.id!;
    } catch (e) {
      throw Exception('Login gagal: $e');
    }
  }

  /// Seeds 3 admin accounts.
  Future<List<String>> seedAdminAccounts(Session session) async {
    final createdAdmins = <String>[];

    final admins = [
      {
        'email': 'admin1@kliniku.com',
        'password': 'admin123!',
        'name': 'Admin 1',
      },
      {
        'email': 'admin2@kliniku.com',
        'password': 'admin123!',
        'name': 'Admin 2',
      },
      {
        'email': 'admin3@kliniku.com',
        'password': 'admin123!',
        'name': 'Admin 3',
      },
    ];

    for (final admin in admins) {
      try {
        final existingUser = await Users.findUserByEmail(
          session,
          admin['email']!,
        );
        if (existingUser != null) {
          createdAdmins.add('${admin['email']} (sudah ada)');
          continue;
        }

        final userInfo = await Users.createUser(
          session,
          UserInfo(
            userIdentifier: admin['email']!,
            userName: admin['name'],
            email: admin['email'],
            created: DateTime.now(),
            scopeNames: ['admin'],
            blocked: false,
          ),
          'email',
        );

        if (userInfo != null) {
          final hash = BCrypt.hashpw(admin['password']!, BCrypt.gensalt());
          await EmailAuth.db.insertRow(
            session,
            EmailAuth(
              userId: userInfo.id!,
              email: admin['email']!,
              hash: hash,
            ),
          );
          createdAdmins.add('${admin['email']} (berhasil)');
        }
      } catch (e) {
        createdAdmins.add('${admin['email']} (gagal: $e)');
      }
    }

    return createdAdmins;
  }
}
