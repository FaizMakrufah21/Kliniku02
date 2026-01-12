// Re-export the protocol and client types
export 'src/protocol/protocol.dart';
export 'package:serverpod_client/serverpod_client.dart';

// Re-export auth types from serverpod_auth_core_client (which is a dependency via serverpod_auth_idp_client)
export 'package:serverpod_auth_core_client/serverpod_auth_core_client.dart'
    show AuthSuccess, UuidValue, UuidValueJsonExtension;
