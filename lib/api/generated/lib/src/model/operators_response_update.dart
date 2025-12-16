//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/operator_with_config.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operators_response_update.g.dart';

/// Serializer per la risposta con la lista operatori.
///
/// Properties:
/// * [status] 
/// * [operators] 
/// * [areaInfo] 
@BuiltValue()
abstract class OperatorsResponseUpdate implements Built<OperatorsResponseUpdate, OperatorsResponseUpdateBuilder> {
  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'operators')
  BuiltList<OperatorWithConfig> get operators;

  @BuiltValueField(wireName: r'area_info')
  BuiltMap<String, Map<String, dynamic>?> get areaInfo;

  OperatorsResponseUpdate._();

  factory OperatorsResponseUpdate([void updates(OperatorsResponseUpdateBuilder b)]) = _$OperatorsResponseUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperatorsResponseUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperatorsResponseUpdate> get serializer => _$OperatorsResponseUpdateSerializer();
}

class _$OperatorsResponseUpdateSerializer implements PrimitiveSerializer<OperatorsResponseUpdate> {
  @override
  final Iterable<Type> types = const [OperatorsResponseUpdate, _$OperatorsResponseUpdate];

  @override
  final String wireName = r'OperatorsResponseUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperatorsResponseUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'operators';
    yield serializers.serialize(
      object.operators,
      specifiedType: const FullType(BuiltList, [FullType(OperatorWithConfig)]),
    );
    yield r'area_info';
    yield serializers.serialize(
      object.areaInfo,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OperatorsResponseUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperatorsResponseUpdateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'operators':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OperatorWithConfig)]),
          ) as BuiltList<OperatorWithConfig>;
          result.operators.replace(valueDes);
          break;
        case r'area_info':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltMap<String, Map<String, dynamic>?>;
          result.areaInfo.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OperatorsResponseUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperatorsResponseUpdateBuilder();
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

