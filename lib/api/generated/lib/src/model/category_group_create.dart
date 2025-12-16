//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/category_create.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_group_create.g.dart';

/// CategoryGroupCreate
///
/// Properties:
/// * [name] 
/// * [categories] 
@BuiltValue()
abstract class CategoryGroupCreate implements Built<CategoryGroupCreate, CategoryGroupCreateBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'categories')
  BuiltList<CategoryCreate> get categories;

  CategoryGroupCreate._();

  factory CategoryGroupCreate([void updates(CategoryGroupCreateBuilder b)]) = _$CategoryGroupCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CategoryGroupCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CategoryGroupCreate> get serializer => _$CategoryGroupCreateSerializer();
}

class _$CategoryGroupCreateSerializer implements PrimitiveSerializer<CategoryGroupCreate> {
  @override
  final Iterable<Type> types = const [CategoryGroupCreate, _$CategoryGroupCreate];

  @override
  final String wireName = r'CategoryGroupCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CategoryGroupCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'categories';
    yield serializers.serialize(
      object.categories,
      specifiedType: const FullType(BuiltList, [FullType(CategoryCreate)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CategoryGroupCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CategoryGroupCreateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'categories':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CategoryCreate)]),
          ) as BuiltList<CategoryCreate>;
          result.categories.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CategoryGroupCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CategoryGroupCreateBuilder();
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

