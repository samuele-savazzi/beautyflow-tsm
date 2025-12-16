import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for ServiziApi
void main() {
  final instance = BeautyflowApi().getServiziApi();

  group(ServiziApi, () {
    // Crea un nuovo servizio
    //
    // Crea un nuovo servizio con i relativi step e categorie
    //
    //Future<ServiceCreated> serviziCreate(String object, ServiceCreate serviceCreate) async
    test('test serviziCreate', () async {
      // TODO
    });

    // Elimina un servizio
    //
    // Elimina un servizio e tutti i suoi step e categorie associati
    //
    //Future serviziDestroy(int id, String object) async
    test('test serviziDestroy', () async {
      // TODO
    });

    // Ottieni un servizio specifico
    //
    // Recupera i dettagli di un servizio specifico con i suoi step e categorie
    //
    //Future<ServiceDetail> serviziDetailRetrieve(int id, String object) async
    test('test serviziDetailRetrieve', () async {
      // TODO
    });

    // Ottieni tutti i servizi
    //
    // Recupera l'elenco di tutti i servizi disponibili
    //
    //Future<BuiltList<ServiceList>> serviziList(String object) async
    test('test serviziList', () async {
      // TODO
    });

    // Ottieni servizi raggruppati per macro area
    //
    // Restituisce i servizi raggruppati per macro area, includendo ID, nome e genere dei servizi
    //
    //Future<BuiltList<ServiceOptionWorkStation>> serviziOptionsWorkstationRetrieve(String object) async
    test('test serviziOptionsWorkstationRetrieve', () async {
      // TODO
    });

    // Aggiorna un servizio esistente
    //
    // Aggiorna un servizio esistente con i relativi step e categorie
    //
    //Future<ServiceUpdated> serviziUpdate(int id, String object, ServiceUpdate serviceUpdate) async
    test('test serviziUpdate', () async {
      // TODO
    });

  });
}
