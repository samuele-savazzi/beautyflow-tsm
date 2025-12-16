//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'authorization_requirement.g.dart';

/// AuthorizationRequirement
///
/// Properties:
/// * [id] 
/// * [resource] 
/// * [action] 
/// * [required_] 
/// * [description] 
@BuiltValue()
abstract class AuthorizationRequirement implements Built<AuthorizationRequirement, AuthorizationRequirementBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'resource')
  String get resource;

  @BuiltValueField(wireName: r'action')
  String get action;

  @BuiltValueField(wireName: r'required')
  bool get required_;

  @BuiltValueField(wireName: r'description')
  String get description;

  AuthorizationRequirement._();

  factory AuthorizationRequirement([void updates(AuthorizationRequirementBuilder b)]) = _$AuthorizationRequirement;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthorizationRequirementBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthorizationRequirement> get serializer => _$AuthorizationRequirementSerializer();
}

class _$AuthorizationRequirementSerializer implements PrimitiveSerializer<AuthorizationRequirement> {
  @override
  final Iterable<Type> types = const [AuthorizationRequirement, _$AuthorizationRequirement];

  @override
  final String wireName = r'AuthorizationRequirement';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthorizationRequirement object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'resource';
    yield serializers.serialize(
      object.resource,
      specifiedType: const FullType(String),
    );
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(String),
    );
    yield r'required';
    yield serializers.serialize(
      object.required_,
      specifiedType: const FullType(bool),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthorizationRequirement object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthorizationRequirementBuilder result,
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
        case r'resource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.resource = valueDes;
          break;
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.action = valueDes;
          break;
        case r'required':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.required_ = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthorizationRequirement deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthorizationRequirementBuilder();
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

