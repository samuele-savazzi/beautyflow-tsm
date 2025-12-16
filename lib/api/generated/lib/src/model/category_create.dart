//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_create.g.dart';

/// CategoryCreate
///
/// Properties:
/// * [name] 
/// * [color] 
/// * [value] 
/// * [attachment] 
/// * [overprice] 
@BuiltValue()
abstract class CategoryCreate implements Built<CategoryCreate, CategoryCreateBuilder> {
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

  CategoryCreate._();

  factory CategoryCreate([void updates(CategoryCreateBuilder b)]) = _$CategoryCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CategoryCreateBuilder b) => b
      ..overprice = 0.0;

  @BuiltValueSerializer(custom: true)
  static Serializer<CategoryCreate> get serializer => _$CategoryCreateSerializer();
}

class _$CategoryCreateSerializer implements PrimitiveSerializer<CategoryCreate> {
  @override
  final Iterable<Type> types = const [CategoryCreate, _$CategoryCreate];

  @override
  final String wireName = r'CategoryCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CategoryCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    CategoryCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CategoryCreateBuilder result,
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
  CategoryCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CategoryCreateBuilder();
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

