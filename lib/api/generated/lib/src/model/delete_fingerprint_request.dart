//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delete_fingerprint_request.g.dart';

/// DeleteFingerprintRequest
///
/// Properties:
/// * [deviceFingerprint] 
/// * [confirm] 
@BuiltValue()
abstract class DeleteFingerprintRequest implements Built<DeleteFingerprintRequest, DeleteFingerprintRequestBuilder> {
  @BuiltValueField(wireName: r'device_fingerprint')
  String get deviceFingerprint;

  @BuiltValueField(wireName: r'confirm')
  bool get confirm;

  DeleteFingerprintRequest._();

  factory DeleteFingerprintRequest([void updates(DeleteFingerprintRequestBuilder b)]) = _$DeleteFingerprintRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeleteFingerprintRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeleteFingerprintRequest> get serializer => _$DeleteFingerprintRequestSerializer();
}

class _$DeleteFingerprintRequestSerializer implements PrimitiveSerializer<DeleteFingerprintRequest> {
  @override
  final Iterable<Type> types = const [DeleteFingerprintRequest, _$DeleteFingerprintRequest];

  @override
  final String wireName = r'DeleteFingerprintRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeleteFingerprintRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'device_fingerprint';
    yield serializers.serialize(
      object.deviceFingerprint,
      specifiedType: const FullType(String),
    );
    yield r'confirm';
    yield serializers.serialize(
      object.confirm,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DeleteFingerprintRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeleteFingerprintRequestBuilder result,
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
        case r'confirm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.confirm = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeleteFingerprintRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteFingerprintRequestBuilder();
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

