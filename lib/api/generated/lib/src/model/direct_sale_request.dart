//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/direct_sale_product.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'direct_sale_request.g.dart';

/// DirectSaleRequest
///
/// Properties:
/// * [customerId] - ID customer (opzionale)
/// * [soldByOperatorId] - ID operatore venditore
/// * [cashAmount] 
/// * [cardAmount] 
/// * [products] 
@BuiltValue()
abstract class DirectSaleRequest implements Built<DirectSaleRequest, DirectSaleRequestBuilder> {
  /// ID customer (opzionale)
  @BuiltValueField(wireName: r'customer_id')
  int? get customerId;

  /// ID operatore venditore
  @BuiltValueField(wireName: r'sold_by_operator_id')
  int get soldByOperatorId;

  @BuiltValueField(wireName: r'cash_amount')
  double? get cashAmount;

  @BuiltValueField(wireName: r'card_amount')
  double? get cardAmount;

  @BuiltValueField(wireName: r'products')
  BuiltList<DirectSaleProduct> get products;

  DirectSaleRequest._();

  factory DirectSaleRequest([void updates(DirectSaleRequestBuilder b)]) = _$DirectSaleRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DirectSaleRequestBuilder b) => b
      ..cashAmount = 0.00
      ..cardAmount = 0.00;

  @BuiltValueSerializer(custom: true)
  static Serializer<DirectSaleRequest> get serializer => _$DirectSaleRequestSerializer();
}

class _$DirectSaleRequestSerializer implements PrimitiveSerializer<DirectSaleRequest> {
  @override
  final Iterable<Type> types = const [DirectSaleRequest, _$DirectSaleRequest];

  @override
  final String wireName = r'DirectSaleRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DirectSaleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.customerId != null) {
      yield r'customer_id';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(int),
      );
    }
    yield r'sold_by_operator_id';
    yield serializers.serialize(
      object.soldByOperatorId,
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
    yield r'products';
    yield serializers.serialize(
      object.products,
      specifiedType: const FullType(BuiltList, [FullType(DirectSaleProduct)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DirectSaleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DirectSaleRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'customer_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.customerId = valueDes;
          break;
        case r'sold_by_operator_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.soldByOperatorId = valueDes;
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
        case r'products':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(DirectSaleProduct)]),
          ) as BuiltList<DirectSaleProduct>;
          result.products.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DirectSaleRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DirectSaleRequestBuilder();
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

