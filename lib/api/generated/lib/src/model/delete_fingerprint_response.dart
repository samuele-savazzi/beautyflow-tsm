//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delete_fingerprint_response.g.dart';

/// DeleteFingerprintResponse
///
/// Properties:
/// * [message] 
/// * [accountsRemoved] 
@BuiltValue()
abstract class DeleteFingerprintResponse implements Built<DeleteFingerprintResponse, DeleteFingerprintResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'accounts_removed')
  int get accountsRemoved;

  DeleteFingerprintResponse._();

  factory DeleteFingerprintResponse([void updates(DeleteFingerprintResponseBuilder b)]) = _$DeleteFingerprintResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeleteFingerprintResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeleteFingerprintResponse> get serializer => _$DeleteFingerprintResponseSerializer();
}

class _$DeleteFingerprintResponseSerializer implements PrimitiveSerializer<DeleteFingerprintResponse> {
  @override
  final Iterable<Type> types = const [DeleteFingerprintResponse, _$DeleteFingerprintResponse];

  @override
  final String wireName = r'DeleteFingerprintResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeleteFingerprintResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    yield r'accounts_removed';
    yield serializers.serialize(
      object.accountsRemoved,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DeleteFingerprintResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeleteFingerprintResponseBuilder result,
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
        case r'accounts_removed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.accountsRemoved = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeleteFingerprintResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteFingerprintResponseBuilder();
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

