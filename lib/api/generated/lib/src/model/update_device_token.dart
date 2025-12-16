//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_device_token.g.dart';

/// UpdateDeviceToken
///
/// Properties:
/// * [id] 
/// * [active] 
@BuiltValue()
abstract class UpdateDeviceToken implements Built<UpdateDeviceToken, UpdateDeviceTokenBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'active')
  bool get active;

  UpdateDeviceToken._();

  factory UpdateDeviceToken([void updates(UpdateDeviceTokenBuilder b)]) = _$UpdateDeviceToken;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateDeviceTokenBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateDeviceToken> get serializer => _$UpdateDeviceTokenSerializer();
}

class _$UpdateDeviceTokenSerializer implements PrimitiveSerializer<UpdateDeviceToken> {
  @override
  final Iterable<Type> types = const [UpdateDeviceToken, _$UpdateDeviceToken];

  @override
  final String wireName = r'UpdateDeviceToken';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateDeviceToken object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'active';
    yield serializers.serialize(
      object.active,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateDeviceToken object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateDeviceTokenBuilder result,
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
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.active = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateDeviceToken deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateDeviceTokenBuilder();
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

