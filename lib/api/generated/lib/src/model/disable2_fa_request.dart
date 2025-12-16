//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'disable2_fa_request.g.dart';

/// Request per disabilitare 2FA
///
/// Properties:
/// * [password] - Password corrente per conferma
@BuiltValue()
abstract class Disable2FARequest implements Built<Disable2FARequest, Disable2FARequestBuilder> {
  /// Password corrente per conferma
  @BuiltValueField(wireName: r'password')
  String get password;

  Disable2FARequest._();

  factory Disable2FARequest([void updates(Disable2FARequestBuilder b)]) = _$Disable2FARequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Disable2FARequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Disable2FARequest> get serializer => _$Disable2FARequestSerializer();
}

class _$Disable2FARequestSerializer implements PrimitiveSerializer<Disable2FARequest> {
  @override
  final Iterable<Type> types = const [Disable2FARequest, _$Disable2FARequest];

  @override
  final String wireName = r'Disable2FARequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Disable2FARequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Disable2FARequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Disable2FARequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Disable2FARequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Disable2FARequestBuilder();
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

