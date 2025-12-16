//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_info.g.dart';

/// AccountInfo
///
/// Properties:
/// * [userId] 
/// * [email] 
/// * [accountNickname] 
/// * [avatarColor] 
/// * [lastAccess] 
/// * [isActive] 
/// * [isExpired] 
/// * [expiredAt] 
/// * [daysSinceAccess] 
/// * [deviceId] 
@BuiltValue()
abstract class AccountInfo implements Built<AccountInfo, AccountInfoBuilder> {
  @BuiltValueField(wireName: r'user_id')
  int get userId;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'account_nickname')
  String get accountNickname;

  @BuiltValueField(wireName: r'avatar_color')
  String get avatarColor;

  @BuiltValueField(wireName: r'last_access')
  DateTime? get lastAccess;

  @BuiltValueField(wireName: r'is_active')
  bool get isActive;

  @BuiltValueField(wireName: r'is_expired')
  bool get isExpired;

  @BuiltValueField(wireName: r'expired_at')
  DateTime? get expiredAt;

  @BuiltValueField(wireName: r'days_since_access')
  int? get daysSinceAccess;

  @BuiltValueField(wireName: r'device_id')
  int get deviceId;

  AccountInfo._();

  factory AccountInfo([void updates(AccountInfoBuilder b)]) = _$AccountInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountInfo> get serializer => _$AccountInfoSerializer();
}

class _$AccountInfoSerializer implements PrimitiveSerializer<AccountInfo> {
  @override
  final Iterable<Type> types = const [AccountInfo, _$AccountInfo];

  @override
  final String wireName = r'AccountInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountInfo object, {
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
    yield r'avatar_color';
    yield serializers.serialize(
      object.avatarColor,
      specifiedType: const FullType(String),
    );
    yield r'last_access';
    yield object.lastAccess == null ? null : serializers.serialize(
      object.lastAccess,
      specifiedType: const FullType.nullable(DateTime),
    );
    yield r'is_active';
    yield serializers.serialize(
      object.isActive,
      specifiedType: const FullType(bool),
    );
    yield r'is_expired';
    yield serializers.serialize(
      object.isExpired,
      specifiedType: const FullType(bool),
    );
    yield r'expired_at';
    yield object.expiredAt == null ? null : serializers.serialize(
      object.expiredAt,
      specifiedType: const FullType.nullable(DateTime),
    );
    yield r'days_since_access';
    yield object.daysSinceAccess == null ? null : serializers.serialize(
      object.daysSinceAccess,
      specifiedType: const FullType.nullable(int),
    );
    yield r'device_id';
    yield serializers.serialize(
      object.deviceId,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AccountInfoBuilder result,
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
        case r'avatar_color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.avatarColor = valueDes;
          break;
        case r'last_access':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastAccess = valueDes;
          break;
        case r'is_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'is_expired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isExpired = valueDes;
          break;
        case r'expired_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.expiredAt = valueDes;
          break;
        case r'days_since_access':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.daysSinceAccess = valueDes;
          break;
        case r'device_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.deviceId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountInfoBuilder();
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

