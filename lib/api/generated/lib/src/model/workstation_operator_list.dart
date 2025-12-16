//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workstation_operator_list.g.dart';

/// WorkstationOperatorList
///
/// Properties:
/// * [id] 
@BuiltValue()
abstract class WorkstationOperatorList implements Built<WorkstationOperatorList, WorkstationOperatorListBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  WorkstationOperatorList._();

  factory WorkstationOperatorList([void updates(WorkstationOperatorListBuilder b)]) = _$WorkstationOperatorList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkstationOperatorListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkstationOperatorList> get serializer => _$WorkstationOperatorListSerializer();
}

class _$WorkstationOperatorListSerializer implements PrimitiveSerializer<WorkstationOperatorList> {
  @override
  final Iterable<Type> types = const [WorkstationOperatorList, _$WorkstationOperatorList];

  @override
  final String wireName = r'WorkstationOperatorList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkstationOperatorList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WorkstationOperatorList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WorkstationOperatorListBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WorkstationOperatorList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkstationOperatorListBuilder();
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

