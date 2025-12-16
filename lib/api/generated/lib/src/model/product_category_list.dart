//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_category_list.g.dart';

/// ProductCategoryList
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [description] 
/// * [warehouseType] 
/// * [warehouseTypeDisplay] 
/// * [colorHex] 
/// * [icon] 
/// * [isActive] 
/// * [productsCount] 
/// * [areaName] 
@BuiltValue()
abstract class ProductCategoryList implements Built<ProductCategoryList, ProductCategoryListBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'warehouse_type')
  String get warehouseType;

  @BuiltValueField(wireName: r'warehouse_type_display')
  String get warehouseTypeDisplay;

  @BuiltValueField(wireName: r'color_hex')
  String get colorHex;

  @BuiltValueField(wireName: r'icon')
  String get icon;

  @BuiltValueField(wireName: r'is_active')
  bool get isActive;

  @BuiltValueField(wireName: r'products_count')
  int get productsCount;

  @BuiltValueField(wireName: r'area_name')
  String get areaName;

  ProductCategoryList._();

  factory ProductCategoryList([void updates(ProductCategoryListBuilder b)]) = _$ProductCategoryList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductCategoryListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductCategoryList> get serializer => _$ProductCategoryListSerializer();
}

class _$ProductCategoryListSerializer implements PrimitiveSerializer<ProductCategoryList> {
  @override
  final Iterable<Type> types = const [ProductCategoryList, _$ProductCategoryList];

  @override
  final String wireName = r'ProductCategoryList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductCategoryList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'description';
    yield object.description == null ? null : serializers.serialize(
      object.description,
      specifiedType: const FullType.nullable(String),
    );
    yield r'warehouse_type';
    yield serializers.serialize(
      object.warehouseType,
      specifiedType: const FullType(String),
    );
    yield r'warehouse_type_display';
    yield serializers.serialize(
      object.warehouseTypeDisplay,
      specifiedType: const FullType(String),
    );
    yield r'color_hex';
    yield serializers.serialize(
      object.colorHex,
      specifiedType: const FullType(String),
    );
    yield r'icon';
    yield serializers.serialize(
      object.icon,
      specifiedType: const FullType(String),
    );
    yield r'is_active';
    yield serializers.serialize(
      object.isActive,
      specifiedType: const FullType(bool),
    );
    yield r'products_count';
    yield serializers.serialize(
      object.productsCount,
      specifiedType: const FullType(int),
    );
    yield r'area_name';
    yield serializers.serialize(
      object.areaName,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductCategoryList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductCategoryListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'warehouse_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.warehouseType = valueDes;
          break;
        case r'warehouse_type_display':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.warehouseTypeDisplay = valueDes;
          break;
        case r'color_hex':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.colorHex = valueDes;
          break;
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.icon = valueDes;
          break;
        case r'is_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'products_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.productsCount = valueDes;
          break;
        case r'area_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.areaName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductCategoryList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductCategoryListBuilder();
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

