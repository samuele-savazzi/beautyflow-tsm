//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/workspace_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_info_with_role.g.dart';

/// UserInfoWithRole
///
/// Properties:
/// * [trusted] 
/// * [id] 
/// * [email] 
/// * [username] 
/// * [firstName] 
/// * [lastName] 
/// * [role] 
/// * [workspaces] 
@BuiltValue()
abstract class UserInfoWithRole implements Built<UserInfoWithRole, UserInfoWithRoleBuilder> {
  @BuiltValueField(wireName: r'trusted')
  bool get trusted;

  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'username')
  String get username;

  @BuiltValueField(wireName: r'first_name')
  String get firstName;

  @BuiltValueField(wireName: r'last_name')
  String get lastName;

  @BuiltValueField(wireName: r'role')
  String? get role;

  @BuiltValueField(wireName: r'workspaces')
  BuiltList<WorkspaceInfo> get workspaces;

  UserInfoWithRole._();

  factory UserInfoWithRole([void updates(UserInfoWithRoleBuilder b)]) = _$UserInfoWithRole;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserInfoWithRoleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserInfoWithRole> get serializer => _$UserInfoWithRoleSerializer();
}

class _$UserInfoWithRoleSerializer implements PrimitiveSerializer<UserInfoWithRole> {
  @override
  final Iterable<Type> types = const [UserInfoWithRole, _$UserInfoWithRole];

  @override
  final String wireName = r'UserInfoWithRole';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserInfoWithRole object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'trusted';
    yield serializers.serialize(
      object.trusted,
      specifiedType: const FullType(bool),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'username';
    yield serializers.serialize(
      object.username,
      specifiedType: const FullType(String),
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
    yield r'role';
    yield object.role == null ? null : serializers.serialize(
      object.role,
      specifiedType: const FullType.nullable(String),
    );
    yield r'workspaces';
    yield serializers.serialize(
      object.workspaces,
      specifiedType: const FullType(BuiltList, [FullType(WorkspaceInfo)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserInfoWithRole object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserInfoWithRoleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'trusted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.trusted = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.username = valueDes;
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
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.role = valueDes;
          break;
        case r'workspaces':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(WorkspaceInfo)]),
          ) as BuiltList<WorkspaceInfo>;
          result.workspaces.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserInfoWithRole deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserInfoWithRoleBuilder();
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

