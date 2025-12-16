//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'created_operator_special_opening.g.dart';

/// CreatedOperatorSpecialOpening
///
/// Properties:
/// * [id] 
/// * [operatorId] 
/// * [specialOpeningId] 
/// * [timeSlots] 
/// * [notes] 
/// * [createdAt] 
@BuiltValue()
abstract class CreatedOperatorSpecialOpening implements Built<CreatedOperatorSpecialOpening, CreatedOperatorSpecialOpeningBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'operator_id')
  int get operatorId;

  @BuiltValueField(wireName: r'special_opening_id')
  int get specialOpeningId;

  @BuiltValueField(wireName: r'time_slots')
  BuiltList<BuiltMap<String, Map<String, dynamic>?>> get timeSlots;

  @BuiltValueField(wireName: r'notes')
  String get notes;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  CreatedOperatorSpecialOpening._();

  factory CreatedOperatorSpecialOpening([void updates(CreatedOperatorSpecialOpeningBuilder b)]) = _$CreatedOperatorSpecialOpening;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreatedOperatorSpecialOpeningBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreatedOperatorSpecialOpening> get serializer => _$CreatedOperatorSpecialOpeningSerializer();
}

class _$CreatedOperatorSpecialOpeningSerializer implements PrimitiveSerializer<CreatedOperatorSpecialOpening> {
  @override
  final Iterable<Type> types = const [CreatedOperatorSpecialOpening, _$CreatedOperatorSpecialOpening];

  @override
  final String wireName = r'CreatedOperatorSpecialOpening';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreatedOperatorSpecialOpening object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
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
    yield r'time_slots';
    yield serializers.serialize(
      object.timeSlots,
      specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
    );
    yield r'notes';
    yield serializers.serialize(
      object.notes,
      specifiedType: const FullType(String),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreatedOperatorSpecialOpening object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreatedOperatorSpecialOpeningBuilder result,
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
        case r'time_slots':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
          ) as BuiltList<BuiltMap<String, Map<String, dynamic>?>>;
          result.timeSlots.replace(valueDes);
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.notes = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreatedOperatorSpecialOpening deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatedOperatorSpecialOpeningBuilder();
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

