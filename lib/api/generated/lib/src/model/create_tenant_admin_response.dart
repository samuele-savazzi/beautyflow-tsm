//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/tenant_admin_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_tenant_admin_response.g.dart';

/// Response per creazione TenantAdmin
///
/// Properties:
/// * [message] 
/// * [admin] 
/// * [temporaryPassword] - Password temporanea generata (mostrata SOLO in questa response)
/// * [emailSent] - True se email credenziali inviata con successo
@BuiltValue()
abstract class CreateTenantAdminResponse implements Built<CreateTenantAdminResponse, CreateTenantAdminResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'admin')
  TenantAdminInfo get admin;

  /// Password temporanea generata (mostrata SOLO in questa response)
  @BuiltValueField(wireName: r'temporary_password')
  String get temporaryPassword;

  /// True se email credenziali inviata con successo
  @BuiltValueField(wireName: r'email_sent')
  bool get emailSent;

  CreateTenantAdminResponse._();

  factory CreateTenantAdminResponse([void updates(CreateTenantAdminResponseBuilder b)]) = _$CreateTenantAdminResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateTenantAdminResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateTenantAdminResponse> get serializer => _$CreateTenantAdminResponseSerializer();
}

class _$CreateTenantAdminResponseSerializer implements PrimitiveSerializer<CreateTenantAdminResponse> {
  @override
  final Iterable<Type> types = const [CreateTenantAdminResponse, _$CreateTenantAdminResponse];

  @override
  final String wireName = r'CreateTenantAdminResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateTenantAdminResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    yield r'admin';
    yield serializers.serialize(
      object.admin,
      specifiedType: const FullType(TenantAdminInfo),
    );
    yield r'temporary_password';
    yield serializers.serialize(
      object.temporaryPassword,
      specifiedType: const FullType(String),
    );
    yield r'email_sent';
    yield serializers.serialize(
      object.emailSent,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateTenantAdminResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateTenantAdminResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'admin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TenantAdminInfo),
          ) as TenantAdminInfo;
          result.admin.replace(valueDes);
          break;
        case r'temporary_password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.temporaryPassword = valueDes;
          break;
        case r'email_sent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.emailSent = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateTenantAdminResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTenantAdminResponseBuilder();
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

