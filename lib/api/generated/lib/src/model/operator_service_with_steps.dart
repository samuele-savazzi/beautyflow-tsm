//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/service_step_create.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operator_service_with_steps.g.dart';

/// OperatorServiceWithSteps
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [price] 
/// * [steps] 
@BuiltValue()
abstract class OperatorServiceWithSteps implements Built<OperatorServiceWithSteps, OperatorServiceWithStepsBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'price')
  double? get price;

  @BuiltValueField(wireName: r'steps')
  BuiltList<ServiceStepCreate>? get steps;

  OperatorServiceWithSteps._();

  factory OperatorServiceWithSteps([void updates(OperatorServiceWithStepsBuilder b)]) = _$OperatorServiceWithSteps;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperatorServiceWithStepsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperatorServiceWithSteps> get serializer => _$OperatorServiceWithStepsSerializer();
}

class _$OperatorServiceWithStepsSerializer implements PrimitiveSerializer<OperatorServiceWithSteps> {
  @override
  final Iterable<Type> types = const [OperatorServiceWithSteps, _$OperatorServiceWithSteps];

  @override
  final String wireName = r'OperatorServiceWithSteps';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperatorServiceWithSteps object, {
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
        specifiedType: const FullType(BuiltList, [FullType(ServiceStepCreate)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OperatorServiceWithSteps object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperatorServiceWithStepsBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(ServiceStepCreate)]),
          ) as BuiltList<ServiceStepCreate>;
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
  OperatorServiceWithSteps deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperatorServiceWithStepsBuilder();
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

