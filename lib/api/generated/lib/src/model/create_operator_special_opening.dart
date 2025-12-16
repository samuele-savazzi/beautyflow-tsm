//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_operator_special_opening.g.dart';

/// CreateOperatorSpecialOpening
///
/// Properties:
/// * [operatorId] 
/// * [specialOpeningId] 
/// * [timeSlotIds] 
/// * [notes] 
@BuiltValue()
abstract class CreateOperatorSpecialOpening implements Built<CreateOperatorSpecialOpening, CreateOperatorSpecialOpeningBuilder> {
  @BuiltValueField(wireName: r'operator_id')
  int get operatorId;

  @BuiltValueField(wireName: r'special_opening_id')
  int get specialOpeningId;

  @BuiltValueField(wireName: r'time_slot_ids')
  BuiltList<BuiltMap<String, Map<String, dynamic>?>> get timeSlotIds;

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  CreateOperatorSpecialOpening._();

  factory CreateOperatorSpecialOpening([void updates(CreateOperatorSpecialOpeningBuilder b)]) = _$CreateOperatorSpecialOpening;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateOperatorSpecialOpeningBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateOperatorSpecialOpening> get serializer => _$CreateOperatorSpecialOpeningSerializer();
}

class _$CreateOperatorSpecialOpeningSerializer implements PrimitiveSerializer<CreateOperatorSpecialOpening> {
  @override
  final Iterable<Type> types = const [CreateOperatorSpecialOpening, _$CreateOperatorSpecialOpening];

  @override
  final String wireName = r'CreateOperatorSpecialOpening';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateOperatorSpecialOpening object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'operator_id';
    yield serializers.serialize(
      object.operatorId,
      specifiedType: const FullType(int),
    );
    yield r'special_opening_id';
    yield serializers.serialize(
      object.specialOpeningId,
      specifiedType: const FullType(int),
    );
    yield r'time_slot_ids';
    yield serializers.serialize(
      object.timeSlotIds,
      specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
    );
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateOperatorSpecialOpening object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateOperatorSpecialOpeningBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'operator_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.operatorId = valueDes;
          break;
        case r'special_opening_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.specialOpeningId = valueDes;
          break;
        case r'time_slot_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
          ) as BuiltList<BuiltMap<String, Map<String, dynamic>?>>;
          result.timeSlotIds.replace(valueDes);
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.notes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateOperatorSpecialOpening deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateOperatorSpecialOpeningBuilder();
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

