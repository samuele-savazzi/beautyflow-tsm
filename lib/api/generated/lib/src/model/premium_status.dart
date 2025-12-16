//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'premium_status.g.dart';

/// PremiumStatus
///
/// Properties:
/// * [isPremium] 
/// * [subscriptionEnd] 
@BuiltValue()
abstract class PremiumStatus implements Built<PremiumStatus, PremiumStatusBuilder> {
  @BuiltValueField(wireName: r'is_premium')
  bool get isPremium;

  @BuiltValueField(wireName: r'subscription_end')
  Date? get subscriptionEnd;

  PremiumStatus._();

  factory PremiumStatus([void updates(PremiumStatusBuilder b)]) = _$PremiumStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PremiumStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PremiumStatus> get serializer => _$PremiumStatusSerializer();
}

class _$PremiumStatusSerializer implements PrimitiveSerializer<PremiumStatus> {
  @override
  final Iterable<Type> types = const [PremiumStatus, _$PremiumStatus];

  @override
  final String wireName = r'PremiumStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PremiumStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'is_premium';
    yield serializers.serialize(
      object.isPremium,
      specifiedType: const FullType(bool),
    );
    yield r'subscription_end';
    yield object.subscriptionEnd == null ? null : serializers.serialize(
      object.subscriptionEnd,
      specifiedType: const FullType.nullable(Date),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PremiumStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PremiumStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'is_premium':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isPremium = valueDes;
          break;
        case r'subscription_end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.subscriptionEnd = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PremiumStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PremiumStatusBuilder();
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

