//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_option.g.dart';

/// CategoryOption
///
/// Properties:
/// * [id] - ID della categoria
/// * [name] - Nome della categoria
/// * [time] - Tempo in minuti per questa categoria (con tempi personalizzati operatore se disponibili)
/// * [color] - Colore RGB della categoria
@BuiltValue()
abstract class CategoryOption implements Built<CategoryOption, CategoryOptionBuilder> {
  /// ID della categoria
  @BuiltValueField(wireName: r'id')
  int get id;

  /// Nome della categoria
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Tempo in minuti per questa categoria (con tempi personalizzati operatore se disponibili)
  @BuiltValueField(wireName: r'time')
  int? get time;

  /// Colore RGB della categoria
  @BuiltValueField(wireName: r'color')
  String get color;

  CategoryOption._();

  factory CategoryOption([void updates(CategoryOptionBuilder b)]) = _$CategoryOption;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CategoryOptionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CategoryOption> get serializer => _$CategoryOptionSerializer();
}

class _$CategoryOptionSerializer implements PrimitiveSerializer<CategoryOption> {
  @override
  final Iterable<Type> types = const [CategoryOption, _$CategoryOption];

  @override
  final String wireName = r'CategoryOption';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CategoryOption object, {
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
    yield r'time';
    yield object.time == null ? null : serializers.serialize(
      object.time,
      specifiedType: const FullType.nullable(int),
    );
    yield r'color';
    yield serializers.serialize(
      object.color,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CategoryOption object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CategoryOptionBuilder result,
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
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.time = valueDes;
          break;
        case r'color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.color = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CategoryOption deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CategoryOptionBuilder();
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

