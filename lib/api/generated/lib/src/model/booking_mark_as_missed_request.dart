//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/booking_mark_as_missed_request_reason_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'booking_mark_as_missed_request.g.dart';

/// Serializer per richiesta mark_as_missed
///
/// Properties:
/// * [bookingId] - ID del booking da segnare come missed
/// * [reason] 
@BuiltValue()
abstract class BookingMarkAsMissedRequest implements Built<BookingMarkAsMissedRequest, BookingMarkAsMissedRequestBuilder> {
  /// ID del booking da segnare come missed
  @BuiltValueField(wireName: r'booking_id')
  int get bookingId;

  @BuiltValueField(wireName: r'reason')
  BookingMarkAsMissedRequestReasonEnum? get reason;
  // enum reasonEnum {  no_show,  cancelled,  };

  BookingMarkAsMissedRequest._();

  factory BookingMarkAsMissedRequest([void updates(BookingMarkAsMissedRequestBuilder b)]) = _$BookingMarkAsMissedRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookingMarkAsMissedRequestBuilder b) => b
      ..reason = BookingMarkAsMissedRequestReasonEnum.noShow;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookingMarkAsMissedRequest> get serializer => _$BookingMarkAsMissedRequestSerializer();
}

class _$BookingMarkAsMissedRequestSerializer implements PrimitiveSerializer<BookingMarkAsMissedRequest> {
  @override
  final Iterable<Type> types = const [BookingMarkAsMissedRequest, _$BookingMarkAsMissedRequest];

  @override
  final String wireName = r'BookingMarkAsMissedRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookingMarkAsMissedRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'booking_id';
    yield serializers.serialize(
      object.bookingId,
      specifiedType: const FullType(int),
    );
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(BookingMarkAsMissedRequestReasonEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BookingMarkAsMissedRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BookingMarkAsMissedRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'booking_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.bookingId = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BookingMarkAsMissedRequestReasonEnum),
          ) as BookingMarkAsMissedRequestReasonEnum;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BookingMarkAsMissedRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookingMarkAsMissedRequestBuilder();
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

