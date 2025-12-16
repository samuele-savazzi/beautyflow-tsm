//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/service_step_update.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_with_steps_update.g.dart';

/// ServiceWithStepsUpdate
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [price] 
/// * [steps] 
@BuiltValue()
abstract class ServiceWithStepsUpdate implements Built<ServiceWithStepsUpdate, ServiceWithStepsUpdateBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'price')
  double? get price;

  @BuiltValueField(wireName: r'steps')
  BuiltList<ServiceStepUpdate>? get steps;

  ServiceWithStepsUpdate._();

  factory ServiceWithStepsUpdate([void updates(ServiceWithStepsUpdateBuilder b)]) = _$ServiceWithStepsUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServiceWithStepsUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServiceWithStepsUpdate> get serializer => _$ServiceWithStepsUpdateSerializer();
}

class _$ServiceWithStepsUpdateSerializer implements PrimitiveSerializer<ServiceWithStepsUpdate> {
  @override
  final Iterable<Type> types = const [ServiceWithStepsUpdate, _$ServiceWithStepsUpdate];

  @override
  final String wireName = r'ServiceWithStepsUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServiceWithStepsUpdate object, {
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
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType(double),
      );
    }
    if (object.steps != null) {
      yield r'steps';
      yield serializers.serialize(
        object.steps,
        specifiedType: const FullType(BuiltList, [FullType(ServiceStepUpdate)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ServiceWithStepsUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ServiceWithStepsUpdateBuilder result,
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
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.price = valueDes;
          break;
        case r'steps':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ServiceStepUpdate)]),
          ) as BuiltList<ServiceStepUpdate>;
          result.steps.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServiceWithStepsUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceWithStepsUpdateBuilder();
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

