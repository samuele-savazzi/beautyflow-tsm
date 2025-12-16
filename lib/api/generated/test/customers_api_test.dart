import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for CustomersApi
void main() {
  final instance = BeautyflowApi().getCustomersApi();

  group(CustomersApi, () {
    // Lista clienti con filtri
    //
    // Ottiene lista paginata di clienti con filtri per stato attivo, premium, bloccato
    //
    //Future<CustomerListResponse> customerValidRetrieve(String object, { bool active, bool blocked, int page, int pageSize, bool premium, String search }) async
    test('test customerValidRetrieve', () async {
      // TODO
    });

    // Appuntamenti futuri cliente
    //
    // Ottiene tutti gli appuntamenti di un cliente da oggi in poi (inclusi cancellati), ordinati per data e ora
    //
    //Future<CustomerBookingsResponse> customersBookingsRetrieve(int id, String object) async
    test('test customersBookingsRetrieve', () async {
      // TODO
    });

    // Dettaglio cliente con statistiche
    //
    // Ottiene dettaglio completo cliente con anamnesi, frequenza prenotazioni e top 3 servizi
    //
    //Future<CustomerDetailStats> customersDetailRetrieve(int id, String object) async
    test('test customersDetailRetrieve', () async {
      // TODO
    });

    // Lista clienti con filtri
    //
    // Ottiene lista paginata di clienti con filtri per stato attivo, premium, bloccato
    //
    //Future<CustomerListResponse> customersRetrieve(String object, { bool active, bool blocked, int page, int pageSize, bool premium, String search }) async
    test('test customersRetrieve', () async {
      // TODO
    });

    // Ricerca clienti
    //
    // Ricerca rapida clienti per nome/cognome con limite 30 risultati. Minimo 2 caratteri richiesti.
    //
    //Future<CustomerSearchResponse> customersSearchRetrieve(String object, String q) async
    test('test customersSearchRetrieve', () async {
      // TODO
    });

    // Aggiorna informazioni cliente
    //
    // Modifica le informazioni di un cliente esistente
    //
    //Future<CustomerUpdateResponse> customersUpdateUpdate(int id, String object, { CustomerUpdateRequest customerUpdateRequest }) async
    test('test customersUpdateUpdate', () async {
      // TODO
    });

  });
}
