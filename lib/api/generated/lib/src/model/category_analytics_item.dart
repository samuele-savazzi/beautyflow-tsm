//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_analytics_item.g.dart';

/// CategoryAnalyticsItem
///
/// Properties:
/// * [categoryId] 
/// * [categoryName] 
/// * [totalProducts] 
/// * [totalStockValue] 
/// * [lowStockProducts] 
/// * [reorderNeededProducts] 
@BuiltValue()
abstract class CategoryAnalyticsItem implements Built<CategoryAnalyticsItem, CategoryAnalyticsItemBuilder> {
  @BuiltValueField(wireName: r'category_id')
  int get categoryId;

  @BuiltValueField(wireName: r'category_name')
  String get categoryName;

  @BuiltValueField(wireName: r'total_products')
  int get totalProducts;

  @BuiltValueField(wireName: r'total_stock_value')
  double get totalStockValue;

  @BuiltValueField(wireName: r'low_stock_products')
  int get lowStockProducts;

  @BuiltValueField(wireName: r'reorder_needed_products')
  int get reorderNeededProducts;

  CategoryAnalyticsItem._();

  factory CategoryAnalyticsItem([void updates(CategoryAnalyticsItemBuilder b)]) = _$CategoryAnalyticsItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CategoryAnalyticsItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CategoryAnalyticsItem> get serializer => _$CategoryAnalyticsItemSerializer();
}

class _$CategoryAnalyticsItemSerializer implements PrimitiveSerializer<CategoryAnalyticsItem> {
  @override
  final Iterable<Type> types = const [CategoryAnalyticsItem, _$CategoryAnalyticsItem];

  @override
  final String wireName = r'CategoryAnalyticsItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CategoryAnalyticsItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'category_id';
    yield serializers.serialize(
      object.categoryId,
      specifiedType: const FullType(int),
    );
    yield r'category_name';
    yield serializers.serialize(
      object.categoryName,
      specifiedType: const FullType(String),
    );
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
    yield r'low_stock_products';
    yield serializers.serialize(
      object.lowStockProducts,
      specifiedType: const FullType(int),
    );
    yield r'reorder_needed_products';
    yield serializers.serialize(
      object.reorderNeededProducts,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CategoryAnalyticsItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CategoryAnalyticsItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'category_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.categoryId = valueDes;
          break;
        case r'category_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.categoryName = valueDes;
          break;
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
        case r'low_stock_products':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lowStockProducts = valueDes;
          break;
        case r'reorder_needed_products':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.reorderNeededProducts = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CategoryAnalyticsItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CategoryAnalyticsItemBuilder();
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

