//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/general_info_update.dart';
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/step_update.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_update.g.dart';

/// ServiceUpdate
///
/// Properties:
/// * [generalInfo] 
/// * [serviceType] 
/// * [times] 
/// * [phases] 
/// * [questions] 
/// * [regularCustomerQuestions] 
@BuiltValue()
abstract class ServiceUpdate implements Built<ServiceUpdate, ServiceUpdateBuilder> {
  @BuiltValueField(wireName: r'generalInfo')
  GeneralInfoUpdate get generalInfo;

  @BuiltValueField(wireName: r'serviceType')
  String get serviceType;

  @BuiltValueField(wireName: r'times')
  BuiltList<StepUpdate> get times;

  @BuiltValueField(wireName: r'phases')
  BuiltList<int>? get phases;

  @BuiltValueField(wireName: r'questions')
  Map<String, dynamic>? get questions;

  @BuiltValueField(wireName: r'regular_customer_questions')
  Map<String, dynamic>? get regularCustomerQuestions;

  ServiceUpdate._();

  factory ServiceUpdate([void updates(ServiceUpdateBuilder b)]) = _$ServiceUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServiceUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServiceUpdate> get serializer => _$ServiceUpdateSerializer();
}

class _$ServiceUpdateSerializer implements PrimitiveSerializer<ServiceUpdate> {
  @override
  final Iterable<Type> types = const [ServiceUpdate, _$ServiceUpdate];

  @override
  final String wireName = r'ServiceUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServiceUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'generalInfo';
    yield serializers.serialize(
      object.generalInfo,
      specifiedType: const FullType(GeneralInfoUpdate),
    );
    yield r'serviceType';
    yield serializers.serialize(
      object.serviceType,
      specifiedType: const FullType(String),
    );
    yield r'times';
    yield serializers.serialize(
      object.times,
      specifiedType: const FullType(BuiltList, [FullType(StepUpdate)]),
    );
    if (object.phases != null) {
      yield r'phases';
      yield serializers.serialize(
        object.phases,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
    yield r'questions';
    yield object.questions == null ? null : serializers.serialize(
      object.questions,
      specifiedType: const FullType.nullable(Map<String, dynamic>),
    );
    yield r'regular_customer_questions';
    yield object.regularCustomerQuestions == null ? null : serializers.serialize(
      object.regularCustomerQuestions,
      specifiedType: const FullType.nullable(Map<String, dynamic>),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ServiceUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ServiceUpdateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'generalInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GeneralInfoUpdate),
          ) as GeneralInfoUpdate;
          result.generalInfo.replace(valueDes);
          break;
        case r'serviceType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.serviceType = valueDes;
          break;
        case r'times':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(StepUpdate)]),
          ) as BuiltList<StepUpdate>;
          result.times.replace(valueDes);
          break;
        case r'phases':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.phases.replace(valueDes);
          break;
        case r'questions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Map<String, dynamic>),
          ) as Map<String, dynamic>?;
          if (valueDes == null) continue;
          result.questions = valueDes;
          break;
        case r'regular_customer_questions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Map<String, dynamic>),
          ) as Map<String, dynamic>?;
          if (valueDes == null) continue;
          result.regularCustomerQuestions = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServiceUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceUpdateBuilder();
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

