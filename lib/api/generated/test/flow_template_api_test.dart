import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for FlowTemplateApi
void main() {
  final instance = BeautyflowApi().getFlowTemplateApi();

  group(FlowTemplateApi, () {
    // Ottieni i template dei flow
    //
    // Ottieni i template dei flow e i template personali
    //
    //Future<FlowAndPersonalTemplateResponse> flowTemplateRetrieve(String object, { bool general }) async
    test('test flowTemplateRetrieve', () async {
      // TODO
    });

  });
}
