//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operator_premium_access.g.dart';

/// OperatorPremiumAccess
///
/// Properties:
/// * [id] 
/// * [firstName] 
/// * [lastName] 
/// * [fullName] 
/// * [attachmentUrl] 
/// * [extraDays] 
@BuiltValue()
abstract class OperatorPremiumAccess implements Built<OperatorPremiumAccess, OperatorPremiumAccessBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'first_name')
  String get firstName;

  @BuiltValueField(wireName: r'last_name')
  String get lastName;

  @BuiltValueField(wireName: r'full_name')
  String get fullName;

  @BuiltValueField(wireName: r'attachment_url')
  String? get attachmentUrl;

  @BuiltValueField(wireName: r'extra_days')
  int get extraDays;

  OperatorPremiumAccess._();

  factory OperatorPremiumAccess([void updates(OperatorPremiumAccessBuilder b)]) = _$OperatorPremiumAccess;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperatorPremiumAccessBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperatorPremiumAccess> get serializer => _$OperatorPremiumAccessSerializer();
}

class _$OperatorPremiumAccessSerializer implements PrimitiveSerializer<OperatorPremiumAccess> {
  @override
  final Iterable<Type> types = const [OperatorPremiumAccess, _$OperatorPremiumAccess];

  @override
  final String wireName = r'OperatorPremiumAccess';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperatorPremiumAccess object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'first_name';
    yield serializers.serialize(
      object.firstName,
      specifiedType: const FullType(String),
    );
    yield r'last_name';
    yield serializers.serialize(
      object.lastName,
      specifiedType: const FullType(String),
    );
    yield r'full_name';
    yield serializers.serialize(
      object.fullName,
      specifiedType: const FullType(String),
    );
    yield r'attachment_url';
    yield object.attachmentUrl == null ? null : serializers.serialize(
      object.attachmentUrl,
      specifiedType: const FullType.nullable(String),
    );
    yield r'extra_days';
    yield serializers.serialize(
      object.extraDays,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OperatorPremiumAccess object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperatorPremiumAccessBuilder result,
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
        case r'extra_days':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.extraDays = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OperatorPremiumAccess deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperatorPremiumAccessBuilder();
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

