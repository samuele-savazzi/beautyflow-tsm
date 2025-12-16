//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/service_step_category_create.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_step_create.g.dart';

/// ServiceStepCreate
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [time] 
/// * [categories] 
@BuiltValue()
abstract class ServiceStepCreate implements Built<ServiceStepCreate, ServiceStepCreateBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'time')
  int? get time;

  @BuiltValueField(wireName: r'categories')
  BuiltList<ServiceStepCategoryCreate>? get categories;

  ServiceStepCreate._();

  factory ServiceStepCreate([void updates(ServiceStepCreateBuilder b)]) = _$ServiceStepCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServiceStepCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServiceStepCreate> get serializer => _$ServiceStepCreateSerializer();
}

class _$ServiceStepCreateSerializer implements PrimitiveSerializer<ServiceStepCreate> {
  @override
  final Iterable<Type> types = const [ServiceStepCreate, _$ServiceStepCreate];

  @override
  final String wireName = r'ServiceStepCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServiceStepCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.time != null) {
      yield r'time';
      yield serializers.serialize(
        object.time,
        specifiedType: const FullType(int),
      );
    }
    if (object.categories != null) {
      yield r'categories';
      yield serializers.serialize(
        object.categories,
        specifiedType: const FullType(BuiltList, [FullType(ServiceStepCategoryCreate)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ServiceStepCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ServiceStepCreateBuilder result,
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
            specifiedType: const FullType(int),
          ) as int;
          result.time = valueDes;
          break;
        case r'categories':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ServiceStepCategoryCreate)]),
          ) as BuiltList<ServiceStepCategoryCreate>;
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
  ServiceStepCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceStepCreateBuilder();
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

