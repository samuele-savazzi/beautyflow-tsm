//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patched_premium_operator_access_operator.g.dart';

/// PatchedPremiumOperatorAccessOperator
///
/// Properties:
/// * [id] 
/// * [firstName] 
/// * [lastName] 
/// * [fullName] 
/// * [attachmentUrl] 
@BuiltValue()
abstract class PatchedPremiumOperatorAccessOperator implements Built<PatchedPremiumOperatorAccessOperator, PatchedPremiumOperatorAccessOperatorBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'first_name')
  String? get firstName;

  @BuiltValueField(wireName: r'last_name')
  String? get lastName;

  @BuiltValueField(wireName: r'full_name')
  String? get fullName;

  @BuiltValueField(wireName: r'attachment_url')
  String? get attachmentUrl;

  PatchedPremiumOperatorAccessOperator._();

  factory PatchedPremiumOperatorAccessOperator([void updates(PatchedPremiumOperatorAccessOperatorBuilder b)]) = _$PatchedPremiumOperatorAccessOperator;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchedPremiumOperatorAccessOperatorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchedPremiumOperatorAccessOperator> get serializer => _$PatchedPremiumOperatorAccessOperatorSerializer();
}

class _$PatchedPremiumOperatorAccessOperatorSerializer implements PrimitiveSerializer<PatchedPremiumOperatorAccessOperator> {
  @override
  final Iterable<Type> types = const [PatchedPremiumOperatorAccessOperator, _$PatchedPremiumOperatorAccessOperator];

  @override
  final String wireName = r'PatchedPremiumOperatorAccessOperator';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchedPremiumOperatorAccessOperator object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.firstName != null) {
      yield r'first_name';
      yield serializers.serialize(
        object.firstName,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastName != null) {
      yield r'last_name';
      yield serializers.serialize(
        object.lastName,
        specifiedType: const FullType(String),
      );
    }
    if (object.fullName != null) {
      yield r'full_name';
      yield serializers.serialize(
        object.fullName,
        specifiedType: const FullType(String),
      );
    }
    if (object.attachmentUrl != null) {
      yield r'attachment_url';
      yield serializers.serialize(
        object.attachmentUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchedPremiumOperatorAccessOperator object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatchedPremiumOperatorAccessOperatorBuilder result,
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
        case r'first_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.firstName = valueDes;
          break;
        case r'last_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastName = valueDes;
          break;
        case r'full_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fullName = valueDes;
          break;
        case r'attachment_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.attachmentUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PatchedPremiumOperatorAccessOperator deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchedPremiumOperatorAccessOperatorBuilder();
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

