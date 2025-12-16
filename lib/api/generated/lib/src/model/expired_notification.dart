//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'expired_notification.g.dart';

/// ExpiredNotification
///
/// Properties:
/// * [userId] 
/// * [email] 
/// * [accountNickname] 
/// * [expiredAt] 
/// * [message] 
@BuiltValue()
abstract class ExpiredNotification implements Built<ExpiredNotification, ExpiredNotificationBuilder> {
  @BuiltValueField(wireName: r'user_id')
  int get userId;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'account_nickname')
  String get accountNickname;

  @BuiltValueField(wireName: r'expired_at')
  DateTime get expiredAt;

  @BuiltValueField(wireName: r'message')
  String get message;

  ExpiredNotification._();

  factory ExpiredNotification([void updates(ExpiredNotificationBuilder b)]) = _$ExpiredNotification;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExpiredNotificationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExpiredNotification> get serializer => _$ExpiredNotificationSerializer();
}

class _$ExpiredNotificationSerializer implements PrimitiveSerializer<ExpiredNotification> {
  @override
  final Iterable<Type> types = const [ExpiredNotification, _$ExpiredNotification];

  @override
  final String wireName = r'ExpiredNotification';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExpiredNotification object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'user_id';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(int),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'account_nickname';
    yield serializers.serialize(
      object.accountNickname,
      specifiedType: const FullType(String),
    );
    yield r'expired_at';
    yield serializers.serialize(
      object.expiredAt,
      specifiedType: const FullType(DateTime),
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
    ExpiredNotification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExpiredNotificationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.userId = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'account_nickname':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accountNickname = valueDes;
          break;
        case r'expired_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiredAt = valueDes;
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
  ExpiredNotification deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExpiredNotificationBuilder();
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

