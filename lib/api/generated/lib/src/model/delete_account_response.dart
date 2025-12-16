//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delete_account_response.g.dart';

/// DeleteAccountResponse
///
/// Properties:
/// * [success] 
/// * [message] 
@BuiltValue()
abstract class DeleteAccountResponse implements Built<DeleteAccountResponse, DeleteAccountResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'message')
  String get message;

  DeleteAccountResponse._();

  factory DeleteAccountResponse([void updates(DeleteAccountResponseBuilder b)]) = _$DeleteAccountResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeleteAccountResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeleteAccountResponse> get serializer => _$DeleteAccountResponseSerializer();
}

class _$DeleteAccountResponseSerializer implements PrimitiveSerializer<DeleteAccountResponse> {
  @override
  final Iterable<Type> types = const [DeleteAccountResponse, _$DeleteAccountResponse];

  @override
  final String wireName = r'DeleteAccountResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeleteAccountResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
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
    DeleteAccountResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeleteAccountResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
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
  DeleteAccountResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteAccountResponseBuilder();
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

