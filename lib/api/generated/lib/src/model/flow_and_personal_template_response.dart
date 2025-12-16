//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/personal_template_list.dart';
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/flow_template_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'flow_and_personal_template_response.g.dart';

/// FlowAndPersonalTemplateResponse
///
/// Properties:
/// * [flowsTemplate] 
/// * [personalsTemplate] 
@BuiltValue()
abstract class FlowAndPersonalTemplateResponse implements Built<FlowAndPersonalTemplateResponse, FlowAndPersonalTemplateResponseBuilder> {
  @BuiltValueField(wireName: r'flows_template')
  BuiltList<FlowTemplateList> get flowsTemplate;

  @BuiltValueField(wireName: r'personals_template')
  BuiltList<PersonalTemplateList> get personalsTemplate;

  FlowAndPersonalTemplateResponse._();

  factory FlowAndPersonalTemplateResponse([void updates(FlowAndPersonalTemplateResponseBuilder b)]) = _$FlowAndPersonalTemplateResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FlowAndPersonalTemplateResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FlowAndPersonalTemplateResponse> get serializer => _$FlowAndPersonalTemplateResponseSerializer();
}

class _$FlowAndPersonalTemplateResponseSerializer implements PrimitiveSerializer<FlowAndPersonalTemplateResponse> {
  @override
  final Iterable<Type> types = const [FlowAndPersonalTemplateResponse, _$FlowAndPersonalTemplateResponse];

  @override
  final String wireName = r'FlowAndPersonalTemplateResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FlowAndPersonalTemplateResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'flows_template';
    yield serializers.serialize(
      object.flowsTemplate,
      specifiedType: const FullType(BuiltList, [FullType(FlowTemplateList)]),
    );
    yield r'personals_template';
    yield serializers.serialize(
      object.personalsTemplate,
      specifiedType: const FullType(BuiltList, [FullType(PersonalTemplateList)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FlowAndPersonalTemplateResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FlowAndPersonalTemplateResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'flows_template':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(FlowTemplateList)]),
          ) as BuiltList<FlowTemplateList>;
          result.flowsTemplate.replace(valueDes);
          break;
        case r'personals_template':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PersonalTemplateList)]),
          ) as BuiltList<PersonalTemplateList>;
          result.personalsTemplate.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FlowAndPersonalTemplateResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FlowAndPersonalTemplateResponseBuilder();
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

