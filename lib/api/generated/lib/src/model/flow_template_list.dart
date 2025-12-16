//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'flow_template_list.g.dart';

/// FlowTemplateList
///
/// Properties:
/// * [template] 
/// * [name] 
/// * [description] 
@BuiltValue()
abstract class FlowTemplateList implements Built<FlowTemplateList, FlowTemplateListBuilder> {
  @BuiltValueField(wireName: r'template')
  Map<String, dynamic>? get template;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String get description;

  FlowTemplateList._();

  factory FlowTemplateList([void updates(FlowTemplateListBuilder b)]) = _$FlowTemplateList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FlowTemplateListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FlowTemplateList> get serializer => _$FlowTemplateListSerializer();
}

class _$FlowTemplateListSerializer implements PrimitiveSerializer<FlowTemplateList> {
  @override
  final Iterable<Type> types = const [FlowTemplateList, _$FlowTemplateList];

  @override
  final String wireName = r'FlowTemplateList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FlowTemplateList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'template';
    yield object.template == null ? null : serializers.serialize(
      object.template,
      specifiedType: const FullType.nullable(Map<String, dynamic>),
    );
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
  }

  @override
  Object serialize(
    Serializers serializers,
    FlowTemplateList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FlowTemplateListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'template':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Map<String, dynamic>),
          ) as Map<String, dynamic>?;
          if (valueDes == null) continue;
          result.template = valueDes;
          break;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FlowTemplateList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FlowTemplateListBuilder();
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

