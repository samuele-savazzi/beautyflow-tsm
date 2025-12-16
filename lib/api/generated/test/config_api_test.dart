import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for ConfigApi
void main() {
  final instance = BeautyflowApi().getConfigApi();

  group(ConfigApi, () {
    // Modifica il tema e i loghi del tenant
    //
    // Aggiorna il tema, il logo e il logo dark del tenant. I loghi devono essere in formato JPG, PNG o JPEG.
    //
    //Future<ConfigSetThemeThemeUpdate200Response> configSetThemeThemeUpdate(String object, { TenantThemeUpdate tenantThemeUpdate }) async
    test('test configSetThemeThemeUpdate', () async {
      // TODO
    });

    // Ottieni la configurazione del tenant
    //
    // Ottieni la configurazione del tenant
    //
    //Future<BuiltList<ThemeConfig>> configTenantList() async
    test('test configTenantList', () async {
      // TODO
    });

    // Ottieni il manigest del tenant
    //
    // Ottieni il mannifest del tenant
    //
    //Future configTenantManifestJsonRetrieve() async
    test('test configTenantManifestJsonRetrieve', () async {
      // TODO
    });

    // Ottieni il tema e il logo del tenant
    //
    // Ottieni il tema e il logo del tenant
    //
    //Future<BuiltList<ThemeConfig>> configTenantThemeList() async
    test('test configTenantThemeList', () async {
      // TODO
    });

  });
}
