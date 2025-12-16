//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/category_group_create.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'step_create.g.dart';

/// StepCreate
///
/// Properties:
/// * [name] 
/// * [description] 
/// * [templateId] 
/// * [immutable] 
/// * [requiresActiveTime] 
/// * [preparationWorkStation] 
/// * [cleanWorkStation] 
/// * [hasCategories] 
/// * [active] 
/// * [type] 
/// * [value] 
/// * [categoryGroup] 
/// * [icon] 
/// * [color] 
/// * [bgColor] 
/// * [dragId] 
@BuiltValue()
abstract class StepCreate implements Built<StepCreate, StepCreateBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'templateId')
  int get templateId;

  @BuiltValueField(wireName: r'immutable')
  bool get immutable;

  @BuiltValueField(wireName: r'requiresActiveTime')
  bool get requiresActiveTime;

  @BuiltValueField(wireName: r'preparationWorkStation')
  bool get preparationWorkStation;

  @BuiltValueField(wireName: r'cleanWorkStation')
  bool get cleanWorkStation;

  @BuiltValueField(wireName: r'hasCategories')
  bool get hasCategories;

  @BuiltValueField(wireName: r'active')
  bool get active;

  @BuiltValueField(wireName: r'type')
  String get type;

  @BuiltValueField(wireName: r'value')
  String get value;

  @BuiltValueField(wireName: r'categoryGroup')
  CategoryGroupCreate get categoryGroup;

  @BuiltValueField(wireName: r'icon')
  String get icon;

  @BuiltValueField(wireName: r'color')
  String get color;

  @BuiltValueField(wireName: r'bgColor')
  String get bgColor;

  @BuiltValueField(wireName: r'dragId')
  String get dragId;

  StepCreate._();

  factory StepCreate([void updates(StepCreateBuilder b)]) = _$StepCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StepCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StepCreate> get serializer => _$StepCreateSerializer();
}

class _$StepCreateSerializer implements PrimitiveSerializer<StepCreate> {
  @override
  final Iterable<Type> types = const [StepCreate, _$StepCreate];

  @override
  final String wireName = r'StepCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StepCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'templateId';
    yield serializers.serialize(
      object.templateId,
      specifiedType: const FullType(int),
    );
    yield r'immutable';
    yield serializers.serialize(
      object.immutable,
      specifiedType: const FullType(bool),
    );
    yield r'requiresActiveTime';
    yield serializers.serialize(
      object.requiresActiveTime,
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
    yield r'hasCategories';
    yield serializers.serialize(
      object.hasCategories,
      specifiedType: const FullType(bool),
    );
    yield r'active';
    yield serializers.serialize(
      object.active,
      specifiedType: const FullType(bool),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
    yield r'categoryGroup';
    yield serializers.serialize(
      object.categoryGroup,
      specifiedType: const FullType(CategoryGroupCreate),
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
    yield r'dragId';
    yield serializers.serialize(
      object.dragId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StepCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StepCreateBuilder result,
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
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'templateId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.templateId = valueDes;
          break;
        case r'immutable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.immutable = valueDes;
          break;
        case r'requiresActiveTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.requiresActiveTime = valueDes;
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
        case r'hasCategories':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasCategories = valueDes;
          break;
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.active = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        case r'categoryGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CategoryGroupCreate),
          ) as CategoryGroupCreate;
          result.categoryGroup.replace(valueDes);
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
        case r'dragId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dragId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StepCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StepCreateBuilder();
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

