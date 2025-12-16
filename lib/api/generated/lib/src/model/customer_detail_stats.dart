//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/premium_status.dart';
import 'package:beautyflow_api/src/model/booking_frequency.dart';
import 'package:beautyflow_api/src/model/customer_full_detail.dart';
import 'package:beautyflow_api/src/model/top_service.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_detail_stats.g.dart';

/// CustomerDetailStats
///
/// Properties:
/// * [success] 
/// * [customer] 
/// * [bookingFrequency] 
/// * [topServices] 
/// * [premiumStatus] 
@BuiltValue()
abstract class CustomerDetailStats implements Built<CustomerDetailStats, CustomerDetailStatsBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'customer')
  CustomerFullDetail get customer;

  @BuiltValueField(wireName: r'booking_frequency')
  BookingFrequency get bookingFrequency;

  @BuiltValueField(wireName: r'top_services')
  BuiltList<TopService> get topServices;

  @BuiltValueField(wireName: r'premium_status')
  PremiumStatus get premiumStatus;

  CustomerDetailStats._();

  factory CustomerDetailStats([void updates(CustomerDetailStatsBuilder b)]) = _$CustomerDetailStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerDetailStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerDetailStats> get serializer => _$CustomerDetailStatsSerializer();
}

class _$CustomerDetailStatsSerializer implements PrimitiveSerializer<CustomerDetailStats> {
  @override
  final Iterable<Type> types = const [CustomerDetailStats, _$CustomerDetailStats];

  @override
  final String wireName = r'CustomerDetailStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerDetailStats object, {
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
      specifiedType: const FullType(CustomerFullDetail),
    );
    yield r'booking_frequency';
    yield serializers.serialize(
      object.bookingFrequency,
      specifiedType: const FullType(BookingFrequency),
    );
    yield r'top_services';
    yield serializers.serialize(
      object.topServices,
      specifiedType: const FullType(BuiltList, [FullType(TopService)]),
    );
    yield r'premium_status';
    yield serializers.serialize(
      object.premiumStatus,
      specifiedType: const FullType(PremiumStatus),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerDetailStats object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerDetailStatsBuilder result,
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
            specifiedType: const FullType(CustomerFullDetail),
          ) as CustomerFullDetail;
          result.customer.replace(valueDes);
          break;
        case r'booking_frequency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BookingFrequency),
          ) as BookingFrequency;
          result.bookingFrequency.replace(valueDes);
          break;
        case r'top_services':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TopService)]),
          ) as BuiltList<TopService>;
          result.topServices.replace(valueDes);
          break;
        case r'premium_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PremiumStatus),
          ) as PremiumStatus;
          result.premiumStatus.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerDetailStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerDetailStatsBuilder();
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

