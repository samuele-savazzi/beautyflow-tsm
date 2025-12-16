//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/category_update.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_group_update.g.dart';

/// CategoryGroupUpdate
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [categories] 
@BuiltValue()
abstract class CategoryGroupUpdate implements Built<CategoryGroupUpdate, CategoryGroupUpdateBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'categories')
  BuiltList<CategoryUpdate> get categories;

  CategoryGroupUpdate._();

  factory CategoryGroupUpdate([void updates(CategoryGroupUpdateBuilder b)]) = _$CategoryGroupUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CategoryGroupUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CategoryGroupUpdate> get serializer => _$CategoryGroupUpdateSerializer();
}

class _$CategoryGroupUpdateSerializer implements PrimitiveSerializer<CategoryGroupUpdate> {
  @override
  final Iterable<Type> types = const [CategoryGroupUpdate, _$CategoryGroupUpdate];

  @override
  final String wireName = r'CategoryGroupUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CategoryGroupUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'categories';
    yield serializers.serialize(
      object.categories,
      specifiedType: const FullType(BuiltList, [FullType(CategoryUpdate)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CategoryGroupUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CategoryGroupUpdateBuilder result,
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
        case r'categories':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CategoryUpdate)]),
          ) as BuiltList<CategoryUpdate>;
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
  CategoryGroupUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CategoryGroupUpdateBuilder();
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

