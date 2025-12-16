//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'booking_delete_response.g.dart';

/// BookingDeleteResponse
///
/// Properties:
/// * [success] - Stato della cancellazione
/// * [bookingId] - ID del booking cancellato (se success=true)
/// * [slotsDeleted] - Numero di slot eliminati (se success=true)
/// * [error] - Messaggio di errore (se success=false)
@BuiltValue()
abstract class BookingDeleteResponse implements Built<BookingDeleteResponse, BookingDeleteResponseBuilder> {
  /// Stato della cancellazione
  @BuiltValueField(wireName: r'success')
  bool get success;

  /// ID del booking cancellato (se success=true)
  @BuiltValueField(wireName: r'booking_id')
  int? get bookingId;

  /// Numero di slot eliminati (se success=true)
  @BuiltValueField(wireName: r'slots_deleted')
  int? get slotsDeleted;

  /// Messaggio di errore (se success=false)
  @BuiltValueField(wireName: r'error')
  String? get error;

  BookingDeleteResponse._();

  factory BookingDeleteResponse([void updates(BookingDeleteResponseBuilder b)]) = _$BookingDeleteResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookingDeleteResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookingDeleteResponse> get serializer => _$BookingDeleteResponseSerializer();
}

class _$BookingDeleteResponseSerializer implements PrimitiveSerializer<BookingDeleteResponse> {
  @override
  final Iterable<Type> types = const [BookingDeleteResponse, _$BookingDeleteResponse];

  @override
  final String wireName = r'BookingDeleteResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookingDeleteResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    if (object.bookingId != null) {
      yield r'booking_id';
      yield serializers.serialize(
        object.bookingId,
        specifiedType: const FullType(int),
      );
    }
    if (object.slotsDeleted != null) {
      yield r'slots_deleted';
      yield serializers.serialize(
        object.slotsDeleted,
        specifiedType: const FullType(int),
      );
    }
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
    BookingDeleteResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BookingDeleteResponseBuilder result,
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
  BookingDeleteResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookingDeleteResponseBuilder();
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

