//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/operator_access_nested.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patched_premium_type.g.dart';

/// Serializer per i piani premium
///
/// Properties:
/// * [id] 
/// * [area] - Area associata al piano premium
/// * [name] - Nome del piano premium (es. 'Gold', 'Platinum')
/// * [price] - Prezzo del piano premium
/// * [active] 
/// * [operatorsCount] - Numero di operatori con accesso premium attivo
/// * [operatorAccesses] - Lista operatori con accesso premium (incluso solo nelle subscription)
/// * [availableOperators] - Lista operatori disponibili da associare (solo se richiesto con include_available_operators)
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class PatchedPremiumType implements Built<PatchedPremiumType, PatchedPremiumTypeBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// Area associata al piano premium
  @BuiltValueField(wireName: r'area')
  int? get area;

  /// Nome del piano premium (es. 'Gold', 'Platinum')
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Prezzo del piano premium
  @BuiltValueField(wireName: r'price')
  double? get price;

  @BuiltValueField(wireName: r'active')
  bool? get active;

  /// Numero di operatori con accesso premium attivo
  @BuiltValueField(wireName: r'operators_count')
  int? get operatorsCount;

  /// Lista operatori con accesso premium (incluso solo nelle subscription)
  @BuiltValueField(wireName: r'operator_accesses')
  BuiltList<OperatorAccessNested>? get operatorAccesses;

  /// Lista operatori disponibili da associare (solo se richiesto con include_available_operators)
  @BuiltValueField(wireName: r'available_operators')
  BuiltList<BuiltMap<String, Map<String, dynamic>?>>? get availableOperators;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  PatchedPremiumType._();

  factory PatchedPremiumType([void updates(PatchedPremiumTypeBuilder b)]) = _$PatchedPremiumType;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchedPremiumTypeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchedPremiumType> get serializer => _$PatchedPremiumTypeSerializer();
}

class _$PatchedPremiumTypeSerializer implements PrimitiveSerializer<PatchedPremiumType> {
  @override
  final Iterable<Type> types = const [PatchedPremiumType, _$PatchedPremiumType];

  @override
  final String wireName = r'PatchedPremiumType';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchedPremiumType object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.area != null) {
      yield r'area';
      yield serializers.serialize(
        object.area,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType(double),
      );
    }
    if (object.active != null) {
      yield r'active';
      yield serializers.serialize(
        object.active,
        specifiedType: const FullType(bool),
      );
    }
    if (object.operatorsCount != null) {
      yield r'operators_count';
      yield serializers.serialize(
        object.operatorsCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.operatorAccesses != null) {
      yield r'operator_accesses';
      yield serializers.serialize(
        object.operatorAccesses,
        specifiedType: const FullType(BuiltList, [FullType(OperatorAccessNested)]),
      );
    }
    if (object.availableOperators != null) {
      yield r'available_operators';
      yield serializers.serialize(
        object.availableOperators,
        specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updated_at';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchedPremiumType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatchedPremiumTypeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'area':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.area = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.price = valueDes;
          break;
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.active = valueDes;
          break;
        case r'operators_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.operatorsCount = valueDes;
          break;
        case r'operator_accesses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OperatorAccessNested)]),
          ) as BuiltList<OperatorAccessNested>;
          result.operatorAccesses.replace(valueDes);
          break;
        case r'available_operators':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
          ) as BuiltList<BuiltMap<String, Map<String, dynamic>?>>;
          result.availableOperators.replace(valueDes);
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PatchedPremiumType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchedPremiumTypeBuilder();
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

