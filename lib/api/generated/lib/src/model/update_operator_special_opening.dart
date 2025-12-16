//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_operator_special_opening.g.dart';

/// UpdateOperatorSpecialOpening
///
/// Properties:
/// * [id] 
/// * [timeSlotIds] 
/// * [notes] 
@BuiltValue()
abstract class UpdateOperatorSpecialOpening implements Built<UpdateOperatorSpecialOpening, UpdateOperatorSpecialOpeningBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'time_slot_ids')
  BuiltList<int> get timeSlotIds;

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  UpdateOperatorSpecialOpening._();

  factory UpdateOperatorSpecialOpening([void updates(UpdateOperatorSpecialOpeningBuilder b)]) = _$UpdateOperatorSpecialOpening;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateOperatorSpecialOpeningBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateOperatorSpecialOpening> get serializer => _$UpdateOperatorSpecialOpeningSerializer();
}

class _$UpdateOperatorSpecialOpeningSerializer implements PrimitiveSerializer<UpdateOperatorSpecialOpening> {
  @override
  final Iterable<Type> types = const [UpdateOperatorSpecialOpening, _$UpdateOperatorSpecialOpening];

  @override
  final String wireName = r'UpdateOperatorSpecialOpening';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateOperatorSpecialOpening object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'time_slot_ids';
    yield serializers.serialize(
      object.timeSlotIds,
      specifiedType: const FullType(BuiltList, [FullType(int)]),
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
    UpdateOperatorSpecialOpening object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateOperatorSpecialOpeningBuilder result,
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
        case r'time_slot_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
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
  UpdateOperatorSpecialOpening deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateOperatorSpecialOpeningBuilder();
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

