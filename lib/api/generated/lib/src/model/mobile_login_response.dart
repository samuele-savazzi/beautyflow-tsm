//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/user_info_with_role.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mobile_login_response.g.dart';

/// MobileLoginResponse
///
/// Properties:
/// * [access] 
/// * [refresh] 
/// * [user] 
@BuiltValue()
abstract class MobileLoginResponse implements Built<MobileLoginResponse, MobileLoginResponseBuilder> {
  @BuiltValueField(wireName: r'access')
  String get access;

  @BuiltValueField(wireName: r'refresh')
  String get refresh;

  @BuiltValueField(wireName: r'user')
  UserInfoWithRole get user;

  MobileLoginResponse._();

  factory MobileLoginResponse([void updates(MobileLoginResponseBuilder b)]) = _$MobileLoginResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MobileLoginResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MobileLoginResponse> get serializer => _$MobileLoginResponseSerializer();
}

class _$MobileLoginResponseSerializer implements PrimitiveSerializer<MobileLoginResponse> {
  @override
  final Iterable<Type> types = const [MobileLoginResponse, _$MobileLoginResponse];

  @override
  final String wireName = r'MobileLoginResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MobileLoginResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'access';
    yield serializers.serialize(
      object.access,
      specifiedType: const FullType(String),
    );
    yield r'refresh';
    yield serializers.serialize(
      object.refresh,
      specifiedType: const FullType(String),
    );
    yield r'user';
    yield serializers.serialize(
      object.user,
      specifiedType: const FullType(UserInfoWithRole),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MobileLoginResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MobileLoginResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'access':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.access = valueDes;
          break;
        case r'refresh':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refresh = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserInfoWithRole),
          ) as UserInfoWithRole;
          result.user.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MobileLoginResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MobileLoginResponseBuilder();
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

