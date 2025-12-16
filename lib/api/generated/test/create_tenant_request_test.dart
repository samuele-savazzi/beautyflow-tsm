import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';

// tests for CreateTenantRequest
void main() {
  final instance = CreateTenantRequestBuilder();
  // TODO add properties to the builder and call build()

  group(CreateTenantRequest, () {
    // Nome tenant
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Dominio (es: cliente1)
    // String domain
    test('to test the property `domain`', () async {
      // TODO
    });

    // TypeEnum type
    test('to test the property `type`', () async {
      // TODO
    });

    // Sede legale
    // String registeredOffice
    test('to test the property `registeredOffice`', () async {
      // TODO
    });

    // Email utente admin
    // String adminEmail
    test('to test the property `adminEmail`', () async {
      // TODO
    });

    // Telefono admin
    // String adminPhone
    test('to test the property `adminPhone`', () async {
      // TODO
    });

    // String adminFirstName
    test('to test the property `adminFirstName`', () async {
      // TODO
    });

    // String adminLastName
    test('to test the property `adminLastName`', () async {
      // TODO
    });

    // Codice piano (es: FREE, BASIC, PRO)
    // String quotaTypeCode
    test('to test the property `quotaTypeCode`', () async {
      // TODO
    });

    // CreateTenantRequestBillingTypeEnum billingType (default value: CreateTenantRequestBillingTypeEnum.trial)
    test('to test the property `billingType`', () async {
      // TODO
    });

    // Durata in anni (solo per billing_type='custom' o 'yearly'). Default: 1 anno
    // int billingDuration
    test('to test the property `billingDuration`', () async {
      // TODO
    });

    // Lista aree da creare
    // BuiltList<AreaConfig> areas
    test('to test the property `areas`', () async {
      // TODO
    });

    // JsonObject theme
    test('to test the property `theme`', () async {
      // TODO
    });

    // File favicon (PNG, ICO, SVG) - max 2MB
    // String favicon
    test('to test the property `favicon`', () async {
      // TODO
    });

    // File logo (PNG, JPG, SVG) - max 5MB
    // String logo
    test('to test the property `logo`', () async {
      // TODO
    });

    // File dark logo (PNG, JPG, SVG) - max 5MB
    // String darkLogo
    test('to test the property `darkLogo`', () async {
      // TODO
    });

  });
}
