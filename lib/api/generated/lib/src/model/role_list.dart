//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'role_list.g.dart';

/// RoleList
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [isOperator] 
/// * [isOperatorAuthorized] 
/// * [isTitular] 
/// * [isSecretariat] 
/// * [isAdmin] 
@BuiltValue()
abstract class RoleList implements Built<RoleList, RoleListBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'is_operator')
  bool get isOperator;

  @BuiltValueField(wireName: r'is_operator_authorized')
  bool get isOperatorAuthorized;

  @BuiltValueField(wireName: r'is_titular')
  bool get isTitular;

  @BuiltValueField(wireName: r'is_secretariat')
  bool get isSecretariat;

  @BuiltValueField(wireName: r'is_admin')
  bool get isAdmin;

  RoleList._();

  factory RoleList([void updates(RoleListBuilder b)]) = _$RoleList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RoleListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RoleList> get serializer => _$RoleListSerializer();
}

class _$RoleListSerializer implements PrimitiveSerializer<RoleList> {
  @override
  final Iterable<Type> types = const [RoleList, _$RoleList];

  @override
  final String wireName = r'RoleList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RoleList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'is_operator';
    yield serializers.serialize(
      object.isOperator,
      specifiedType: const FullType(bool),
    );
    yield r'is_operator_authorized';
    yield serializers.serialize(
      object.isOperatorAuthorized,
      specifiedType: const FullType(bool),
    );
    yield r'is_titular';
    yield serializers.serialize(
      object.isTitular,
      specifiedType: const FullType(bool),
    );
    yield r'is_secretariat';
    yield serializers.serialize(
      object.isSecretariat,
      specifiedType: const FullType(bool),
    );
    yield r'is_admin';
    yield serializers.serialize(
      object.isAdmin,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RoleList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RoleListBuilder result,
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
        case r'is_operator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isOperator = valueDes;
          break;
        case r'is_operator_authorized':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isOperatorAuthorized = valueDes;
          break;
        case r'is_titular':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isTitular = valueDes;
          break;
        case r'is_secretariat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isSecretariat = valueDes;
          break;
        case r'is_admin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isAdmin = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RoleList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RoleListBuilder();
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

