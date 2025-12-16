//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'booking_mark_as_paid_response.g.dart';

/// Serializer per risposta pagamento booking
///
/// Properties:
/// * [success] 
/// * [bookingId] 
/// * [paymentMethod] 
/// * [totalPaid] 
/// * [movementsCreated] 
/// * [errors] 
/// * [warnings] 
@BuiltValue()
abstract class BookingMarkAsPaidResponse implements Built<BookingMarkAsPaidResponse, BookingMarkAsPaidResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'booking_id')
  int get bookingId;

  @BuiltValueField(wireName: r'payment_method')
  String get paymentMethod;

  @BuiltValueField(wireName: r'total_paid')
  double get totalPaid;

  @BuiltValueField(wireName: r'movements_created')
  int get movementsCreated;

  @BuiltValueField(wireName: r'errors')
  BuiltList<String>? get errors;

  @BuiltValueField(wireName: r'warnings')
  BuiltList<String>? get warnings;

  BookingMarkAsPaidResponse._();

  factory BookingMarkAsPaidResponse([void updates(BookingMarkAsPaidResponseBuilder b)]) = _$BookingMarkAsPaidResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookingMarkAsPaidResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookingMarkAsPaidResponse> get serializer => _$BookingMarkAsPaidResponseSerializer();
}

class _$BookingMarkAsPaidResponseSerializer implements PrimitiveSerializer<BookingMarkAsPaidResponse> {
  @override
  final Iterable<Type> types = const [BookingMarkAsPaidResponse, _$BookingMarkAsPaidResponse];

  @override
  final String wireName = r'BookingMarkAsPaidResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookingMarkAsPaidResponse object, {
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
    yield r'payment_method';
    yield serializers.serialize(
      object.paymentMethod,
      specifiedType: const FullType(String),
    );
    yield r'total_paid';
    yield serializers.serialize(
      object.totalPaid,
      specifiedType: const FullType(double),
    );
    yield r'movements_created';
    yield serializers.serialize(
      object.movementsCreated,
      specifiedType: const FullType(int),
    );
    if (object.errors != null) {
      yield r'errors';
      yield serializers.serialize(
        object.errors,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BookingMarkAsPaidResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BookingMarkAsPaidResponseBuilder result,
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
        case r'payment_method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.paymentMethod = valueDes;
          break;
        case r'total_paid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalPaid = valueDes;
          break;
        case r'movements_created':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.movementsCreated = valueDes;
          break;
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.errors.replace(valueDes);
          break;
        case r'warnings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.warnings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BookingMarkAsPaidResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookingMarkAsPaidResponseBuilder();
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

