//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_value.g.dart';

/// Serializzatore per i valori delle categorie
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [overprice] 
/// * [image] 
/// * [time] 
@BuiltValue()
abstract class CategoryValue implements Built<CategoryValue, CategoryValueBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'overprice')
  String get overprice;

  @BuiltValueField(wireName: r'image')
  String? get image;

  @BuiltValueField(wireName: r'time')
  int? get time;

  CategoryValue._();

  factory CategoryValue([void updates(CategoryValueBuilder b)]) = _$CategoryValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CategoryValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CategoryValue> get serializer => _$CategoryValueSerializer();
}

class _$CategoryValueSerializer implements PrimitiveSerializer<CategoryValue> {
  @override
  final Iterable<Type> types = const [CategoryValue, _$CategoryValue];

  @override
  final String wireName = r'CategoryValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CategoryValue object, {
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
    yield r'overprice';
    yield serializers.serialize(
      object.overprice,
      specifiedType: const FullType(String),
    );
    yield r'image';
    yield object.image == null ? null : serializers.serialize(
      object.image,
      specifiedType: const FullType.nullable(String),
    );
    if (object.time != null) {
      yield r'time';
      yield serializers.serialize(
        object.time,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CategoryValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CategoryValueBuilder result,
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
        case r'overprice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.overprice = valueDes;
          break;
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.image = valueDes;
          break;
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.time = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CategoryValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CategoryValueBuilder();
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

