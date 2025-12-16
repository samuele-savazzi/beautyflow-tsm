import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for DashboardApi
void main() {
  final instance = BeautyflowApi().getDashboardApi();

  group(DashboardApi, () {
    // Crea/aggiorna configurazione utente (Admin)
    //
    // Crea o aggiorna la configurazione dashboard per un utente specifico (Admin only)
    //
    //Future dashboardAdminUserConfigCreate(String object, AdminUserDashboardConfigCreate adminUserDashboardConfigCreate) async
    test('test dashboardAdminUserConfigCreate', () async {
      // TODO
    });

    // Elimina configurazione utente (Admin)
    //
    // Elimina una configurazione dashboard di un utente specifico (Admin only)
    //
    //Future dashboardAdminUserConfigDestroy(int id, String object) async
    test('test dashboardAdminUserConfigDestroy', () async {
      // TODO
    });

    // Ottieni configurazioni utente (Admin)
    //
    // Recupera le configurazioni dashboard di un utente specifico (Admin only)
    //
    //Future<BuiltList<AdminUserDashboardConfigList>> dashboardAdminUserConfigList(String object, int userId, { int areaId }) async
    test('test dashboardAdminUserConfigList', () async {
      // TODO
    });

    // Ottieni dashboard utente
    //
    // Recupera la dashboard configurata per l'utente corrente in una specifica area
    //
    //Future<UserDashboard> dashboardRetrieve(int areaId, String object) async
    test('test dashboardRetrieve', () async {
      // TODO
    });

    // Crea configurazione ruolo
    //
    // Crea una nuova configurazione dashboard per un ruolo (Admin only)
    //
    //Future dashboardRoleConfigCreate(String object, RoleDashboardConfigCreate roleDashboardConfigCreate) async
    test('test dashboardRoleConfigCreate', () async {
      // TODO
    });

    // Elimina configurazione ruolo
    //
    // Elimina una configurazione dashboard per un ruolo (Admin only)
    //
    //Future dashboardRoleConfigDestroy(int id, String object) async
    test('test dashboardRoleConfigDestroy', () async {
      // TODO
    });

    // Ottieni configurazioni ruolo
    //
    // Recupera tutte le configurazioni dashboard per ruoli
    //
    //Future<BuiltList<RoleDashboardConfigList>> dashboardRoleConfigList(String object, { int areaId, int roleId }) async
    test('test dashboardRoleConfigList', () async {
      // TODO
    });

    // Aggiorna configurazione ruolo
    //
    // Aggiorna una configurazione dashboard per un ruolo (Admin only)
    //
    //Future dashboardRoleConfigUpdate(int id, String object, { RoleDashboardConfigUpdate roleDashboardConfigUpdate }) async
    test('test dashboardRoleConfigUpdate', () async {
      // TODO
    });

    // Crea/aggiorna configurazione widget utente
    //
    // Crea o aggiorna la configurazione personalizzata di un widget per l'utente
    //
    //Future dashboardUserConfigCreate(String object, UserDashboardConfigCreateUpdate userDashboardConfigCreateUpdate) async
    test('test dashboardUserConfigCreate', () async {
      // TODO
    });

    // Ripristina configurazione widget
    //
    // Rimuove la configurazione personalizzata di un widget, tornando alla configurazione di ruolo/default
    //
    //Future dashboardUserConfigDestroy(int id, String object) async
    test('test dashboardUserConfigDestroy', () async {
      // TODO
    });

    // Ottieni configurazioni utente
    //
    // Recupera tutte le configurazioni dashboard personalizzate dell'utente
    //
    //Future<BuiltList<UserDashboardConfigList>> dashboardUserConfigList(String object, { int areaId }) async
    test('test dashboardUserConfigList', () async {
      // TODO
    });

    // Crea un nuovo widget
    //
    // Crea un nuovo widget per la dashboard (Admin only)
    //
    //Future<DashboardWidgetCreated> dashboardWidgetsCreate(String object, DashboardWidgetCreate dashboardWidgetCreate) async
    test('test dashboardWidgetsCreate', () async {
      // TODO
    });

    // Elimina un widget
    //
    // Elimina un widget (Admin only)
    //
    //Future dashboardWidgetsDestroy(int id, String object) async
    test('test dashboardWidgetsDestroy', () async {
      // TODO
    });

    // Ottieni tutti i widget disponibili
    //
    // Recupera l'elenco di tutti i widget disponibili per la dashboard con dipendenze, esclusioni e requisiti
    //
    //Future<BuiltList<DashboardWidgetList>> dashboardWidgetsList(String object, { String category }) async
    test('test dashboardWidgetsList', () async {
      // TODO
    });

    // Aggiorna un widget
    //
    // Aggiorna un widget esistente (Admin only)
    //
    //Future dashboardWidgetsUpdate(int id, String object, { DashboardWidgetUpdate dashboardWidgetUpdate }) async
    test('test dashboardWidgetsUpdate', () async {
      // TODO
    });

  });
}
