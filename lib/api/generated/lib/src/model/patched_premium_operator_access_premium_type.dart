//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patched_premium_operator_access_premium_type.g.dart';

/// PatchedPremiumOperatorAccessPremiumType
///
/// Properties:
/// * [id] 
/// * [name] 
@BuiltValue()
abstract class PatchedPremiumOperatorAccessPremiumType implements Built<PatchedPremiumOperatorAccessPremiumType, PatchedPremiumOperatorAccessPremiumTypeBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  PatchedPremiumOperatorAccessPremiumType._();

  factory PatchedPremiumOperatorAccessPremiumType([void updates(PatchedPremiumOperatorAccessPremiumTypeBuilder b)]) = _$PatchedPremiumOperatorAccessPremiumType;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchedPremiumOperatorAccessPremiumTypeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchedPremiumOperatorAccessPremiumType> get serializer => _$PatchedPremiumOperatorAccessPremiumTypeSerializer();
}

class _$PatchedPremiumOperatorAccessPremiumTypeSerializer implements PrimitiveSerializer<PatchedPremiumOperatorAccessPremiumType> {
  @override
  final Iterable<Type> types = const [PatchedPremiumOperatorAccessPremiumType, _$PatchedPremiumOperatorAccessPremiumType];

  @override
  final String wireName = r'PatchedPremiumOperatorAccessPremiumType';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchedPremiumOperatorAccessPremiumType object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchedPremiumOperatorAccessPremiumType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatchedPremiumOperatorAccessPremiumTypeBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PatchedPremiumOperatorAccessPremiumType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchedPremiumOperatorAccessPremiumTypeBuilder();
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

