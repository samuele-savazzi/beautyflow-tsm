import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for ScontiApi
void main() {
  final instance = BeautyflowApi().getScontiApi();

  group(ScontiApi, () {
    // Crea un nuovo tipo di sconto
    //
    // Crea un nuovo tipo di sconto con le relative configurazioni
    //
    //Future<DiscountTypeCreateResponse> discountsManagementCreate(String object, DiscountTypeCreate discountTypeCreate) async
    test('test discountsManagementCreate', () async {
      // TODO
    });

    // Elimina un tipo di sconto
    //
    // Elimina un tipo di sconto esistente
    //
    //Future discountsManagementDestroy(int id, String object) async
    test('test discountsManagementDestroy', () async {
      // TODO
    });

    // Ottieni tutti i tipi di sconto
    //
    // Recupera l'elenco di tutti i tipi di sconto disponibili
    //
    //Future<BuiltList<DiscountTypeList>> discountsManagementList(String object, { bool activeOnly }) async
    test('test discountsManagementList', () async {
      // TODO
    });

    // Aggiorna un tipo di sconto
    //
    // Aggiorna un tipo di sconto esistente
    //
    //Future<DiscountTypeUpdateResponse> discountsManagementUpdate(int id, String object, { DiscountTypeUpdate discountTypeUpdate }) async
    test('test discountsManagementUpdate', () async {
      // TODO
    });

  });
}
