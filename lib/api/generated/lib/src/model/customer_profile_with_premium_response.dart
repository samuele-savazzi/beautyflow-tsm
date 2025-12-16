//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/premium_subscription_detail.dart';
import 'package:beautyflow_api/src/model/customer_profile.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_profile_with_premium_response.g.dart';

/// CustomerProfileWithPremiumResponse
///
/// Properties:
/// * [success] 
/// * [customer] 
/// * [premiumSubscription] 
@BuiltValue()
abstract class CustomerProfileWithPremiumResponse implements Built<CustomerProfileWithPremiumResponse, CustomerProfileWithPremiumResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'customer')
  CustomerProfile get customer;

  @BuiltValueField(wireName: r'premium_subscription')
  PremiumSubscriptionDetail get premiumSubscription;

  CustomerProfileWithPremiumResponse._();

  factory CustomerProfileWithPremiumResponse([void updates(CustomerProfileWithPremiumResponseBuilder b)]) = _$CustomerProfileWithPremiumResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerProfileWithPremiumResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerProfileWithPremiumResponse> get serializer => _$CustomerProfileWithPremiumResponseSerializer();
}

class _$CustomerProfileWithPremiumResponseSerializer implements PrimitiveSerializer<CustomerProfileWithPremiumResponse> {
  @override
  final Iterable<Type> types = const [CustomerProfileWithPremiumResponse, _$CustomerProfileWithPremiumResponse];

  @override
  final String wireName = r'CustomerProfileWithPremiumResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerProfileWithPremiumResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'customer';
    yield serializers.serialize(
      object.customer,
      specifiedType: const FullType(CustomerProfile),
    );
    yield r'premium_subscription';
    yield serializers.serialize(
      object.premiumSubscription,
      specifiedType: const FullType(PremiumSubscriptionDetail),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerProfileWithPremiumResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerProfileWithPremiumResponseBuilder result,
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
        case r'customer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CustomerProfile),
          ) as CustomerProfile;
          result.customer.replace(valueDes);
          break;
        case r'premium_subscription':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PremiumSubscriptionDetail),
          ) as PremiumSubscriptionDetail;
          result.premiumSubscription.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerProfileWithPremiumResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerProfileWithPremiumResponseBuilder();
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

