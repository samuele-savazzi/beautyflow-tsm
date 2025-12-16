//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/booking_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'booking_list_response.g.dart';

/// BookingListResponse
///
/// Properties:
/// * [success] - Stato della richiesta
/// * [count] - Numero totale di prenotazioni
/// * [bookings] - Lista delle prenotazioni
@BuiltValue()
abstract class BookingListResponse implements Built<BookingListResponse, BookingListResponseBuilder> {
  /// Stato della richiesta
  @BuiltValueField(wireName: r'success')
  bool get success;

  /// Numero totale di prenotazioni
  @BuiltValueField(wireName: r'count')
  int get count;

  /// Lista delle prenotazioni
  @BuiltValueField(wireName: r'bookings')
  BuiltList<BookingItem> get bookings;

  BookingListResponse._();

  factory BookingListResponse([void updates(BookingListResponseBuilder b)]) = _$BookingListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookingListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookingListResponse> get serializer => _$BookingListResponseSerializer();
}

class _$BookingListResponseSerializer implements PrimitiveSerializer<BookingListResponse> {
  @override
  final Iterable<Type> types = const [BookingListResponse, _$BookingListResponse];

  @override
  final String wireName = r'BookingListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookingListResponse object, {
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
      specifiedType: const FullType(BuiltList, [FullType(BookingItem)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BookingListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BookingListResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(BookingItem)]),
          ) as BuiltList<BookingItem>;
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
  BookingListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookingListResponseBuilder();
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

