//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/category_option.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_steps.g.dart';

/// ServiceSteps
///
/// Properties:
/// * [stepId] - ID dello step
/// * [stepName] - Nome dello step
/// * [stepType] - Tipo di step (fixed, operator, category_fixed, category_operator, consultation)
/// * [stepTime] - Tempo in minuti per questo step (solo per step senza categorie, con tempi personalizzati operatore se disponibili)
/// * [categories] - Lista delle categorie disponibili per questo step. Array vuoto per step senza categorie (FIXED, OPERATOR).
@BuiltValue()
abstract class ServiceSteps implements Built<ServiceSteps, ServiceStepsBuilder> {
  /// ID dello step
  @BuiltValueField(wireName: r'step_id')
  int get stepId;

  /// Nome dello step
  @BuiltValueField(wireName: r'step_name')
  String get stepName;

  /// Tipo di step (fixed, operator, category_fixed, category_operator, consultation)
  @BuiltValueField(wireName: r'step_type')
  String get stepType;

  /// Tempo in minuti per questo step (solo per step senza categorie, con tempi personalizzati operatore se disponibili)
  @BuiltValueField(wireName: r'step_time')
  int? get stepTime;

  /// Lista delle categorie disponibili per questo step. Array vuoto per step senza categorie (FIXED, OPERATOR).
  @BuiltValueField(wireName: r'categories')
  BuiltList<CategoryOption> get categories;

  ServiceSteps._();

  factory ServiceSteps([void updates(ServiceStepsBuilder b)]) = _$ServiceSteps;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServiceStepsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServiceSteps> get serializer => _$ServiceStepsSerializer();
}

class _$ServiceStepsSerializer implements PrimitiveSerializer<ServiceSteps> {
  @override
  final Iterable<Type> types = const [ServiceSteps, _$ServiceSteps];

  @override
  final String wireName = r'ServiceSteps';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServiceSteps object, {
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
    yield r'step_time';
    yield object.stepTime == null ? null : serializers.serialize(
      object.stepTime,
      specifiedType: const FullType.nullable(int),
    );
    yield r'categories';
    yield serializers.serialize(
      object.categories,
      specifiedType: const FullType(BuiltList, [FullType(CategoryOption)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ServiceSteps object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ServiceStepsBuilder result,
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
        case r'step_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.stepTime = valueDes;
          break;
        case r'categories':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CategoryOption)]),
          ) as BuiltList<CategoryOption>;
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
  ServiceSteps deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceStepsBuilder();
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

