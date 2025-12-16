//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/operator_time_slot_detail.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operator_assignment_detail.g.dart';

/// Serializer dettagliato per gli operatori associati all'apertura speciale.
///
/// Properties:
/// * [operatorId] 
/// * [firstName] 
/// * [lastName] 
/// * [fullName] 
/// * [avatar] 
/// * [notes] 
/// * [ignoreMorning] 
/// * [ignoreAfternoon] 
/// * [timeSlots] 
@BuiltValue()
abstract class OperatorAssignmentDetail implements Built<OperatorAssignmentDetail, OperatorAssignmentDetailBuilder> {
  @BuiltValueField(wireName: r'operator_id')
  int get operatorId;

  @BuiltValueField(wireName: r'first_name')
  String get firstName;

  @BuiltValueField(wireName: r'last_name')
  String get lastName;

  @BuiltValueField(wireName: r'full_name')
  String get fullName;

  @BuiltValueField(wireName: r'avatar')
  String? get avatar;

  @BuiltValueField(wireName: r'notes')
  String get notes;

  @BuiltValueField(wireName: r'ignore_morning')
  bool get ignoreMorning;

  @BuiltValueField(wireName: r'ignore_afternoon')
  bool get ignoreAfternoon;

  @BuiltValueField(wireName: r'time_slots')
  BuiltList<OperatorTimeSlotDetail> get timeSlots;

  OperatorAssignmentDetail._();

  factory OperatorAssignmentDetail([void updates(OperatorAssignmentDetailBuilder b)]) = _$OperatorAssignmentDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperatorAssignmentDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperatorAssignmentDetail> get serializer => _$OperatorAssignmentDetailSerializer();
}

class _$OperatorAssignmentDetailSerializer implements PrimitiveSerializer<OperatorAssignmentDetail> {
  @override
  final Iterable<Type> types = const [OperatorAssignmentDetail, _$OperatorAssignmentDetail];

  @override
  final String wireName = r'OperatorAssignmentDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperatorAssignmentDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'operator_id';
    yield serializers.serialize(
      object.operatorId,
      specifiedType: const FullType(int),
    );
    yield r'first_name';
    yield serializers.serialize(
      object.firstName,
      specifiedType: const FullType(String),
    );
    yield r'last_name';
    yield serializers.serialize(
      object.lastName,
      specifiedType: const FullType(String),
    );
    yield r'full_name';
    yield serializers.serialize(
      object.fullName,
      specifiedType: const FullType(String),
    );
    yield r'avatar';
    yield object.avatar == null ? null : serializers.serialize(
      object.avatar,
      specifiedType: const FullType.nullable(String),
    );
    yield r'notes';
    yield serializers.serialize(
      object.notes,
      specifiedType: const FullType(String),
    );
    yield r'ignore_morning';
    yield serializers.serialize(
      object.ignoreMorning,
      specifiedType: const FullType(bool),
    );
    yield r'ignore_afternoon';
    yield serializers.serialize(
      object.ignoreAfternoon,
      specifiedType: const FullType(bool),
    );
    yield r'time_slots';
    yield serializers.serialize(
      object.timeSlots,
      specifiedType: const FullType(BuiltList, [FullType(OperatorTimeSlotDetail)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OperatorAssignmentDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperatorAssignmentDetailBuilder result,
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
        case r'first_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.firstName = valueDes;
          break;
        case r'last_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastName = valueDes;
          break;
        case r'full_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fullName = valueDes;
          break;
        case r'avatar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.avatar = valueDes;
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.notes = valueDes;
          break;
        case r'ignore_morning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ignoreMorning = valueDes;
          break;
        case r'ignore_afternoon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ignoreAfternoon = valueDes;
          break;
        case r'time_slots':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OperatorTimeSlotDetail)]),
          ) as BuiltList<OperatorTimeSlotDetail>;
          result.timeSlots.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OperatorAssignmentDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperatorAssignmentDetailBuilder();
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

