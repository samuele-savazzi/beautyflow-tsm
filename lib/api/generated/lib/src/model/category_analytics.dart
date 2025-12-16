//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/category_analytics_totals.dart';
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/category_analytics_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_analytics.g.dart';

/// CategoryAnalytics
///
/// Properties:
/// * [categories] 
/// * [totals] 
@BuiltValue()
abstract class CategoryAnalytics implements Built<CategoryAnalytics, CategoryAnalyticsBuilder> {
  @BuiltValueField(wireName: r'categories')
  BuiltList<CategoryAnalyticsItem> get categories;

  @BuiltValueField(wireName: r'totals')
  CategoryAnalyticsTotals get totals;

  CategoryAnalytics._();

  factory CategoryAnalytics([void updates(CategoryAnalyticsBuilder b)]) = _$CategoryAnalytics;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CategoryAnalyticsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CategoryAnalytics> get serializer => _$CategoryAnalyticsSerializer();
}

class _$CategoryAnalyticsSerializer implements PrimitiveSerializer<CategoryAnalytics> {
  @override
  final Iterable<Type> types = const [CategoryAnalytics, _$CategoryAnalytics];

  @override
  final String wireName = r'CategoryAnalytics';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CategoryAnalytics object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'categories';
    yield serializers.serialize(
      object.categories,
      specifiedType: const FullType(BuiltList, [FullType(CategoryAnalyticsItem)]),
    );
    yield r'totals';
    yield serializers.serialize(
      object.totals,
      specifiedType: const FullType(CategoryAnalyticsTotals),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CategoryAnalytics object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CategoryAnalyticsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'categories':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CategoryAnalyticsItem)]),
          ) as BuiltList<CategoryAnalyticsItem>;
          result.categories.replace(valueDes);
          break;
        case r'totals':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CategoryAnalyticsTotals),
          ) as CategoryAnalyticsTotals;
          result.totals.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CategoryAnalytics deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CategoryAnalyticsBuilder();
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

