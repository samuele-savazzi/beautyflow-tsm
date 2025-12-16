import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';

// tests for ProfileResponse
void main() {
  final instance = ProfileResponseBuilder();
  // TODO add properties to the builder and call build()

  group(ProfileResponse, () {
    // TenantAdminDetail admin
    test('to test the property `admin`', () async {
      // TODO
    });

    // True se deve cambiare password al prossimo login
    // bool requiresPasswordChange
    test('to test the property `requiresPasswordChange`', () async {
      // TODO
    });

    // True se deve configurare 2FA (totp_enabled=False)
    // bool requires2faSetup
    test('to test the property `requires2faSetup`', () async {
      // TODO
    });

    // Info sessione corrente (IP, last_activity, etc.)
    // BuiltMap<String, JsonObject> sessionInfo
    test('to test the property `sessionInfo`', () async {
      // TODO
    });

  });
}
