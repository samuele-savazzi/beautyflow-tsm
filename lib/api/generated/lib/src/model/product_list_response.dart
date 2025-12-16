//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/product_list.dart';
import 'package:beautyflow_api/src/model/category_analytics.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_list_response.g.dart';

/// ProductListResponse
///
/// Properties:
/// * [success] 
/// * [count] 
/// * [page] 
/// * [pageSize] 
/// * [totalPages] 
/// * [hasNext] 
/// * [hasPrevious] 
/// * [results] 
/// * [analytics] 
@BuiltValue()
abstract class ProductListResponse implements Built<ProductListResponse, ProductListResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'count')
  int get count;

  @BuiltValueField(wireName: r'page')
  int get page;

  @BuiltValueField(wireName: r'page_size')
  int get pageSize;

  @BuiltValueField(wireName: r'total_pages')
  int get totalPages;

  @BuiltValueField(wireName: r'has_next')
  bool get hasNext;

  @BuiltValueField(wireName: r'has_previous')
  bool get hasPrevious;

  @BuiltValueField(wireName: r'results')
  BuiltList<ProductList> get results;

  @BuiltValueField(wireName: r'analytics')
  CategoryAnalytics? get analytics;

  ProductListResponse._();

  factory ProductListResponse([void updates(ProductListResponseBuilder b)]) = _$ProductListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductListResponse> get serializer => _$ProductListResponseSerializer();
}

class _$ProductListResponseSerializer implements PrimitiveSerializer<ProductListResponse> {
  @override
  final Iterable<Type> types = const [ProductListResponse, _$ProductListResponse];

  @override
  final String wireName = r'ProductListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
    yield r'page';
    yield serializers.serialize(
      object.page,
      specifiedType: const FullType(int),
    );
    yield r'page_size';
    yield serializers.serialize(
      object.pageSize,
      specifiedType: const FullType(int),
    );
    yield r'total_pages';
    yield serializers.serialize(
      object.totalPages,
      specifiedType: const FullType(int),
    );
    yield r'has_next';
    yield serializers.serialize(
      object.hasNext,
      specifiedType: const FullType(bool),
    );
    yield r'has_previous';
    yield serializers.serialize(
      object.hasPrevious,
      specifiedType: const FullType(bool),
    );
    yield r'results';
    yield serializers.serialize(
      object.results,
      specifiedType: const FullType(BuiltList, [FullType(ProductList)]),
    );
    if (object.analytics != null) {
      yield r'analytics';
      yield serializers.serialize(
        object.analytics,
        specifiedType: const FullType.nullable(CategoryAnalytics),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductListResponseBuilder result,
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
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.page = valueDes;
          break;
        case r'page_size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pageSize = valueDes;
          break;
        case r'total_pages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalPages = valueDes;
          break;
        case r'has_next':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasNext = valueDes;
          break;
        case r'has_previous':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasPrevious = valueDes;
          break;
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ProductList)]),
          ) as BuiltList<ProductList>;
          result.results.replace(valueDes);
          break;
        case r'analytics':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CategoryAnalytics),
          ) as CategoryAnalytics?;
          if (valueDes == null) continue;
          result.analytics.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductListResponseBuilder();
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

