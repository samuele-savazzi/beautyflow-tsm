//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'step_template_list.g.dart';

/// StepTemplateList
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [icon] 
/// * [color] 
/// * [bgColor] 
/// * [description] 
/// * [defaultTime] 
/// * [isImmutable] 
/// * [requiresActiveTime] 
/// * [hasCategories] 
/// * [preparationWorkStation] 
/// * [cleanWorkStation] 
@BuiltValue()
abstract class StepTemplateList implements Built<StepTemplateList, StepTemplateListBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'icon')
  String get icon;

  @BuiltValueField(wireName: r'color')
  String get color;

  @BuiltValueField(wireName: r'bgColor')
  String get bgColor;

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'defaultTime')
  int get defaultTime;

  @BuiltValueField(wireName: r'isImmutable')
  bool get isImmutable;

  @BuiltValueField(wireName: r'requiresActiveTime')
  bool get requiresActiveTime;

  @BuiltValueField(wireName: r'hasCategories')
  bool get hasCategories;

  @BuiltValueField(wireName: r'preparationWorkStation')
  bool get preparationWorkStation;

  @BuiltValueField(wireName: r'cleanWorkStation')
  bool get cleanWorkStation;

  StepTemplateList._();

  factory StepTemplateList([void updates(StepTemplateListBuilder b)]) = _$StepTemplateList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StepTemplateListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StepTemplateList> get serializer => _$StepTemplateListSerializer();
}

class _$StepTemplateListSerializer implements PrimitiveSerializer<StepTemplateList> {
  @override
  final Iterable<Type> types = const [StepTemplateList, _$StepTemplateList];

  @override
  final String wireName = r'StepTemplateList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StepTemplateList object, {
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
    yield r'icon';
    yield serializers.serialize(
      object.icon,
      specifiedType: const FullType(String),
    );
    yield r'color';
    yield serializers.serialize(
      object.color,
      specifiedType: const FullType(String),
    );
    yield r'bgColor';
    yield serializers.serialize(
      object.bgColor,
      specifiedType: const FullType(String),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'defaultTime';
    yield serializers.serialize(
      object.defaultTime,
      specifiedType: const FullType(int),
    );
    yield r'isImmutable';
    yield serializers.serialize(
      object.isImmutable,
      specifiedType: const FullType(bool),
    );
    yield r'requiresActiveTime';
    yield serializers.serialize(
      object.requiresActiveTime,
      specifiedType: const FullType(bool),
    );
    yield r'hasCategories';
    yield serializers.serialize(
      object.hasCategories,
      specifiedType: const FullType(bool),
    );
    yield r'preparationWorkStation';
    yield serializers.serialize(
      object.preparationWorkStation,
      specifiedType: const FullType(bool),
    );
    yield r'cleanWorkStation';
    yield serializers.serialize(
      object.cleanWorkStation,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StepTemplateList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StepTemplateListBuilder result,
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
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.icon = valueDes;
          break;
        case r'color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.color = valueDes;
          break;
        case r'bgColor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.bgColor = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'defaultTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.defaultTime = valueDes;
          break;
        case r'isImmutable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isImmutable = valueDes;
          break;
        case r'requiresActiveTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.requiresActiveTime = valueDes;
          break;
        case r'hasCategories':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasCategories = valueDes;
          break;
        case r'preparationWorkStation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.preparationWorkStation = valueDes;
          break;
        case r'cleanWorkStation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.cleanWorkStation = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StepTemplateList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StepTemplateListBuilder();
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

