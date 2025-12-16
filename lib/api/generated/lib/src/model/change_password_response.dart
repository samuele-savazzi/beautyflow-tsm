//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'change_password_response.g.dart';

/// Response per cambio password
///
/// Properties:
/// * [message] 
/// * [mustChangePassword] - False se cambio completato con successo
@BuiltValue()
abstract class ChangePasswordResponse implements Built<ChangePasswordResponse, ChangePasswordResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  /// False se cambio completato con successo
  @BuiltValueField(wireName: r'must_change_password')
  bool get mustChangePassword;

  ChangePasswordResponse._();

  factory ChangePasswordResponse([void updates(ChangePasswordResponseBuilder b)]) = _$ChangePasswordResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChangePasswordResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChangePasswordResponse> get serializer => _$ChangePasswordResponseSerializer();
}

class _$ChangePasswordResponseSerializer implements PrimitiveSerializer<ChangePasswordResponse> {
  @override
  final Iterable<Type> types = const [ChangePasswordResponse, _$ChangePasswordResponse];

  @override
  final String wireName = r'ChangePasswordResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChangePasswordResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    yield r'must_change_password';
    yield serializers.serialize(
      object.mustChangePassword,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ChangePasswordResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChangePasswordResponseBuilder result,
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
        case r'must_change_password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.mustChangePassword = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChangePasswordResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChangePasswordResponseBuilder();
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

