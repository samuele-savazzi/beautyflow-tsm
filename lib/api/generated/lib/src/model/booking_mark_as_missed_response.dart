//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'booking_mark_as_missed_response.g.dart';

/// Serializer per risposta mark_as_missed
///
/// Properties:
/// * [success] 
/// * [bookingId] 
/// * [status] 
/// * [minutesFreed] 
/// * [slotsDeleted] 
/// * [error] 
@BuiltValue()
abstract class BookingMarkAsMissedResponse implements Built<BookingMarkAsMissedResponse, BookingMarkAsMissedResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'booking_id')
  int get bookingId;

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'minutes_freed')
  int get minutesFreed;

  @BuiltValueField(wireName: r'slots_deleted')
  int get slotsDeleted;

  @BuiltValueField(wireName: r'error')
  String? get error;

  BookingMarkAsMissedResponse._();

  factory BookingMarkAsMissedResponse([void updates(BookingMarkAsMissedResponseBuilder b)]) = _$BookingMarkAsMissedResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookingMarkAsMissedResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookingMarkAsMissedResponse> get serializer => _$BookingMarkAsMissedResponseSerializer();
}

class _$BookingMarkAsMissedResponseSerializer implements PrimitiveSerializer<BookingMarkAsMissedResponse> {
  @override
  final Iterable<Type> types = const [BookingMarkAsMissedResponse, _$BookingMarkAsMissedResponse];

  @override
  final String wireName = r'BookingMarkAsMissedResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookingMarkAsMissedResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'booking_id';
    yield serializers.serialize(
      object.bookingId,
      specifiedType: const FullType(int),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'minutes_freed';
    yield serializers.serialize(
      object.minutesFreed,
      specifiedType: const FullType(int),
    );
    yield r'slots_deleted';
    yield serializers.serialize(
      object.slotsDeleted,
      specifiedType: const FullType(int),
    );
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BookingMarkAsMissedResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BookingMarkAsMissedResponseBuilder result,
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
        case r'booking_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.bookingId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'minutes_freed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.minutesFreed = valueDes;
          break;
        case r'slots_deleted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.slotsDeleted = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BookingMarkAsMissedResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookingMarkAsMissedResponseBuilder();
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

