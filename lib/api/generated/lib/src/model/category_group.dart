//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/category_value.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_group.g.dart';

/// Serializzatore per i gruppi di categorie
///
/// Properties:
/// * [title] 
/// * [values] 
@BuiltValue()
abstract class CategoryGroup implements Built<CategoryGroup, CategoryGroupBuilder> {
  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'values')
  BuiltList<CategoryValue> get values;

  CategoryGroup._();

  factory CategoryGroup([void updates(CategoryGroupBuilder b)]) = _$CategoryGroup;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CategoryGroupBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CategoryGroup> get serializer => _$CategoryGroupSerializer();
}

class _$CategoryGroupSerializer implements PrimitiveSerializer<CategoryGroup> {
  @override
  final Iterable<Type> types = const [CategoryGroup, _$CategoryGroup];

  @override
  final String wireName = r'CategoryGroup';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CategoryGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'values';
    yield serializers.serialize(
      object.values,
      specifiedType: const FullType(BuiltList, [FullType(CategoryValue)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CategoryGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CategoryGroupBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'values':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CategoryValue)]),
          ) as BuiltList<CategoryValue>;
          result.values.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CategoryGroup deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CategoryGroupBuilder();
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

