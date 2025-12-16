//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/operator_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/special_opening_info.dart';
import 'package:beautyflow_api/src/model/time_slot_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operator_special_opening_list.g.dart';

/// OperatorSpecialOpeningList
///
/// Properties:
/// * [id] 
/// * [operator_] 
/// * [specialOpening] 
/// * [timeSlots] 
/// * [notes] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class OperatorSpecialOpeningList implements Built<OperatorSpecialOpeningList, OperatorSpecialOpeningListBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'operator')
  OperatorInfo get operator_;

  @BuiltValueField(wireName: r'special_opening')
  SpecialOpeningInfo get specialOpening;

  @BuiltValueField(wireName: r'time_slots')
  BuiltList<TimeSlotList> get timeSlots;

  @BuiltValueField(wireName: r'notes')
  String get notes;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  OperatorSpecialOpeningList._();

  factory OperatorSpecialOpeningList([void updates(OperatorSpecialOpeningListBuilder b)]) = _$OperatorSpecialOpeningList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperatorSpecialOpeningListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperatorSpecialOpeningList> get serializer => _$OperatorSpecialOpeningListSerializer();
}

class _$OperatorSpecialOpeningListSerializer implements PrimitiveSerializer<OperatorSpecialOpeningList> {
  @override
  final Iterable<Type> types = const [OperatorSpecialOpeningList, _$OperatorSpecialOpeningList];

  @override
  final String wireName = r'OperatorSpecialOpeningList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperatorSpecialOpeningList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'operator';
    yield serializers.serialize(
      object.operator_,
      specifiedType: const FullType(OperatorInfo),
    );
    yield r'special_opening';
    yield serializers.serialize(
      object.specialOpening,
      specifiedType: const FullType(SpecialOpeningInfo),
    );
    yield r'time_slots';
    yield serializers.serialize(
      object.timeSlots,
      specifiedType: const FullType(BuiltList, [FullType(TimeSlotList)]),
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
    yield r'updated_at';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OperatorSpecialOpeningList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperatorSpecialOpeningListBuilder result,
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
        case r'operator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OperatorInfo),
          ) as OperatorInfo;
          result.operator_.replace(valueDes);
          break;
        case r'special_opening':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SpecialOpeningInfo),
          ) as SpecialOpeningInfo;
          result.specialOpening.replace(valueDes);
          break;
        case r'time_slots':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TimeSlotList)]),
          ) as BuiltList<TimeSlotList>;
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
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OperatorSpecialOpeningList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperatorSpecialOpeningListBuilder();
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

