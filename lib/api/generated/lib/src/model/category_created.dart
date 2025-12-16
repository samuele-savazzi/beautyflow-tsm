//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_created.g.dart';

/// CategoryCreated
///
/// Properties:
/// * [id] 
/// * [message] 
@BuiltValue()
abstract class CategoryCreated implements Built<CategoryCreated, CategoryCreatedBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'message')
  String get message;

  CategoryCreated._();

  factory CategoryCreated([void updates(CategoryCreatedBuilder b)]) = _$CategoryCreated;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CategoryCreatedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CategoryCreated> get serializer => _$CategoryCreatedSerializer();
}

class _$CategoryCreatedSerializer implements PrimitiveSerializer<CategoryCreated> {
  @override
  final Iterable<Type> types = const [CategoryCreated, _$CategoryCreated];

  @override
  final String wireName = r'CategoryCreated';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CategoryCreated object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CategoryCreated object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CategoryCreatedBuilder result,
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
  CategoryCreated deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CategoryCreatedBuilder();
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

