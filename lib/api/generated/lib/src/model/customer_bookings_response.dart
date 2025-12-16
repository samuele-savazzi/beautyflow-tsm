//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/booking_detail.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_bookings_response.g.dart';

/// CustomerBookingsResponse
///
/// Properties:
/// * [success] 
/// * [count] 
/// * [bookings] 
@BuiltValue()
abstract class CustomerBookingsResponse implements Built<CustomerBookingsResponse, CustomerBookingsResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'count')
  int get count;

  @BuiltValueField(wireName: r'bookings')
  BuiltList<BookingDetail> get bookings;

  CustomerBookingsResponse._();

  factory CustomerBookingsResponse([void updates(CustomerBookingsResponseBuilder b)]) = _$CustomerBookingsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerBookingsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerBookingsResponse> get serializer => _$CustomerBookingsResponseSerializer();
}

class _$CustomerBookingsResponseSerializer implements PrimitiveSerializer<CustomerBookingsResponse> {
  @override
  final Iterable<Type> types = const [CustomerBookingsResponse, _$CustomerBookingsResponse];

  @override
  final String wireName = r'CustomerBookingsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerBookingsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
    yield r'bookings';
    yield serializers.serialize(
      object.bookings,
      specifiedType: const FullType(BuiltList, [FullType(BookingDetail)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerBookingsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerBookingsResponseBuilder result,
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
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        case r'bookings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BookingDetail)]),
          ) as BuiltList<BookingDetail>;
          result.bookings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerBookingsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerBookingsResponseBuilder();
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

