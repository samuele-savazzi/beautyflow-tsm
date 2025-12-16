//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/operator_basic.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operator_access_nested.g.dart';

/// Serializer per operator access nested (senza premium_type per evitare ricorsione)
///
/// Properties:
/// * [id] 
/// * [operator_] 
/// * [extraDays] - Giorni extra di disponibilità oltre il periodo standard (max 30)
/// * [active] 
@BuiltValue()
abstract class OperatorAccessNested implements Built<OperatorAccessNested, OperatorAccessNestedBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'operator')
  OperatorBasic get operator_;

  /// Giorni extra di disponibilità oltre il periodo standard (max 30)
  @BuiltValueField(wireName: r'extra_days')
  int get extraDays;

  @BuiltValueField(wireName: r'active')
  bool get active;

  OperatorAccessNested._();

  factory OperatorAccessNested([void updates(OperatorAccessNestedBuilder b)]) = _$OperatorAccessNested;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperatorAccessNestedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperatorAccessNested> get serializer => _$OperatorAccessNestedSerializer();
}

class _$OperatorAccessNestedSerializer implements PrimitiveSerializer<OperatorAccessNested> {
  @override
  final Iterable<Type> types = const [OperatorAccessNested, _$OperatorAccessNested];

  @override
  final String wireName = r'OperatorAccessNested';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperatorAccessNested object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'operator';
    yield serializers.serialize(
      object.operator_,
      specifiedType: const FullType(OperatorBasic),
    );
    yield r'extra_days';
    yield serializers.serialize(
      object.extraDays,
      specifiedType: const FullType(int),
    );
    yield r'active';
    yield serializers.serialize(
      object.active,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OperatorAccessNested object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperatorAccessNestedBuilder result,
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
        case r'operator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OperatorBasic),
          ) as OperatorBasic;
          result.operator_.replace(valueDes);
          break;
        case r'extra_days':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.extraDays = valueDes;
          break;
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.active = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OperatorAccessNested deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperatorAccessNestedBuilder();
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

