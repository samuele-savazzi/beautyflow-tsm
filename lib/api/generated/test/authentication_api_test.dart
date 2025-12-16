import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for AuthenticationApi
void main() {
  final instance = BeautyflowApi().getAuthenticationApi();

  group(AuthenticationApi, () {
    // Disabilita 2FA
    //
    // Disabilita 2FA (richiede password per sicurezza).
    //
    //Future<MessageResponse> adminApiAuthDisable2faCreate(Disable2FARequest disable2FARequest) async
    test('test adminApiAuthDisable2faCreate', () async {
      // TODO
    });

    // Login TenantAdmin
    //
    //  Login FASE 1 per TenantAdmin.  - **Se 2FA disabilitato**: ritorna JWT completo (access + refresh) - **Se 2FA abilitato**: ritorna JWT temporaneo per chiamare verify-2fa-login         
    //
    //Future<LoginResponse> adminApiAuthLoginCreate(LoginRequest loginRequest) async
    test('test adminApiAuthLoginCreate', () async {
      // TODO
    });

    // Refresh JWT token
    //
    //  Rinnova access token usando refresh token.  Con **ROTATE_REFRESH_TOKENS=True**, ritorna **NUOVO** refresh token. Il vecchio refresh token viene **blacklistato**.  Mantiene i custom claims (2fa_verified, admin_id, admin_role, email).     
    //
    //Future<RefreshTokenResponse> adminApiAuthRefreshCreate(RefreshTokenRequest refreshTokenRequest) async
    test('test adminApiAuthRefreshCreate', () async {
      // TODO
    });

    // Rigenera backup codes
    //
    // Rigenera backup codes (invalida i precedenti). Richiede codice TOTP corrente.
    //
    //Future<RegenerateBackupCodesResponse> adminApiAuthRegenerateBackupCodesCreate(RegenerateBackupCodesRequest regenerateBackupCodesRequest) async
    test('test adminApiAuthRegenerateBackupCodesCreate', () async {
      // TODO
    });

    // Setup 2FA
    //
    // Genera QR code per setup TOTP (Google Authenticator). Richiede autenticazione JWT.
    //
    //Future<Setup2FAResponse> adminApiAuthSetup2faCreate() async
    test('test adminApiAuthSetup2faCreate', () async {
      // TODO
    });

    // Verifica 2FA dopo login
    //
    //  Login FASE 2: Verifica codice 2FA e ritorna JWT completo.  Invia il **temporary_token** ricevuto da `/login/` nell'header Authorization. Fornisci **code** (TOTP) oppure **backup_code**.     
    //
    //Future<Verify2FALoginResponse> adminApiAuthVerify2faLoginCreate({ Verify2FACodeRequest verify2FACodeRequest }) async
    test('test adminApiAuthVerify2faLoginCreate', () async {
      // TODO
    });

    // Verifica e attiva 2FA
    //
    // Verifica codice TOTP e attiva 2FA. Genera 8 backup codes.
    //
    //Future<Verify2FASetupResponse> adminApiAuthVerify2faSetupCreate(Verify2FASetupRequest verify2FASetupRequest) async
    test('test adminApiAuthVerify2faSetupCreate', () async {
      // TODO
    });

  });
}
