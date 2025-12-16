//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'register_device_response.g.dart';

/// RegisterDeviceResponse
///
/// Properties:
/// * [id] 
/// * [deviceName] 
/// * [deviceType] 
/// * [accountNickname] 
/// * [message] 
@BuiltValue()
abstract class RegisterDeviceResponse implements Built<RegisterDeviceResponse, RegisterDeviceResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'device_name')
  String get deviceName;

  @BuiltValueField(wireName: r'device_type')
  String get deviceType;

  @BuiltValueField(wireName: r'account_nickname')
  String get accountNickname;

  @BuiltValueField(wireName: r'message')
  String get message;

  RegisterDeviceResponse._();

  factory RegisterDeviceResponse([void updates(RegisterDeviceResponseBuilder b)]) = _$RegisterDeviceResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegisterDeviceResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegisterDeviceResponse> get serializer => _$RegisterDeviceResponseSerializer();
}

class _$RegisterDeviceResponseSerializer implements PrimitiveSerializer<RegisterDeviceResponse> {
  @override
  final Iterable<Type> types = const [RegisterDeviceResponse, _$RegisterDeviceResponse];

  @override
  final String wireName = r'RegisterDeviceResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegisterDeviceResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'device_name';
    yield serializers.serialize(
      object.deviceName,
      specifiedType: const FullType(String),
    );
    yield r'device_type';
    yield serializers.serialize(
      object.deviceType,
      specifiedType: const FullType(String),
    );
    yield r'account_nickname';
    yield serializers.serialize(
      object.accountNickname,
      specifiedType: const FullType(String),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RegisterDeviceResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RegisterDeviceResponseBuilder result,
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
        case r'device_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deviceName = valueDes;
          break;
        case r'device_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deviceType = valueDes;
          break;
        case r'account_nickname':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accountNickname = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegisterDeviceResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegisterDeviceResponseBuilder();
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

