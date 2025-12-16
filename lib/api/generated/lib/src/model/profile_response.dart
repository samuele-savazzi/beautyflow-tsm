//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/tenant_admin_detail.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'profile_response.g.dart';

/// Response per GET /admin-api/auth/profile/
///
/// Properties:
/// * [admin] 
/// * [requiresPasswordChange] - True se deve cambiare password al prossimo login
/// * [requires2faSetup] - True se deve configurare 2FA (totp_enabled=False)
/// * [sessionInfo] - Info sessione corrente (IP, last_activity, etc.)
@BuiltValue()
abstract class ProfileResponse implements Built<ProfileResponse, ProfileResponseBuilder> {
  @BuiltValueField(wireName: r'admin')
  TenantAdminDetail get admin;

  /// True se deve cambiare password al prossimo login
  @BuiltValueField(wireName: r'requires_password_change')
  bool get requiresPasswordChange;

  /// True se deve configurare 2FA (totp_enabled=False)
  @BuiltValueField(wireName: r'requires_2fa_setup')
  bool get requires2faSetup;

  /// Info sessione corrente (IP, last_activity, etc.)
  @BuiltValueField(wireName: r'session_info')
  BuiltMap<String, Map<String, dynamic>?> get sessionInfo;

  ProfileResponse._();

  factory ProfileResponse([void updates(ProfileResponseBuilder b)]) = _$ProfileResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProfileResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProfileResponse> get serializer => _$ProfileResponseSerializer();
}

class _$ProfileResponseSerializer implements PrimitiveSerializer<ProfileResponse> {
  @override
  final Iterable<Type> types = const [ProfileResponse, _$ProfileResponse];

  @override
  final String wireName = r'ProfileResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProfileResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'admin';
    yield serializers.serialize(
      object.admin,
      specifiedType: const FullType(TenantAdminDetail),
    );
    yield r'requires_password_change';
    yield serializers.serialize(
      object.requiresPasswordChange,
      specifiedType: const FullType(bool),
    );
    yield r'requires_2fa_setup';
    yield serializers.serialize(
      object.requires2faSetup,
      specifiedType: const FullType(bool),
    );
    yield r'session_info';
    yield serializers.serialize(
      object.sessionInfo,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProfileResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProfileResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'admin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TenantAdminDetail),
          ) as TenantAdminDetail;
          result.admin.replace(valueDes);
          break;
        case r'requires_password_change':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.requiresPasswordChange = valueDes;
          break;
        case r'requires_2fa_setup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.requires2faSetup = valueDes;
          break;
        case r'session_info':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltMap<String, Map<String, dynamic>?>;
          result.sessionInfo.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProfileResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProfileResponseBuilder();
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

