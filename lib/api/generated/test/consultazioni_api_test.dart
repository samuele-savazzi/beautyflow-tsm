import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for ConsultazioniApi
void main() {
  final instance = BeautyflowApi().getConsultazioniApi();

  group(ConsultazioniApi, () {
    // Converti consultazione in booking
    //
    // Converte una consultazione completata in stato \"converted_to_booking\". Cambia solo lo stato, non crea automaticamente un nuovo booking.
    //
    //Future<ConsultationConvertResponse> consultationsConvertToBookingUpdate(int consultationId, String object) async
    test('test consultationsConvertToBookingUpdate', () async {
      // TODO
    });

    // Crea nuova consultazione
    //
    // Crea una nuova consultazione con booking e slot associati. Durata fissa 10 minuti.
    //
    //Future<ConsultationDetail> consultationsCreate(String object, ConsultationCreate consultationCreate) async
    test('test consultationsCreate', () async {
      // TODO
    });

    // Cancella consultazione
    //
    // Cancella una consultazione. Solo admin/titular possono cancellare.
    //
    //Future consultationsDestroy(int consultationId, String object) async
    test('test consultationsDestroy', () async {
      // TODO
    });

    // Ottieni lista consultazioni
    //
    // Recupera l'elenco delle consultazioni. Operatori vedono solo le proprie, admin/titular/secretariat vedono tutte.
    //
    //Future<BuiltList<ConsultationList>> consultationsList(String object, { int areaId, String customerName, String operatorName, int serviceId, String serviceName, String status }) async
    test('test consultationsList', () async {
      // TODO
    });

    // Ottieni dettaglio consultazione
    //
    // Recupera il dettaglio completo di una consultazione specifica con risposte alle domande.
    //
    //Future<ConsultationDetailResponse> consultationsRetrieve(int consultationId, String object) async
    test('test consultationsRetrieve', () async {
      // TODO
    });

    // Completa consultazione
    //
    // Marca la consultazione come completata. Solo l'operatore assegnato può completare.
    //
    //Future<ConsultationCompleteResponse> consultationsUpdate(int consultationId, String object) async
    test('test consultationsUpdate', () async {
      // TODO
    });

  });
}
