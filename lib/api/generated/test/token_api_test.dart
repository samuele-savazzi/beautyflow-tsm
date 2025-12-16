import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for TokenApi
void main() {
  final instance = BeautyflowApi().getTokenApi();

  group(TokenApi, () {
    // Takes a set of user credentials and returns an access and refresh JSON web token pair to prove the authentication of those credentials.
    //
    //Future<TokenObtainPair> tokenCreate(TokenObtainPair tokenObtainPair) async
    test('test tokenCreate', () async {
      // TODO
    });

    // Takes a refresh type JSON web token and returns an access type JSON web token if the refresh token is valid.
    //
    //Future<TokenRefresh> tokenRefreshCreate(TokenRefresh tokenRefresh) async
    test('test tokenRefreshCreate', () async {
      // TODO
    });

  });
}
