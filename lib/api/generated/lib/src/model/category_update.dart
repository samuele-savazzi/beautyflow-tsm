//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_update.g.dart';

/// CategoryUpdate
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [color] 
/// * [value] 
/// * [attachment] 
/// * [overprice] 
@BuiltValue()
abstract class CategoryUpdate implements Built<CategoryUpdate, CategoryUpdateBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'color')
  String get color;

  @BuiltValueField(wireName: r'value')
  int? get value;

  @BuiltValueField(wireName: r'attachment')
  String? get attachment;

  @BuiltValueField(wireName: r'overprice')
  double? get overprice;

  CategoryUpdate._();

  factory CategoryUpdate([void updates(CategoryUpdateBuilder b)]) = _$CategoryUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CategoryUpdateBuilder b) => b
      ..overprice = 0.0;

  @BuiltValueSerializer(custom: true)
  static Serializer<CategoryUpdate> get serializer => _$CategoryUpdateSerializer();
}

class _$CategoryUpdateSerializer implements PrimitiveSerializer<CategoryUpdate> {
  @override
  final Iterable<Type> types = const [CategoryUpdate, _$CategoryUpdate];

  @override
  final String wireName = r'CategoryUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CategoryUpdate object, {
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
    yield r'color';
    yield serializers.serialize(
      object.color,
      specifiedType: const FullType(String),
    );
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.attachment != null) {
      yield r'attachment';
      yield serializers.serialize(
        object.attachment,
        specifiedType: const FullType(String),
      );
    }
    if (object.overprice != null) {
      yield r'overprice';
      yield serializers.serialize(
        object.overprice,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CategoryUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CategoryUpdateBuilder result,
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
        case r'color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.color = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'attachment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.attachment = valueDes;
          break;
        case r'overprice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.overprice = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CategoryUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CategoryUpdateBuilder();
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

