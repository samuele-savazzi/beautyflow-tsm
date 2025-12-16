//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workstation_quota_response.g.dart';

/// WorkstationQuotaResponse
///
/// Properties:
/// * [operatorId] - ID dell'operatore
/// * [operatorName] - Nome completo dell'operatore
/// * [maxWorkstations] - Numero massimo di workstation consentite per questo operatore
/// * [currentWorkstations] - Numero di workstation attualmente assegnate
/// * [availableSlots] - Numero di slot ancora disponibili
/// * [canAdd] - True se è possibile aggiungere almeno una workstation
@BuiltValue()
abstract class WorkstationQuotaResponse implements Built<WorkstationQuotaResponse, WorkstationQuotaResponseBuilder> {
  /// ID dell'operatore
  @BuiltValueField(wireName: r'operator_id')
  int get operatorId;

  /// Nome completo dell'operatore
  @BuiltValueField(wireName: r'operator_name')
  String get operatorName;

  /// Numero massimo di workstation consentite per questo operatore
  @BuiltValueField(wireName: r'max_workstations')
  int get maxWorkstations;

  /// Numero di workstation attualmente assegnate
  @BuiltValueField(wireName: r'current_workstations')
  int get currentWorkstations;

  /// Numero di slot ancora disponibili
  @BuiltValueField(wireName: r'available_slots')
  int get availableSlots;

  /// True se è possibile aggiungere almeno una workstation
  @BuiltValueField(wireName: r'can_add')
  bool get canAdd;

  WorkstationQuotaResponse._();

  factory WorkstationQuotaResponse([void updates(WorkstationQuotaResponseBuilder b)]) = _$WorkstationQuotaResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkstationQuotaResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkstationQuotaResponse> get serializer => _$WorkstationQuotaResponseSerializer();
}

class _$WorkstationQuotaResponseSerializer implements PrimitiveSerializer<WorkstationQuotaResponse> {
  @override
  final Iterable<Type> types = const [WorkstationQuotaResponse, _$WorkstationQuotaResponse];

  @override
  final String wireName = r'WorkstationQuotaResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkstationQuotaResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'operator_id';
    yield serializers.serialize(
      object.operatorId,
      specifiedType: const FullType(int),
    );
    yield r'operator_name';
    yield serializers.serialize(
      object.operatorName,
      specifiedType: const FullType(String),
    );
    yield r'max_workstations';
    yield serializers.serialize(
      object.maxWorkstations,
      specifiedType: const FullType(int),
    );
    yield r'current_workstations';
    yield serializers.serialize(
      object.currentWorkstations,
      specifiedType: const FullType(int),
    );
    yield r'available_slots';
    yield serializers.serialize(
      object.availableSlots,
      specifiedType: const FullType(int),
    );
    yield r'can_add';
    yield serializers.serialize(
      object.canAdd,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WorkstationQuotaResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WorkstationQuotaResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'operator_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.operatorId = valueDes;
          break;
        case r'operator_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.operatorName = valueDes;
          break;
        case r'max_workstations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxWorkstations = valueDes;
          break;
        case r'current_workstations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.currentWorkstations = valueDes;
          break;
        case r'available_slots':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.availableSlots = valueDes;
          break;
        case r'can_add':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.canAdd = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WorkstationQuotaResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkstationQuotaResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

