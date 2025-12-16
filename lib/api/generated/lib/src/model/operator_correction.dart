//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/operator_time_slot_correction.dart';
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operator_correction.g.dart';

/// Serializer per le correzioni degli operatori.
///
/// Properties:
/// * [id] 
/// * [operatorId] 
/// * [operatorName] 
/// * [effectiveFrom] 
/// * [isActive] 
/// * [notes] 
/// * [timeSlots] 
@BuiltValue()
abstract class OperatorCorrection implements Built<OperatorCorrection, OperatorCorrectionBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'operator_id')
  int get operatorId;

  @BuiltValueField(wireName: r'operator_name')
  String get operatorName;

  @BuiltValueField(wireName: r'effective_from')
  Date get effectiveFrom;

  @BuiltValueField(wireName: r'is_active')
  bool get isActive;

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  @BuiltValueField(wireName: r'time_slots')
  BuiltList<OperatorTimeSlotCorrection> get timeSlots;

  OperatorCorrection._();

  factory OperatorCorrection([void updates(OperatorCorrectionBuilder b)]) = _$OperatorCorrection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperatorCorrectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperatorCorrection> get serializer => _$OperatorCorrectionSerializer();
}

class _$OperatorCorrectionSerializer implements PrimitiveSerializer<OperatorCorrection> {
  @override
  final Iterable<Type> types = const [OperatorCorrection, _$OperatorCorrection];

  @override
  final String wireName = r'OperatorCorrection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperatorCorrection object, {
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
    yield r'operator_name';
    yield serializers.serialize(
      object.operatorName,
      specifiedType: const FullType(String),
    );
    yield r'effective_from';
    yield serializers.serialize(
      object.effectiveFrom,
      specifiedType: const FullType(Date),
    );
    yield r'is_active';
    yield serializers.serialize(
      object.isActive,
      specifiedType: const FullType(bool),
    );
    yield r'notes';
    yield object.notes == null ? null : serializers.serialize(
      object.notes,
      specifiedType: const FullType.nullable(String),
    );
    yield r'time_slots';
    yield serializers.serialize(
      object.timeSlots,
      specifiedType: const FullType(BuiltList, [FullType(OperatorTimeSlotCorrection)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OperatorCorrection object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperatorCorrectionBuilder result,
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
        case r'operator_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.operatorName = valueDes;
          break;
        case r'effective_from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.effectiveFrom = valueDes;
          break;
        case r'is_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.notes = valueDes;
          break;
        case r'time_slots':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OperatorTimeSlotCorrection)]),
          ) as BuiltList<OperatorTimeSlotCorrection>;
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
  OperatorCorrection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperatorCorrectionBuilder();
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

