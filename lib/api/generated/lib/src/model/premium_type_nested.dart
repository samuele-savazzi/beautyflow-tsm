//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/operator_access_nested.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'premium_type_nested.g.dart';

/// Serializer per premium_type nested (per subscription GET)
///
/// Properties:
/// * [id] 
/// * [area] - Area associata al piano premium
/// * [name] - Nome del piano premium (es. 'Gold', 'Platinum')
/// * [price] - Prezzo del piano premium
/// * [active] 
/// * [operatorsCount] 
/// * [operatorAccesses] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class PremiumTypeNested implements Built<PremiumTypeNested, PremiumTypeNestedBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  /// Area associata al piano premium
  @BuiltValueField(wireName: r'area')
  int? get area;

  /// Nome del piano premium (es. 'Gold', 'Platinum')
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Prezzo del piano premium
  @BuiltValueField(wireName: r'price')
  double get price;

  @BuiltValueField(wireName: r'active')
  bool get active;

  @BuiltValueField(wireName: r'operators_count')
  String get operatorsCount;

  @BuiltValueField(wireName: r'operator_accesses')
  BuiltList<OperatorAccessNested> get operatorAccesses;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  PremiumTypeNested._();

  factory PremiumTypeNested([void updates(PremiumTypeNestedBuilder b)]) = _$PremiumTypeNested;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PremiumTypeNestedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PremiumTypeNested> get serializer => _$PremiumTypeNestedSerializer();
}

class _$PremiumTypeNestedSerializer implements PrimitiveSerializer<PremiumTypeNested> {
  @override
  final Iterable<Type> types = const [PremiumTypeNested, _$PremiumTypeNested];

  @override
  final String wireName = r'PremiumTypeNested';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PremiumTypeNested object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'area';
    yield object.area == null ? null : serializers.serialize(
      object.area,
      specifiedType: const FullType.nullable(int),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'price';
    yield serializers.serialize(
      object.price,
      specifiedType: const FullType(double),
    );
    yield r'active';
    yield serializers.serialize(
      object.active,
      specifiedType: const FullType(bool),
    );
    yield r'operators_count';
    yield serializers.serialize(
      object.operatorsCount,
      specifiedType: const FullType(String),
    );
    yield r'operator_accesses';
    yield serializers.serialize(
      object.operatorAccesses,
      specifiedType: const FullType(BuiltList, [FullType(OperatorAccessNested)]),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updated_at';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PremiumTypeNested object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PremiumTypeNestedBuilder result,
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
            specifiedType: const FullType(String),
          ) as String;
          result.operatorsCount = valueDes;
          break;
        case r'operator_accesses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OperatorAccessNested)]),
          ) as BuiltList<OperatorAccessNested>;
          result.operatorAccesses.replace(valueDes);
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
  PremiumTypeNested deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PremiumTypeNestedBuilder();
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

