//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operator_quota_response.g.dart';

/// OperatorQuotaResponse
///
/// Properties:
/// * [areaId] - ID dell'area
/// * [areaName] - Nome dell'area
/// * [maxOperators] - Numero massimo di operatori consentiti per quest'area
/// * [currentOperators] - Numero di operatori attualmente assegnati all'area
/// * [availableSlots] - Numero di slot ancora disponibili
/// * [canAdd] - True se è possibile aggiungere almeno un operatore
@BuiltValue()
abstract class OperatorQuotaResponse implements Built<OperatorQuotaResponse, OperatorQuotaResponseBuilder> {
  /// ID dell'area
  @BuiltValueField(wireName: r'area_id')
  int get areaId;

  /// Nome dell'area
  @BuiltValueField(wireName: r'area_name')
  String get areaName;

  /// Numero massimo di operatori consentiti per quest'area
  @BuiltValueField(wireName: r'max_operators')
  int get maxOperators;

  /// Numero di operatori attualmente assegnati all'area
  @BuiltValueField(wireName: r'current_operators')
  int get currentOperators;

  /// Numero di slot ancora disponibili
  @BuiltValueField(wireName: r'available_slots')
  int get availableSlots;

  /// True se è possibile aggiungere almeno un operatore
  @BuiltValueField(wireName: r'can_add')
  bool get canAdd;

  OperatorQuotaResponse._();

  factory OperatorQuotaResponse([void updates(OperatorQuotaResponseBuilder b)]) = _$OperatorQuotaResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperatorQuotaResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperatorQuotaResponse> get serializer => _$OperatorQuotaResponseSerializer();
}

class _$OperatorQuotaResponseSerializer implements PrimitiveSerializer<OperatorQuotaResponse> {
  @override
  final Iterable<Type> types = const [OperatorQuotaResponse, _$OperatorQuotaResponse];

  @override
  final String wireName = r'OperatorQuotaResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperatorQuotaResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'area_id';
    yield serializers.serialize(
      object.areaId,
      specifiedType: const FullType(int),
    );
    yield r'area_name';
    yield serializers.serialize(
      object.areaName,
      specifiedType: const FullType(String),
    );
    yield r'max_operators';
    yield serializers.serialize(
      object.maxOperators,
      specifiedType: const FullType(int),
    );
    yield r'current_operators';
    yield serializers.serialize(
      object.currentOperators,
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
    OperatorQuotaResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperatorQuotaResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'area_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.areaId = valueDes;
          break;
        case r'area_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.areaName = valueDes;
          break;
        case r'max_operators':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxOperators = valueDes;
          break;
        case r'current_operators':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.currentOperators = valueDes;
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
  OperatorQuotaResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperatorQuotaResponseBuilder();
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

