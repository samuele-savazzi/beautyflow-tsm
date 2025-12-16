//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/premium_type_detail.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'premium_subscription_detail.g.dart';

/// PremiumSubscriptionDetail
///
/// Properties:
/// * [id] 
/// * [active] 
/// * [startDate] 
/// * [endDate] 
/// * [daysRemaining] 
/// * [paidPrice] 
/// * [premiumType] 
@BuiltValue()
abstract class PremiumSubscriptionDetail implements Built<PremiumSubscriptionDetail, PremiumSubscriptionDetailBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'active')
  bool get active;

  @BuiltValueField(wireName: r'start_date')
  String get startDate;

  @BuiltValueField(wireName: r'end_date')
  String get endDate;

  @BuiltValueField(wireName: r'days_remaining')
  int get daysRemaining;

  @BuiltValueField(wireName: r'paid_price')
  double get paidPrice;

  @BuiltValueField(wireName: r'premium_type')
  PremiumTypeDetail get premiumType;

  PremiumSubscriptionDetail._();

  factory PremiumSubscriptionDetail([void updates(PremiumSubscriptionDetailBuilder b)]) = _$PremiumSubscriptionDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PremiumSubscriptionDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PremiumSubscriptionDetail> get serializer => _$PremiumSubscriptionDetailSerializer();
}

class _$PremiumSubscriptionDetailSerializer implements PrimitiveSerializer<PremiumSubscriptionDetail> {
  @override
  final Iterable<Type> types = const [PremiumSubscriptionDetail, _$PremiumSubscriptionDetail];

  @override
  final String wireName = r'PremiumSubscriptionDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PremiumSubscriptionDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'active';
    yield serializers.serialize(
      object.active,
      specifiedType: const FullType(bool),
    );
    yield r'start_date';
    yield serializers.serialize(
      object.startDate,
      specifiedType: const FullType(String),
    );
    yield r'end_date';
    yield serializers.serialize(
      object.endDate,
      specifiedType: const FullType(String),
    );
    yield r'days_remaining';
    yield serializers.serialize(
      object.daysRemaining,
      specifiedType: const FullType(int),
    );
    yield r'paid_price';
    yield serializers.serialize(
      object.paidPrice,
      specifiedType: const FullType(double),
    );
    yield r'premium_type';
    yield serializers.serialize(
      object.premiumType,
      specifiedType: const FullType(PremiumTypeDetail),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PremiumSubscriptionDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PremiumSubscriptionDetailBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.active = valueDes;
          break;
        case r'start_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.startDate = valueDes;
          break;
        case r'end_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.endDate = valueDes;
          break;
        case r'days_remaining':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.daysRemaining = valueDes;
          break;
        case r'paid_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.paidPrice = valueDes;
          break;
        case r'premium_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PremiumTypeDetail),
          ) as PremiumTypeDetail;
          result.premiumType.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PremiumSubscriptionDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PremiumSubscriptionDetailBuilder();
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

