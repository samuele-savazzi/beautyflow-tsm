//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/product_info.dart';
import 'package:beautyflow_api/src/model/operator_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'purchase_item.g.dart';

/// PurchaseItem
///
/// Properties:
/// * [movementId] 
/// * [date] 
/// * [product] 
/// * [quantity] 
/// * [unitOfMeasure] 
/// * [salePricePerUnit] 
/// * [subtotal] 
/// * [discount] 
/// * [total] 
/// * [soldBy] 
/// * [bookingId] 
/// * [bookingName] 
/// * [isBookingPurchase] 
@BuiltValue()
abstract class PurchaseItem implements Built<PurchaseItem, PurchaseItemBuilder> {
  @BuiltValueField(wireName: r'movement_id')
  int get movementId;

  @BuiltValueField(wireName: r'date')
  DateTime get date;

  @BuiltValueField(wireName: r'product')
  ProductInfo get product;

  @BuiltValueField(wireName: r'quantity')
  double get quantity;

  @BuiltValueField(wireName: r'unit_of_measure')
  String get unitOfMeasure;

  @BuiltValueField(wireName: r'sale_price_per_unit')
  double get salePricePerUnit;

  @BuiltValueField(wireName: r'subtotal')
  double get subtotal;

  @BuiltValueField(wireName: r'discount')
  double get discount;

  @BuiltValueField(wireName: r'total')
  double get total;

  @BuiltValueField(wireName: r'sold_by')
  OperatorInfo get soldBy;

  @BuiltValueField(wireName: r'booking_id')
  int? get bookingId;

  @BuiltValueField(wireName: r'booking_name')
  String? get bookingName;

  @BuiltValueField(wireName: r'is_booking_purchase')
  bool get isBookingPurchase;

  PurchaseItem._();

  factory PurchaseItem([void updates(PurchaseItemBuilder b)]) = _$PurchaseItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PurchaseItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PurchaseItem> get serializer => _$PurchaseItemSerializer();
}

class _$PurchaseItemSerializer implements PrimitiveSerializer<PurchaseItem> {
  @override
  final Iterable<Type> types = const [PurchaseItem, _$PurchaseItem];

  @override
  final String wireName = r'PurchaseItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PurchaseItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'movement_id';
    yield serializers.serialize(
      object.movementId,
      specifiedType: const FullType(int),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(DateTime),
    );
    yield r'product';
    yield serializers.serialize(
      object.product,
      specifiedType: const FullType(ProductInfo),
    );
    yield r'quantity';
    yield serializers.serialize(
      object.quantity,
      specifiedType: const FullType(double),
    );
    yield r'unit_of_measure';
    yield serializers.serialize(
      object.unitOfMeasure,
      specifiedType: const FullType(String),
    );
    yield r'sale_price_per_unit';
    yield serializers.serialize(
      object.salePricePerUnit,
      specifiedType: const FullType(double),
    );
    yield r'subtotal';
    yield serializers.serialize(
      object.subtotal,
      specifiedType: const FullType(double),
    );
    yield r'discount';
    yield serializers.serialize(
      object.discount,
      specifiedType: const FullType(double),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(double),
    );
    yield r'sold_by';
    yield serializers.serialize(
      object.soldBy,
      specifiedType: const FullType(OperatorInfo),
    );
    yield r'booking_id';
    yield object.bookingId == null ? null : serializers.serialize(
      object.bookingId,
      specifiedType: const FullType.nullable(int),
    );
    yield r'booking_name';
    yield object.bookingName == null ? null : serializers.serialize(
      object.bookingName,
      specifiedType: const FullType.nullable(String),
    );
    yield r'is_booking_purchase';
    yield serializers.serialize(
      object.isBookingPurchase,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PurchaseItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PurchaseItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'movement_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.movementId = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.date = valueDes;
          break;
        case r'product':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProductInfo),
          ) as ProductInfo;
          result.product.replace(valueDes);
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.quantity = valueDes;
          break;
        case r'unit_of_measure':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.unitOfMeasure = valueDes;
          break;
        case r'sale_price_per_unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.salePricePerUnit = valueDes;
          break;
        case r'subtotal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.subtotal = valueDes;
          break;
        case r'discount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.discount = valueDes;
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.total = valueDes;
          break;
        case r'sold_by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OperatorInfo),
          ) as OperatorInfo;
          result.soldBy.replace(valueDes);
          break;
        case r'booking_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.bookingId = valueDes;
          break;
        case r'booking_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bookingName = valueDes;
          break;
        case r'is_booking_purchase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isBookingPurchase = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PurchaseItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PurchaseItemBuilder();
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

