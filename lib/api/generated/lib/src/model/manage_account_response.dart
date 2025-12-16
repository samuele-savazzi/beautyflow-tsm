//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'manage_account_response.g.dart';

/// ManageAccountResponse
///
/// Properties:
/// * [message] 
@BuiltValue()
abstract class ManageAccountResponse implements Built<ManageAccountResponse, ManageAccountResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  ManageAccountResponse._();

  factory ManageAccountResponse([void updates(ManageAccountResponseBuilder b)]) = _$ManageAccountResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ManageAccountResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ManageAccountResponse> get serializer => _$ManageAccountResponseSerializer();
}

class _$ManageAccountResponseSerializer implements PrimitiveSerializer<ManageAccountResponse> {
  @override
  final Iterable<Type> types = const [ManageAccountResponse, _$ManageAccountResponse];

  @override
  final String wireName = r'ManageAccountResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ManageAccountResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ManageAccountResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ManageAccountResponseBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ManageAccountResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ManageAccountResponseBuilder();
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

