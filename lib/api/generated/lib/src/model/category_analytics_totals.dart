//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_analytics_totals.g.dart';

/// CategoryAnalyticsTotals
///
/// Properties:
/// * [totalProducts] 
/// * [totalStockValue] 
/// * [totalLowStock] 
/// * [totalReorderNeeded] 
@BuiltValue()
abstract class CategoryAnalyticsTotals implements Built<CategoryAnalyticsTotals, CategoryAnalyticsTotalsBuilder> {
  @BuiltValueField(wireName: r'total_products')
  int get totalProducts;

  @BuiltValueField(wireName: r'total_stock_value')
  double get totalStockValue;

  @BuiltValueField(wireName: r'total_low_stock')
  int get totalLowStock;

  @BuiltValueField(wireName: r'total_reorder_needed')
  int get totalReorderNeeded;

  CategoryAnalyticsTotals._();

  factory CategoryAnalyticsTotals([void updates(CategoryAnalyticsTotalsBuilder b)]) = _$CategoryAnalyticsTotals;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CategoryAnalyticsTotalsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CategoryAnalyticsTotals> get serializer => _$CategoryAnalyticsTotalsSerializer();
}

class _$CategoryAnalyticsTotalsSerializer implements PrimitiveSerializer<CategoryAnalyticsTotals> {
  @override
  final Iterable<Type> types = const [CategoryAnalyticsTotals, _$CategoryAnalyticsTotals];

  @override
  final String wireName = r'CategoryAnalyticsTotals';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CategoryAnalyticsTotals object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'total_products';
    yield serializers.serialize(
      object.totalProducts,
      specifiedType: const FullType(int),
    );
    yield r'total_stock_value';
    yield serializers.serialize(
      object.totalStockValue,
      specifiedType: const FullType(double),
    );
    yield r'total_low_stock';
    yield serializers.serialize(
      object.totalLowStock,
      specifiedType: const FullType(int),
    );
    yield r'total_reorder_needed';
    yield serializers.serialize(
      object.totalReorderNeeded,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CategoryAnalyticsTotals object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CategoryAnalyticsTotalsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total_products':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalProducts = valueDes;
          break;
        case r'total_stock_value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalStockValue = valueDes;
          break;
        case r'total_low_stock':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalLowStock = valueDes;
          break;
        case r'total_reorder_needed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalReorderNeeded = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CategoryAnalyticsTotals deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CategoryAnalyticsTotalsBuilder();
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

