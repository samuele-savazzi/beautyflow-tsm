//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/product_consumed.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'booking_mark_as_paid_request.g.dart';

/// Serializer per richiesta pagamento booking
///
/// Properties:
/// * [bookingId] - ID del booking da pagare
/// * [cashAmount] - Importo pagato in contanti
/// * [cardAmount] - Importo pagato con carta
/// * [productsConsumed] - Lista prodotti consumati/venduti
@BuiltValue()
abstract class BookingMarkAsPaidRequest implements Built<BookingMarkAsPaidRequest, BookingMarkAsPaidRequestBuilder> {
  /// ID del booking da pagare
  @BuiltValueField(wireName: r'booking_id')
  int get bookingId;

  /// Importo pagato in contanti
  @BuiltValueField(wireName: r'cash_amount')
  double? get cashAmount;

  /// Importo pagato con carta
  @BuiltValueField(wireName: r'card_amount')
  double? get cardAmount;

  /// Lista prodotti consumati/venduti
  @BuiltValueField(wireName: r'products_consumed')
  BuiltList<ProductConsumed>? get productsConsumed;

  BookingMarkAsPaidRequest._();

  factory BookingMarkAsPaidRequest([void updates(BookingMarkAsPaidRequestBuilder b)]) = _$BookingMarkAsPaidRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookingMarkAsPaidRequestBuilder b) => b
      ..cashAmount = 0.00
      ..cardAmount = 0.00;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookingMarkAsPaidRequest> get serializer => _$BookingMarkAsPaidRequestSerializer();
}

class _$BookingMarkAsPaidRequestSerializer implements PrimitiveSerializer<BookingMarkAsPaidRequest> {
  @override
  final Iterable<Type> types = const [BookingMarkAsPaidRequest, _$BookingMarkAsPaidRequest];

  @override
  final String wireName = r'BookingMarkAsPaidRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookingMarkAsPaidRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'booking_id';
    yield serializers.serialize(
      object.bookingId,
      specifiedType: const FullType(int),
    );
    if (object.cashAmount != null) {
      yield r'cash_amount';
      yield serializers.serialize(
        object.cashAmount,
        specifiedType: const FullType(double),
      );
    }
    if (object.cardAmount != null) {
      yield r'card_amount';
      yield serializers.serialize(
        object.cardAmount,
        specifiedType: const FullType(double),
      );
    }
    if (object.productsConsumed != null) {
      yield r'products_consumed';
      yield serializers.serialize(
        object.productsConsumed,
        specifiedType: const FullType(BuiltList, [FullType(ProductConsumed)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BookingMarkAsPaidRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BookingMarkAsPaidRequestBuilder result,
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
        case r'cash_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.cashAmount = valueDes;
          break;
        case r'card_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.cardAmount = valueDes;
          break;
        case r'products_consumed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ProductConsumed)]),
          ) as BuiltList<ProductConsumed>;
          result.productsConsumed.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BookingMarkAsPaidRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookingMarkAsPaidRequestBuilder();
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

