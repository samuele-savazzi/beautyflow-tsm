//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/category_group.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_step.g.dart';

/// Serializzatore per gli step di servizio
///
/// Properties:
/// * [stepId] 
/// * [stepName] 
/// * [stepType] 
/// * [time] 
/// * [hasCategories] 
/// * [active] 
/// * [categories] 
@BuiltValue()
abstract class ServiceStep implements Built<ServiceStep, ServiceStepBuilder> {
  @BuiltValueField(wireName: r'step_id')
  int get stepId;

  @BuiltValueField(wireName: r'step_name')
  String get stepName;

  @BuiltValueField(wireName: r'step_type')
  String get stepType;

  @BuiltValueField(wireName: r'time')
  int get time;

  @BuiltValueField(wireName: r'has_categories')
  bool get hasCategories;

  @BuiltValueField(wireName: r'active')
  bool get active;

  @BuiltValueField(wireName: r'categories')
  BuiltMap<String, CategoryGroup>? get categories;

  ServiceStep._();

  factory ServiceStep([void updates(ServiceStepBuilder b)]) = _$ServiceStep;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServiceStepBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServiceStep> get serializer => _$ServiceStepSerializer();
}

class _$ServiceStepSerializer implements PrimitiveSerializer<ServiceStep> {
  @override
  final Iterable<Type> types = const [ServiceStep, _$ServiceStep];

  @override
  final String wireName = r'ServiceStep';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServiceStep object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'step_id';
    yield serializers.serialize(
      object.stepId,
      specifiedType: const FullType(int),
    );
    yield r'step_name';
    yield serializers.serialize(
      object.stepName,
      specifiedType: const FullType(String),
    );
    yield r'step_type';
    yield serializers.serialize(
      object.stepType,
      specifiedType: const FullType(String),
    );
    yield r'time';
    yield serializers.serialize(
      object.time,
      specifiedType: const FullType(int),
    );
    yield r'has_categories';
    yield serializers.serialize(
      object.hasCategories,
      specifiedType: const FullType(bool),
    );
    yield r'active';
    yield serializers.serialize(
      object.active,
      specifiedType: const FullType(bool),
    );
    if (object.categories != null) {
      yield r'categories';
      yield serializers.serialize(
        object.categories,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(CategoryGroup)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ServiceStep object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ServiceStepBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'step_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.stepId = valueDes;
          break;
        case r'step_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.stepName = valueDes;
          break;
        case r'step_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.stepType = valueDes;
          break;
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.time = valueDes;
          break;
        case r'has_categories':
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
        case r'categories':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(CategoryGroup)]),
          ) as BuiltMap<String, CategoryGroup>;
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
  ServiceStep deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceStepBuilder();
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

