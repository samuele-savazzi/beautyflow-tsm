//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/premium_type_nested.dart';
import 'package:beautyflow_api/src/model/customer_basic.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'premium_subscription.g.dart';

/// Serializer per le subscription premium dei clienti
///
/// Properties:
/// * [id] 
/// * [customer] 
/// * [customerId] 
/// * [premiumType] 
/// * [premiumTypeId] 
/// * [startDate] 
/// * [endDate] 
/// * [paidPrice] 
/// * [active] 
/// * [daysRemaining] - Giorni rimanenti della subscription
/// * [createdAt] 
/// * [notes] - Note sulla creazione della subscription (salvate nello storico)
@BuiltValue()
abstract class PremiumSubscription implements Built<PremiumSubscription, PremiumSubscriptionBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'customer')
  CustomerBasic get customer;

  @BuiltValueField(wireName: r'customer_id')
  int get customerId;

  @BuiltValueField(wireName: r'premium_type')
  PremiumTypeNested get premiumType;

  @BuiltValueField(wireName: r'premium_type_id')
  int get premiumTypeId;

  @BuiltValueField(wireName: r'start_date')
  String get startDate;

  @BuiltValueField(wireName: r'end_date')
  String get endDate;

  @BuiltValueField(wireName: r'paid_price')
  double get paidPrice;

  @BuiltValueField(wireName: r'active')
  bool? get active;

  /// Giorni rimanenti della subscription
  @BuiltValueField(wireName: r'days_remaining')
  int get daysRemaining;

  @BuiltValueField(wireName: r'created_at')
  String get createdAt;

  /// Note sulla creazione della subscription (salvate nello storico)
  @BuiltValueField(wireName: r'notes')
  String? get notes;

  PremiumSubscription._();

  factory PremiumSubscription([void updates(PremiumSubscriptionBuilder b)]) = _$PremiumSubscription;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PremiumSubscriptionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PremiumSubscription> get serializer => _$PremiumSubscriptionSerializer();
}

class _$PremiumSubscriptionSerializer implements PrimitiveSerializer<PremiumSubscription> {
  @override
  final Iterable<Type> types = const [PremiumSubscription, _$PremiumSubscription];

  @override
  final String wireName = r'PremiumSubscription';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PremiumSubscription object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'customer';
    yield serializers.serialize(
      object.customer,
      specifiedType: const FullType(CustomerBasic),
    );
    yield r'customer_id';
    yield serializers.serialize(
      object.customerId,
      specifiedType: const FullType(int),
    );
    yield r'premium_type';
    yield serializers.serialize(
      object.premiumType,
      specifiedType: const FullType(PremiumTypeNested),
    );
    yield r'premium_type_id';
    yield serializers.serialize(
      object.premiumTypeId,
      specifiedType: const FullType(int),
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
    yield r'paid_price';
    yield serializers.serialize(
      object.paidPrice,
      specifiedType: const FullType(double),
    );
    if (object.active != null) {
      yield r'active';
      yield serializers.serialize(
        object.active,
        specifiedType: const FullType(bool),
      );
    }
    yield r'days_remaining';
    yield serializers.serialize(
      object.daysRemaining,
      specifiedType: const FullType(int),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(String),
    );
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
    PremiumSubscription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PremiumSubscriptionBuilder result,
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
        case r'customer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CustomerBasic),
          ) as CustomerBasic;
          result.customer.replace(valueDes);
          break;
        case r'customer_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.customerId = valueDes;
          break;
        case r'premium_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PremiumTypeNested),
          ) as PremiumTypeNested;
          result.premiumType.replace(valueDes);
          break;
        case r'premium_type_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.premiumTypeId = valueDes;
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
        case r'paid_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.paidPrice = valueDes;
          break;
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.active = valueDes;
          break;
        case r'days_remaining':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.daysRemaining = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
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
  PremiumSubscription deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PremiumSubscriptionBuilder();
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

