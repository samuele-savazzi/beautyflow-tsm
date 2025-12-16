//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/manage_account_request_action_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'manage_account_request.g.dart';

/// ManageAccountRequest
///
/// Properties:
/// * [deviceFingerprint] 
/// * [userId] 
/// * [action] 
@BuiltValue()
abstract class ManageAccountRequest implements Built<ManageAccountRequest, ManageAccountRequestBuilder> {
  @BuiltValueField(wireName: r'device_fingerprint')
  String get deviceFingerprint;

  @BuiltValueField(wireName: r'user_id')
  int get userId;

  @BuiltValueField(wireName: r'action')
  ManageAccountRequestActionEnum get action;
  // enum actionEnum {  remove,  deactivate,  };

  ManageAccountRequest._();

  factory ManageAccountRequest([void updates(ManageAccountRequestBuilder b)]) = _$ManageAccountRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ManageAccountRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ManageAccountRequest> get serializer => _$ManageAccountRequestSerializer();
}

class _$ManageAccountRequestSerializer implements PrimitiveSerializer<ManageAccountRequest> {
  @override
  final Iterable<Type> types = const [ManageAccountRequest, _$ManageAccountRequest];

  @override
  final String wireName = r'ManageAccountRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ManageAccountRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'device_fingerprint';
    yield serializers.serialize(
      object.deviceFingerprint,
      specifiedType: const FullType(String),
    );
    yield r'user_id';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(int),
    );
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(ManageAccountRequestActionEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ManageAccountRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ManageAccountRequestBuilder result,
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
        case r'user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.userId = valueDes;
          break;
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ManageAccountRequestActionEnum),
          ) as ManageAccountRequestActionEnum;
          result.action = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ManageAccountRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ManageAccountRequestBuilder();
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

