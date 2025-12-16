//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mark_notifications_read_response.g.dart';

/// MarkNotificationsReadResponse
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [count] 
@BuiltValue()
abstract class MarkNotificationsReadResponse implements Built<MarkNotificationsReadResponse, MarkNotificationsReadResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'count')
  int get count;

  MarkNotificationsReadResponse._();

  factory MarkNotificationsReadResponse([void updates(MarkNotificationsReadResponseBuilder b)]) = _$MarkNotificationsReadResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MarkNotificationsReadResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MarkNotificationsReadResponse> get serializer => _$MarkNotificationsReadResponseSerializer();
}

class _$MarkNotificationsReadResponseSerializer implements PrimitiveSerializer<MarkNotificationsReadResponse> {
  @override
  final Iterable<Type> types = const [MarkNotificationsReadResponse, _$MarkNotificationsReadResponse];

  @override
  final String wireName = r'MarkNotificationsReadResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MarkNotificationsReadResponse object, {
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
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MarkNotificationsReadResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MarkNotificationsReadResponseBuilder result,
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
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MarkNotificationsReadResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MarkNotificationsReadResponseBuilder();
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

