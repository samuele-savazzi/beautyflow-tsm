//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:beautyflow_api/src/model/today_booking_detail.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'today_bookings_response.g.dart';

/// Response serializer for today's bookings
///
/// Properties:
/// * [success] 
/// * [date] 
/// * [totalBookings] 
/// * [bookings] 
@BuiltValue()
abstract class TodayBookingsResponse implements Built<TodayBookingsResponse, TodayBookingsResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'date')
  Date get date;

  @BuiltValueField(wireName: r'total_bookings')
  int get totalBookings;

  @BuiltValueField(wireName: r'bookings')
  BuiltList<TodayBookingDetail> get bookings;

  TodayBookingsResponse._();

  factory TodayBookingsResponse([void updates(TodayBookingsResponseBuilder b)]) = _$TodayBookingsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TodayBookingsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TodayBookingsResponse> get serializer => _$TodayBookingsResponseSerializer();
}

class _$TodayBookingsResponseSerializer implements PrimitiveSerializer<TodayBookingsResponse> {
  @override
  final Iterable<Type> types = const [TodayBookingsResponse, _$TodayBookingsResponse];

  @override
  final String wireName = r'TodayBookingsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TodayBookingsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(Date),
    );
    yield r'total_bookings';
    yield serializers.serialize(
      object.totalBookings,
      specifiedType: const FullType(int),
    );
    yield r'bookings';
    yield serializers.serialize(
      object.bookings,
      specifiedType: const FullType(BuiltList, [FullType(TodayBookingDetail)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TodayBookingsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TodayBookingsResponseBuilder result,
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
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        case r'total_bookings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalBookings = valueDes;
          break;
        case r'bookings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TodayBookingDetail)]),
          ) as BuiltList<TodayBookingDetail>;
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
  TodayBookingsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TodayBookingsResponseBuilder();
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

