//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/special_opening_correction.dart';
import 'package:beautyflow_api/src/model/operator_correction.dart';
import 'package:beautyflow_api/src/model/work_station_disability_correction.dart';
import 'package:beautyflow_api/src/model/special_closing_correction.dart';
import 'package:beautyflow_api/src/model/operator_disability_correction.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'corrections_applied.g.dart';

/// Serializer per tutte le correzioni applicate.
///
/// Properties:
/// * [specialOpenings] 
/// * [specialClosings] 
/// * [operators] 
/// * [operatorDisabilities] 
/// * [workstationDisabilities] 
@BuiltValue()
abstract class CorrectionsApplied implements Built<CorrectionsApplied, CorrectionsAppliedBuilder> {
  @BuiltValueField(wireName: r'special_openings')
  BuiltList<SpecialOpeningCorrection> get specialOpenings;

  @BuiltValueField(wireName: r'special_closings')
  BuiltList<SpecialClosingCorrection> get specialClosings;

  @BuiltValueField(wireName: r'operators')
  BuiltList<OperatorCorrection> get operators;

  @BuiltValueField(wireName: r'operator_disabilities')
  BuiltList<OperatorDisabilityCorrection> get operatorDisabilities;

  @BuiltValueField(wireName: r'workstation_disabilities')
  BuiltList<WorkStationDisabilityCorrection> get workstationDisabilities;

  CorrectionsApplied._();

  factory CorrectionsApplied([void updates(CorrectionsAppliedBuilder b)]) = _$CorrectionsApplied;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorrectionsAppliedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorrectionsApplied> get serializer => _$CorrectionsAppliedSerializer();
}

class _$CorrectionsAppliedSerializer implements PrimitiveSerializer<CorrectionsApplied> {
  @override
  final Iterable<Type> types = const [CorrectionsApplied, _$CorrectionsApplied];

  @override
  final String wireName = r'CorrectionsApplied';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorrectionsApplied object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'special_openings';
    yield serializers.serialize(
      object.specialOpenings,
      specifiedType: const FullType(BuiltList, [FullType(SpecialOpeningCorrection)]),
    );
    yield r'special_closings';
    yield serializers.serialize(
      object.specialClosings,
      specifiedType: const FullType(BuiltList, [FullType(SpecialClosingCorrection)]),
    );
    yield r'operators';
    yield serializers.serialize(
      object.operators,
      specifiedType: const FullType(BuiltList, [FullType(OperatorCorrection)]),
    );
    yield r'operator_disabilities';
    yield serializers.serialize(
      object.operatorDisabilities,
      specifiedType: const FullType(BuiltList, [FullType(OperatorDisabilityCorrection)]),
    );
    yield r'workstation_disabilities';
    yield serializers.serialize(
      object.workstationDisabilities,
      specifiedType: const FullType(BuiltList, [FullType(WorkStationDisabilityCorrection)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CorrectionsApplied object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CorrectionsAppliedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'special_openings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SpecialOpeningCorrection)]),
          ) as BuiltList<SpecialOpeningCorrection>;
          result.specialOpenings.replace(valueDes);
          break;
        case r'special_closings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SpecialClosingCorrection)]),
          ) as BuiltList<SpecialClosingCorrection>;
          result.specialClosings.replace(valueDes);
          break;
        case r'operators':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OperatorCorrection)]),
          ) as BuiltList<OperatorCorrection>;
          result.operators.replace(valueDes);
          break;
        case r'operator_disabilities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OperatorDisabilityCorrection)]),
          ) as BuiltList<OperatorDisabilityCorrection>;
          result.operatorDisabilities.replace(valueDes);
          break;
        case r'workstation_disabilities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(WorkStationDisabilityCorrection)]),
          ) as BuiltList<WorkStationDisabilityCorrection>;
          result.workstationDisabilities.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorrectionsApplied deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorrectionsAppliedBuilder();
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

