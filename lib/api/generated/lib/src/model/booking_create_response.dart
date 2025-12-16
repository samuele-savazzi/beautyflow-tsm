//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'booking_create_response.g.dart';

/// BookingCreateResponse
///
/// Properties:
/// * [success] - Stato della creazione
/// * [bookingId] - ID del booking creato (se success=true)
/// * [slotsCreated] - Numero di slot creati (se success=true)
/// * [totalDuration] - Durata totale in minuti (se success=true)
/// * [error] - Messaggio di errore (se success=false)
@BuiltValue()
abstract class BookingCreateResponse implements Built<BookingCreateResponse, BookingCreateResponseBuilder> {
  /// Stato della creazione
  @BuiltValueField(wireName: r'success')
  bool get success;

  /// ID del booking creato (se success=true)
  @BuiltValueField(wireName: r'booking_id')
  int? get bookingId;

  /// Numero di slot creati (se success=true)
  @BuiltValueField(wireName: r'slots_created')
  int? get slotsCreated;

  /// Durata totale in minuti (se success=true)
  @BuiltValueField(wireName: r'total_duration')
  int? get totalDuration;

  /// Messaggio di errore (se success=false)
  @BuiltValueField(wireName: r'error')
  String? get error;

  BookingCreateResponse._();

  factory BookingCreateResponse([void updates(BookingCreateResponseBuilder b)]) = _$BookingCreateResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookingCreateResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookingCreateResponse> get serializer => _$BookingCreateResponseSerializer();
}

class _$BookingCreateResponseSerializer implements PrimitiveSerializer<BookingCreateResponse> {
  @override
  final Iterable<Type> types = const [BookingCreateResponse, _$BookingCreateResponse];

  @override
  final String wireName = r'BookingCreateResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookingCreateResponse object, {
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
    if (object.slotsCreated != null) {
      yield r'slots_created';
      yield serializers.serialize(
        object.slotsCreated,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalDuration != null) {
      yield r'total_duration';
      yield serializers.serialize(
        object.totalDuration,
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
    BookingCreateResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BookingCreateResponseBuilder result,
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
        case r'slots_created':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.slotsCreated = valueDes;
          break;
        case r'total_duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalDuration = valueDes;
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
  BookingCreateResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookingCreateResponseBuilder();
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

