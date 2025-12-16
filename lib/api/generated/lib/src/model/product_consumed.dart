//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_consumed.g.dart';

/// Serializer per singolo prodotto consumato
///
/// Properties:
/// * [productId] - ID del prodotto
/// * [quantity] - Quantità consumata
/// * [unitCost] - Costo unitario (opzionale, default da prodotto)
/// * [salePricePerUnit] - Prezzo vendita unitario
/// * [discountPercentage] - Sconto percentuale (0-100)
/// * [discountAmount] - Sconto fisso in euro
/// * [cashAmount] - Importo pagato in contanti per questo prodotto
/// * [cardAmount] - Importo pagato con carta per questo prodotto
/// * [soldByOperatorId] - ID operatore che ha effettuato la vendita (default: operatore del booking)
@BuiltValue()
abstract class ProductConsumed implements Built<ProductConsumed, ProductConsumedBuilder> {
  /// ID del prodotto
  @BuiltValueField(wireName: r'product_id')
  int get productId;

  /// Quantità consumata
  @BuiltValueField(wireName: r'quantity')
  double get quantity;

  /// Costo unitario (opzionale, default da prodotto)
  @BuiltValueField(wireName: r'unit_cost')
  double? get unitCost;

  /// Prezzo vendita unitario
  @BuiltValueField(wireName: r'sale_price_per_unit')
  double? get salePricePerUnit;

  /// Sconto percentuale (0-100)
  @BuiltValueField(wireName: r'discount_percentage')
  double? get discountPercentage;

  /// Sconto fisso in euro
  @BuiltValueField(wireName: r'discount_amount')
  double? get discountAmount;

  /// Importo pagato in contanti per questo prodotto
  @BuiltValueField(wireName: r'cash_amount')
  double? get cashAmount;

  /// Importo pagato con carta per questo prodotto
  @BuiltValueField(wireName: r'card_amount')
  double? get cardAmount;

  /// ID operatore che ha effettuato la vendita (default: operatore del booking)
  @BuiltValueField(wireName: r'sold_by_operator_id')
  int? get soldByOperatorId;

  ProductConsumed._();

  factory ProductConsumed([void updates(ProductConsumedBuilder b)]) = _$ProductConsumed;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductConsumedBuilder b) => b
      ..discountPercentage = 0.00
      ..discountAmount = 0.00
      ..cashAmount = 0.00
      ..cardAmount = 0.00;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductConsumed> get serializer => _$ProductConsumedSerializer();
}

class _$ProductConsumedSerializer implements PrimitiveSerializer<ProductConsumed> {
  @override
  final Iterable<Type> types = const [ProductConsumed, _$ProductConsumed];

  @override
  final String wireName = r'ProductConsumed';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductConsumed object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'product_id';
    yield serializers.serialize(
      object.productId,
      specifiedType: const FullType(int),
    );
    yield r'quantity';
    yield serializers.serialize(
      object.quantity,
      specifiedType: const FullType(double),
    );
    if (object.unitCost != null) {
      yield r'unit_cost';
      yield serializers.serialize(
        object.unitCost,
        specifiedType: const FullType(double),
      );
    }
    if (object.salePricePerUnit != null) {
      yield r'sale_price_per_unit';
      yield serializers.serialize(
        object.salePricePerUnit,
        specifiedType: const FullType(double),
      );
    }
    if (object.discountPercentage != null) {
      yield r'discount_percentage';
      yield serializers.serialize(
        object.discountPercentage,
        specifiedType: const FullType(double),
      );
    }
    if (object.discountAmount != null) {
      yield r'discount_amount';
      yield serializers.serialize(
        object.discountAmount,
        specifiedType: const FullType(double),
      );
    }
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
    if (object.soldByOperatorId != null) {
      yield r'sold_by_operator_id';
      yield serializers.serialize(
        object.soldByOperatorId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductConsumed object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductConsumedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'product_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.productId = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.quantity = valueDes;
          break;
        case r'unit_cost':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.unitCost = valueDes;
          break;
        case r'sale_price_per_unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.salePricePerUnit = valueDes;
          break;
        case r'discount_percentage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.discountPercentage = valueDes;
          break;
        case r'discount_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.discountAmount = valueDes;
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
        case r'sold_by_operator_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.soldByOperatorId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductConsumed deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductConsumedBuilder();
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

