//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_deleted.g.dart';

/// CategoryDeleted
///
/// Properties:
/// * [message] 
@BuiltValue()
abstract class CategoryDeleted implements Built<CategoryDeleted, CategoryDeletedBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  CategoryDeleted._();

  factory CategoryDeleted([void updates(CategoryDeletedBuilder b)]) = _$CategoryDeleted;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CategoryDeletedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CategoryDeleted> get serializer => _$CategoryDeletedSerializer();
}

class _$CategoryDeletedSerializer implements PrimitiveSerializer<CategoryDeleted> {
  @override
  final Iterable<Type> types = const [CategoryDeleted, _$CategoryDeleted];

  @override
  final String wireName = r'CategoryDeleted';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CategoryDeleted object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CategoryDeleted object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CategoryDeletedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CategoryDeleted deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CategoryDeletedBuilder();
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

