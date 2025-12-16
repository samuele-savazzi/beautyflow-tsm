//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/device_type_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'register_device_request.g.dart';

/// RegisterDeviceRequest
///
/// Properties:
/// * [deviceFingerprint] 
/// * [deviceName] 
/// * [deviceType] 
/// * [accountNickname] 
/// * [avatarColor] 
@BuiltValue()
abstract class RegisterDeviceRequest implements Built<RegisterDeviceRequest, RegisterDeviceRequestBuilder> {
  @BuiltValueField(wireName: r'device_fingerprint')
  String get deviceFingerprint;

  @BuiltValueField(wireName: r'device_name')
  String get deviceName;

  @BuiltValueField(wireName: r'device_type')
  DeviceTypeEnum? get deviceType;
  // enum deviceTypeEnum {  mobile,  tablet,  desktop,  web,  };

  @BuiltValueField(wireName: r'account_nickname')
  String? get accountNickname;

  @BuiltValueField(wireName: r'avatar_color')
  String? get avatarColor;

  RegisterDeviceRequest._();

  factory RegisterDeviceRequest([void updates(RegisterDeviceRequestBuilder b)]) = _$RegisterDeviceRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegisterDeviceRequestBuilder b) => b
      ..deviceType = DeviceTypeEnum.mobile
      ..avatarColor = '#673ab7';

  @BuiltValueSerializer(custom: true)
  static Serializer<RegisterDeviceRequest> get serializer => _$RegisterDeviceRequestSerializer();
}

class _$RegisterDeviceRequestSerializer implements PrimitiveSerializer<RegisterDeviceRequest> {
  @override
  final Iterable<Type> types = const [RegisterDeviceRequest, _$RegisterDeviceRequest];

  @override
  final String wireName = r'RegisterDeviceRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegisterDeviceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'device_fingerprint';
    yield serializers.serialize(
      object.deviceFingerprint,
      specifiedType: const FullType(String),
    );
    yield r'device_name';
    yield serializers.serialize(
      object.deviceName,
      specifiedType: const FullType(String),
    );
    if (object.deviceType != null) {
      yield r'device_type';
      yield serializers.serialize(
        object.deviceType,
        specifiedType: const FullType(DeviceTypeEnum),
      );
    }
    if (object.accountNickname != null) {
      yield r'account_nickname';
      yield serializers.serialize(
        object.accountNickname,
        specifiedType: const FullType(String),
      );
    }
    if (object.avatarColor != null) {
      yield r'avatar_color';
      yield serializers.serialize(
        object.avatarColor,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RegisterDeviceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RegisterDeviceRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'device_fingerprint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deviceFingerprint = valueDes;
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
            specifiedType: const FullType(DeviceTypeEnum),
          ) as DeviceTypeEnum;
          result.deviceType = valueDes;
          break;
        case r'account_nickname':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accountNickname = valueDes;
          break;
        case r'avatar_color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.avatarColor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegisterDeviceRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegisterDeviceRequestBuilder();
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

