//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'subscription_renew.g.dart';

/// Serializer per il rinnovo di una subscription premium
///
/// Properties:
/// * [durationDays] - Durata del rinnovo in giorni (default 30)
/// * [paidPrice] - Prezzo pagato per il rinnovo (se diverso dal prezzo standard)
/// * [notes] - Note aggiuntive sul rinnovo
@BuiltValue()
abstract class SubscriptionRenew implements Built<SubscriptionRenew, SubscriptionRenewBuilder> {
  /// Durata del rinnovo in giorni (default 30)
  @BuiltValueField(wireName: r'duration_days')
  int? get durationDays;

  /// Prezzo pagato per il rinnovo (se diverso dal prezzo standard)
  @BuiltValueField(wireName: r'paid_price')
  double? get paidPrice;

  /// Note aggiuntive sul rinnovo
  @BuiltValueField(wireName: r'notes')
  String? get notes;

  SubscriptionRenew._();

  factory SubscriptionRenew([void updates(SubscriptionRenewBuilder b)]) = _$SubscriptionRenew;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubscriptionRenewBuilder b) => b
      ..durationDays = 30;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubscriptionRenew> get serializer => _$SubscriptionRenewSerializer();
}

class _$SubscriptionRenewSerializer implements PrimitiveSerializer<SubscriptionRenew> {
  @override
  final Iterable<Type> types = const [SubscriptionRenew, _$SubscriptionRenew];

  @override
  final String wireName = r'SubscriptionRenew';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubscriptionRenew object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.durationDays != null) {
      yield r'duration_days';
      yield serializers.serialize(
        object.durationDays,
        specifiedType: const FullType(int),
      );
    }
    if (object.paidPrice != null) {
      yield r'paid_price';
      yield serializers.serialize(
        object.paidPrice,
        specifiedType: const FullType(double),
      );
    }
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SubscriptionRenew object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubscriptionRenewBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'duration_days':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.durationDays = valueDes;
          break;
        case r'paid_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.paidPrice = valueDes;
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.notes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SubscriptionRenew deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubscriptionRenewBuilder();
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

