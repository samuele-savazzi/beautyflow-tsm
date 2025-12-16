//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/role3da_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tenant_admin_detail.g.dart';

/// Dettagli completi TenantAdmin
///
/// Properties:
/// * [id] 
/// * [email] 
/// * [firstName] 
/// * [lastName] 
/// * [phoneNumber] 
/// * [role] 
/// * [roleDisplay] 
/// * [totpEnabled] 
/// * [isActive] 
/// * [mustChangePassword] - Se True, l'admin deve cambiare password al prossimo login
/// * [lastLoginAt] 
/// * [failedLoginAttempts] 
/// * [createdAt] 
/// * [updatedAt] 
/// * [createdByEmail] 
@BuiltValue()
abstract class TenantAdminDetail implements Built<TenantAdminDetail, TenantAdminDetailBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'first_name')
  String get firstName;

  @BuiltValueField(wireName: r'last_name')
  String get lastName;

  @BuiltValueField(wireName: r'phone_number')
  String get phoneNumber;

  @BuiltValueField(wireName: r'role')
  Role3daEnum get role;
  // enum roleEnum {  admin,  commerciale,  support,  };

  @BuiltValueField(wireName: r'role_display')
  String get roleDisplay;

  @BuiltValueField(wireName: r'totp_enabled')
  bool get totpEnabled;

  @BuiltValueField(wireName: r'is_active')
  bool get isActive;

  /// Se True, l'admin deve cambiare password al prossimo login
  @BuiltValueField(wireName: r'must_change_password')
  bool get mustChangePassword;

  @BuiltValueField(wireName: r'last_login_at')
  DateTime? get lastLoginAt;

  @BuiltValueField(wireName: r'failed_login_attempts')
  int get failedLoginAttempts;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  @BuiltValueField(wireName: r'created_by_email')
  String? get createdByEmail;

  TenantAdminDetail._();

  factory TenantAdminDetail([void updates(TenantAdminDetailBuilder b)]) = _$TenantAdminDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TenantAdminDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TenantAdminDetail> get serializer => _$TenantAdminDetailSerializer();
}

class _$TenantAdminDetailSerializer implements PrimitiveSerializer<TenantAdminDetail> {
  @override
  final Iterable<Type> types = const [TenantAdminDetail, _$TenantAdminDetail];

  @override
  final String wireName = r'TenantAdminDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TenantAdminDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    yield r'phone_number';
    yield serializers.serialize(
      object.phoneNumber,
      specifiedType: const FullType(String),
    );
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(Role3daEnum),
    );
    yield r'role_display';
    yield serializers.serialize(
      object.roleDisplay,
      specifiedType: const FullType(String),
    );
    yield r'totp_enabled';
    yield serializers.serialize(
      object.totpEnabled,
      specifiedType: const FullType(bool),
    );
    yield r'is_active';
    yield serializers.serialize(
      object.isActive,
      specifiedType: const FullType(bool),
    );
    yield r'must_change_password';
    yield serializers.serialize(
      object.mustChangePassword,
      specifiedType: const FullType(bool),
    );
    yield r'last_login_at';
    yield object.lastLoginAt == null ? null : serializers.serialize(
      object.lastLoginAt,
      specifiedType: const FullType.nullable(DateTime),
    );
    yield r'failed_login_attempts';
    yield serializers.serialize(
      object.failedLoginAttempts,
      specifiedType: const FullType(int),
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
    yield r'created_by_email';
    yield object.createdByEmail == null ? null : serializers.serialize(
      object.createdByEmail,
      specifiedType: const FullType.nullable(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TenantAdminDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TenantAdminDetailBuilder result,
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
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
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
        case r'phone_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phoneNumber = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Role3daEnum),
          ) as Role3daEnum;
          result.role = valueDes;
          break;
        case r'role_display':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.roleDisplay = valueDes;
          break;
        case r'totp_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.totpEnabled = valueDes;
          break;
        case r'is_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'must_change_password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.mustChangePassword = valueDes;
          break;
        case r'last_login_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastLoginAt = valueDes;
          break;
        case r'failed_login_attempts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.failedLoginAttempts = valueDes;
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
        case r'created_by_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.createdByEmail = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TenantAdminDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TenantAdminDetailBuilder();
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

