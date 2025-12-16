//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'booking_frequency.g.dart';

/// BookingFrequency
///
/// Properties:
/// * [totalBookings] 
/// * [bookingsLastYear] 
/// * [bookingsLastMonth] 
/// * [frequency3Months] 
/// * [frequency6Months] 
/// * [lastBookingDate] 
/// * [firstBookingDate] 
@BuiltValue()
abstract class BookingFrequency implements Built<BookingFrequency, BookingFrequencyBuilder> {
  @BuiltValueField(wireName: r'total_bookings')
  int get totalBookings;

  @BuiltValueField(wireName: r'bookings_last_year')
  int get bookingsLastYear;

  @BuiltValueField(wireName: r'bookings_last_month')
  int get bookingsLastMonth;

  @BuiltValueField(wireName: r'frequency_3_months')
  String get frequency3Months;

  @BuiltValueField(wireName: r'frequency_6_months')
  String get frequency6Months;

  @BuiltValueField(wireName: r'last_booking_date')
  String? get lastBookingDate;

  @BuiltValueField(wireName: r'first_booking_date')
  String? get firstBookingDate;

  BookingFrequency._();

  factory BookingFrequency([void updates(BookingFrequencyBuilder b)]) = _$BookingFrequency;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookingFrequencyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookingFrequency> get serializer => _$BookingFrequencySerializer();
}

class _$BookingFrequencySerializer implements PrimitiveSerializer<BookingFrequency> {
  @override
  final Iterable<Type> types = const [BookingFrequency, _$BookingFrequency];

  @override
  final String wireName = r'BookingFrequency';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookingFrequency object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'total_bookings';
    yield serializers.serialize(
      object.totalBookings,
      specifiedType: const FullType(int),
    );
    yield r'bookings_last_year';
    yield serializers.serialize(
      object.bookingsLastYear,
      specifiedType: const FullType(int),
    );
    yield r'bookings_last_month';
    yield serializers.serialize(
      object.bookingsLastMonth,
      specifiedType: const FullType(int),
    );
    yield r'frequency_3_months';
    yield serializers.serialize(
      object.frequency3Months,
      specifiedType: const FullType(String),
    );
    yield r'frequency_6_months';
    yield serializers.serialize(
      object.frequency6Months,
      specifiedType: const FullType(String),
    );
    yield r'last_booking_date';
    yield object.lastBookingDate == null ? null : serializers.serialize(
      object.lastBookingDate,
      specifiedType: const FullType.nullable(String),
    );
    yield r'first_booking_date';
    yield object.firstBookingDate == null ? null : serializers.serialize(
      object.firstBookingDate,
      specifiedType: const FullType.nullable(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BookingFrequency object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BookingFrequencyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total_bookings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalBookings = valueDes;
          break;
        case r'bookings_last_year':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.bookingsLastYear = valueDes;
          break;
        case r'bookings_last_month':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.bookingsLastMonth = valueDes;
          break;
        case r'frequency_3_months':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.frequency3Months = valueDes;
          break;
        case r'frequency_6_months':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.frequency6Months = valueDes;
          break;
        case r'last_booking_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastBookingDate = valueDes;
          break;
        case r'first_booking_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.firstBookingDate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BookingFrequency deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookingFrequencyBuilder();
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

