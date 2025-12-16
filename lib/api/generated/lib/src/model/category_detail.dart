//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_detail.g.dart';

/// CategoryDetail
///
/// Properties:
/// * [id] - ID della categoria
/// * [name] - Nome della categoria
/// * [stepName] - Nome dello step a cui appartiene
@BuiltValue()
abstract class CategoryDetail implements Built<CategoryDetail, CategoryDetailBuilder> {
  /// ID della categoria
  @BuiltValueField(wireName: r'id')
  int get id;

  /// Nome della categoria
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Nome dello step a cui appartiene
  @BuiltValueField(wireName: r'step_name')
  String get stepName;

  CategoryDetail._();

  factory CategoryDetail([void updates(CategoryDetailBuilder b)]) = _$CategoryDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CategoryDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CategoryDetail> get serializer => _$CategoryDetailSerializer();
}

class _$CategoryDetailSerializer implements PrimitiveSerializer<CategoryDetail> {
  @override
  final Iterable<Type> types = const [CategoryDetail, _$CategoryDetail];

  @override
  final String wireName = r'CategoryDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CategoryDetail object, {
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
    yield r'step_name';
    yield serializers.serialize(
      object.stepName,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CategoryDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CategoryDetailBuilder result,
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
        case r'step_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.stepName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CategoryDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CategoryDetailBuilder();
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

