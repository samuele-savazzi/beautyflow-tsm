import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for AreasApi
void main() {
  final instance = BeautyflowApi().getAreasApi();

  group(AreasApi, () {
    // Operatori e postazioni attive per area
    //
    // Returns active operators and workstations for the specified area. If main area returns all with main_area=false
    //
    //Future<AreaDetailsResponse> availabilityAreaDetailsRetrieve(int areaId, String object) async
    test('test availabilityAreaDetailsRetrieve', () async {
      // TODO
    });

  });
}
