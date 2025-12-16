//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/expired_notification.dart';
import 'package:beautyflow_api/src/model/account_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fingerprint_accounts_response.g.dart';

/// FingerprintAccountsResponse
///
/// Properties:
/// * [deviceName] 
/// * [accounts] 
/// * [expiredNotifications] 
@BuiltValue()
abstract class FingerprintAccountsResponse implements Built<FingerprintAccountsResponse, FingerprintAccountsResponseBuilder> {
  @BuiltValueField(wireName: r'device_name')
  String? get deviceName;

  @BuiltValueField(wireName: r'accounts')
  BuiltList<AccountInfo> get accounts;

  @BuiltValueField(wireName: r'expired_notifications')
  BuiltList<ExpiredNotification> get expiredNotifications;

  FingerprintAccountsResponse._();

  factory FingerprintAccountsResponse([void updates(FingerprintAccountsResponseBuilder b)]) = _$FingerprintAccountsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FingerprintAccountsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FingerprintAccountsResponse> get serializer => _$FingerprintAccountsResponseSerializer();
}

class _$FingerprintAccountsResponseSerializer implements PrimitiveSerializer<FingerprintAccountsResponse> {
  @override
  final Iterable<Type> types = const [FingerprintAccountsResponse, _$FingerprintAccountsResponse];

  @override
  final String wireName = r'FingerprintAccountsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FingerprintAccountsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'device_name';
    yield object.deviceName == null ? null : serializers.serialize(
      object.deviceName,
      specifiedType: const FullType.nullable(String),
    );
    yield r'accounts';
    yield serializers.serialize(
      object.accounts,
      specifiedType: const FullType(BuiltList, [FullType(AccountInfo)]),
    );
    yield r'expired_notifications';
    yield serializers.serialize(
      object.expiredNotifications,
      specifiedType: const FullType(BuiltList, [FullType(ExpiredNotification)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FingerprintAccountsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FingerprintAccountsResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'device_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.deviceName = valueDes;
          break;
        case r'accounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AccountInfo)]),
          ) as BuiltList<AccountInfo>;
          result.accounts.replace(valueDes);
          break;
        case r'expired_notifications':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExpiredNotification)]),
          ) as BuiltList<ExpiredNotification>;
          result.expiredNotifications.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FingerprintAccountsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FingerprintAccountsResponseBuilder();
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

