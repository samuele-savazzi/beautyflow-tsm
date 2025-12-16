//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/service_step_category_update.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_step_update.g.dart';

/// ServiceStepUpdate
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [time] 
/// * [categories] 
@BuiltValue()
abstract class ServiceStepUpdate implements Built<ServiceStepUpdate, ServiceStepUpdateBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'time')
  int? get time;

  @BuiltValueField(wireName: r'categories')
  BuiltList<ServiceStepCategoryUpdate>? get categories;

  ServiceStepUpdate._();

  factory ServiceStepUpdate([void updates(ServiceStepUpdateBuilder b)]) = _$ServiceStepUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServiceStepUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServiceStepUpdate> get serializer => _$ServiceStepUpdateSerializer();
}

class _$ServiceStepUpdateSerializer implements PrimitiveSerializer<ServiceStepUpdate> {
  @override
  final Iterable<Type> types = const [ServiceStepUpdate, _$ServiceStepUpdate];

  @override
  final String wireName = r'ServiceStepUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServiceStepUpdate object, {
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
        specifiedType: const FullType(BuiltList, [FullType(ServiceStepCategoryUpdate)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ServiceStepUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ServiceStepUpdateBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(ServiceStepCategoryUpdate)]),
          ) as BuiltList<ServiceStepCategoryUpdate>;
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
  ServiceStepUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceStepUpdateBuilder();
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

