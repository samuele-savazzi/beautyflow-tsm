//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gdpr_consent_item.g.dart';

/// GDPRConsentItem
///
/// Properties:
/// * [id] 
/// * [privacyVersion] 
/// * [acceptedAt] 
/// * [revokedAt] 
/// * [isActive] 
/// * [ipAddress] 
@BuiltValue()
abstract class GDPRConsentItem implements Built<GDPRConsentItem, GDPRConsentItemBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'privacy_version')
  String get privacyVersion;

  @BuiltValueField(wireName: r'accepted_at')
  DateTime get acceptedAt;

  @BuiltValueField(wireName: r'revoked_at')
  DateTime? get revokedAt;

  @BuiltValueField(wireName: r'is_active')
  bool get isActive;

  @BuiltValueField(wireName: r'ip_address')
  String get ipAddress;

  GDPRConsentItem._();

  factory GDPRConsentItem([void updates(GDPRConsentItemBuilder b)]) = _$GDPRConsentItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GDPRConsentItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GDPRConsentItem> get serializer => _$GDPRConsentItemSerializer();
}

class _$GDPRConsentItemSerializer implements PrimitiveSerializer<GDPRConsentItem> {
  @override
  final Iterable<Type> types = const [GDPRConsentItem, _$GDPRConsentItem];

  @override
  final String wireName = r'GDPRConsentItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GDPRConsentItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'privacy_version';
    yield serializers.serialize(
      object.privacyVersion,
      specifiedType: const FullType(String),
    );
    yield r'accepted_at';
    yield serializers.serialize(
      object.acceptedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'revoked_at';
    yield object.revokedAt == null ? null : serializers.serialize(
      object.revokedAt,
      specifiedType: const FullType.nullable(DateTime),
    );
    yield r'is_active';
    yield serializers.serialize(
      object.isActive,
      specifiedType: const FullType(bool),
    );
    yield r'ip_address';
    yield serializers.serialize(
      object.ipAddress,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GDPRConsentItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GDPRConsentItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'privacy_version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.privacyVersion = valueDes;
          break;
        case r'accepted_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.acceptedAt = valueDes;
          break;
        case r'revoked_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.revokedAt = valueDes;
          break;
        case r'is_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'ip_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ipAddress = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GDPRConsentItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GDPRConsentItemBuilder();
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

