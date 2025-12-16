//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'premium_operator_access_bulk.g.dart';

/// Serializer per operazioni bulk su PremiumOperatorAccess. Permette di assegnare/aggiornare multipli operatori a un premium type in una volta.
///
/// Properties:
/// * [premiumType] 
/// * [operators] - Lista di operatori con formato: [{'operator_id': 1, 'extra_days': 15}, ...]
@BuiltValue()
abstract class PremiumOperatorAccessBulk implements Built<PremiumOperatorAccessBulk, PremiumOperatorAccessBulkBuilder> {
  @BuiltValueField(wireName: r'premium_type')
  int get premiumType;

  /// Lista di operatori con formato: [{'operator_id': 1, 'extra_days': 15}, ...]
  @BuiltValueField(wireName: r'operators')
  BuiltList<BuiltMap<String, int>> get operators;

  PremiumOperatorAccessBulk._();

  factory PremiumOperatorAccessBulk([void updates(PremiumOperatorAccessBulkBuilder b)]) = _$PremiumOperatorAccessBulk;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PremiumOperatorAccessBulkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PremiumOperatorAccessBulk> get serializer => _$PremiumOperatorAccessBulkSerializer();
}

class _$PremiumOperatorAccessBulkSerializer implements PrimitiveSerializer<PremiumOperatorAccessBulk> {
  @override
  final Iterable<Type> types = const [PremiumOperatorAccessBulk, _$PremiumOperatorAccessBulk];

  @override
  final String wireName = r'PremiumOperatorAccessBulk';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PremiumOperatorAccessBulk object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'premium_type';
    yield serializers.serialize(
      object.premiumType,
      specifiedType: const FullType(int),
    );
    yield r'operators';
    yield serializers.serialize(
      object.operators,
      specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType(int)])]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PremiumOperatorAccessBulk object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PremiumOperatorAccessBulkBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'premium_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.premiumType = valueDes;
          break;
        case r'operators':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType(int)])]),
          ) as BuiltList<BuiltMap<String, int>>;
          result.operators.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PremiumOperatorAccessBulk deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PremiumOperatorAccessBulkBuilder();
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

