import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for StepApi
void main() {
  final instance = BeautyflowApi().getStepApi();

  group(StepApi, () {
    // Aggiorna l'ordine degli step
    //
    // Aggiorna l'indice degli step di un servizio
    //
    //Future serviziStepsUpdate(int serviceId, StepOrderUpdate stepOrderUpdate) async
    test('test serviziStepsUpdate', () async {
      // TODO
    });

  });
}
