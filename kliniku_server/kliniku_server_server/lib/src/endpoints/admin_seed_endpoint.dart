import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';

/// Endpoint for seeding admin accounts
class AdminSeedEndpoint extends Endpoint {
  /// Seeds 3 admin accounts for initial setup
  /// Returns list of created admin emails
  Future<List<String>> seedAdminAccounts(Session session) async {
    final createdAdmins = <String>[];

    // Admin accounts to create
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
        // Check if user already exists
        final existingUser = await Users.findUserByEmail(
          session,
          admin['email']!,
        );
        if (existingUser != null) {
          createdAdmins.add('${admin['email']} (sudah ada)');
          continue;
        }

        // Create user using Serverpod Auth
        final userInfo = await Users.createUser(
          session,
          UserInfo(
            userIdentifier: admin['email']!,
            userName: admin['name'],
            email: admin['email'],
            created: DateTime.now(),
            scopeNames: ['admin'], // Mark as admin (List<String>)
            blocked: false,
          ),
          'email',
        );

        if (userInfo != null) {
          // Create email authentication entry with password
          await Emails.createAccountRequest(
            session,
            admin['name']!,
            admin['email']!,
            admin['password']!,
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
