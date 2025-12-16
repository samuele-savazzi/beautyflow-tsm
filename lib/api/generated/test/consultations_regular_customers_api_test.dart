import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for ConsultationsRegularCustomersApi
void main() {
  final instance = BeautyflowApi().getConsultationsRegularCustomersApi();

  group(ConsultationsRegularCustomersApi, () {
    // Marca cliente come abituale
    //
    // Marca un cliente come abituale per un servizio dopo una consultation completata. Il cliente potrà in futuro prenotare autonomamente questo servizio senza nuove consultations. Richiede permesso operator_authorized.
    //
    //Future<CustomerRegularService> consultationsMarkRegularCreate(int consultationId, String object, { MarkRegularInput markRegularInput }) async
    test('test consultationsMarkRegularCreate', () async {
      // TODO
    });

    // Marca consultation pronta per booking
    //
    // Marca una consultation completata come 'ready_to_book', salvando lo snapshot degli step del servizio con durate definitive e descrizione finale. Elimina eventuali booking già creati e invia notifica al cliente. Opzionalmente può marcare il cliente come abituale. Richiede permesso operator_authorized.
    //
    //Future<ConsultationReadyToBookOutput> consultationsReadyToBookCreate(int consultationId, String object, ConsultationReadyToBook consultationReadyToBook) async
    test('test consultationsReadyToBookCreate', () async {
      // TODO
    });

    // Lista servizi abituali cliente
    //
    // Ottiene la lista di tutti i servizi per cui un cliente è abituale. I clienti possono vedere solo i propri servizi, gli operatori possono vedere tutti.
    //
    //Future<CustomerRegularServicesListResponse> customersRegularServicesRetrieve(int customerId, String object, { bool active }) async
    test('test customersRegularServicesRetrieve', () async {
      // TODO
    });

    // Lista clienti abituali
    //
    // Ottiene la lista paginata di tutti i clienti che hanno almeno un servizio abituale attivo. Include informazioni aggregate sui servizi per cui sono abituali.
    //
    //Future<RegularCustomersListResponse> regularCustomersRetrieve(String object, { int page, int pageSize, String search }) async
    test('test regularCustomersRetrieve', () async {
      // TODO
    });

    // Elimina cliente abituale
    //
    // Elimina permanentemente la relazione cliente-abituale. Solo operator_authorized può eseguire questa operazione. Nota: preferire PATCH con active=false per soft delete.
    //
    //Future regularServicesDestroy(int id, String object) async
    test('test regularServicesDestroy', () async {
      // TODO
    });

    // Disattiva cliente abituale
    //
    // Disattiva la relazione cliente-abituale (soft delete). Solo operator_authorized può eseguire questa operazione.
    //
    //Future<CustomerRegularService> regularServicesPartialUpdate(int id, String object, { JsonObject body }) async
    test('test regularServicesPartialUpdate', () async {
      // TODO
    });

    // Dettaglio cliente abituale
    //
    // Ottiene i dettagli di una relazione cliente-abituale-servizio
    //
    //Future<CustomerRegularService> regularServicesRetrieve(int id, String object) async
    test('test regularServicesRetrieve', () async {
      // TODO
    });

  });
}
