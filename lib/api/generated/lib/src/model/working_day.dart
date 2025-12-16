//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/disabled_workstation.dart';
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/operator_day_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'working_day.g.dart';

/// WorkingDay
///
/// Properties:
/// * [date] 
/// * [dayOfWeek] 
/// * [dayName] 
/// * [areaStatus] 
/// * [morningOpen] 
/// * [afternoonOpen] 
/// * [operators] 
/// * [disabledWorkstations] 
@BuiltValue()
abstract class WorkingDay implements Built<WorkingDay, WorkingDayBuilder> {
  @BuiltValueField(wireName: r'date')
  String get date;

  @BuiltValueField(wireName: r'day_of_week')
  int get dayOfWeek;

  @BuiltValueField(wireName: r'day_name')
  String get dayName;

  @BuiltValueField(wireName: r'area_status')
  String get areaStatus;

  @BuiltValueField(wireName: r'morning_open')
  bool get morningOpen;

  @BuiltValueField(wireName: r'afternoon_open')
  bool get afternoonOpen;

  @BuiltValueField(wireName: r'operators')
  BuiltList<OperatorDayStatus> get operators;

  @BuiltValueField(wireName: r'disabled_workstations')
  BuiltList<DisabledWorkstation> get disabledWorkstations;

  WorkingDay._();

  factory WorkingDay([void updates(WorkingDayBuilder b)]) = _$WorkingDay;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkingDayBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkingDay> get serializer => _$WorkingDaySerializer();
}

class _$WorkingDaySerializer implements PrimitiveSerializer<WorkingDay> {
  @override
  final Iterable<Type> types = const [WorkingDay, _$WorkingDay];

  @override
  final String wireName = r'WorkingDay';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkingDay object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(String),
    );
    yield r'day_of_week';
    yield serializers.serialize(
      object.dayOfWeek,
      specifiedType: const FullType(int),
    );
    yield r'day_name';
    yield serializers.serialize(
      object.dayName,
      specifiedType: const FullType(String),
    );
    yield r'area_status';
    yield serializers.serialize(
      object.areaStatus,
      specifiedType: const FullType(String),
    );
    yield r'morning_open';
    yield serializers.serialize(
      object.morningOpen,
      specifiedType: const FullType(bool),
    );
    yield r'afternoon_open';
    yield serializers.serialize(
      object.afternoonOpen,
      specifiedType: const FullType(bool),
    );
    yield r'operators';
    yield serializers.serialize(
      object.operators,
      specifiedType: const FullType(BuiltList, [FullType(OperatorDayStatus)]),
    );
    yield r'disabled_workstations';
    yield serializers.serialize(
      object.disabledWorkstations,
      specifiedType: const FullType(BuiltList, [FullType(DisabledWorkstation)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WorkingDay object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WorkingDayBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.date = valueDes;
          break;
        case r'day_of_week':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dayOfWeek = valueDes;
          break;
        case r'day_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dayName = valueDes;
          break;
        case r'area_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.areaStatus = valueDes;
          break;
        case r'morning_open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.morningOpen = valueDes;
          break;
        case r'afternoon_open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.afternoonOpen = valueDes;
          break;
        case r'operators':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OperatorDayStatus)]),
          ) as BuiltList<OperatorDayStatus>;
          result.operators.replace(valueDes);
          break;
        case r'disabled_workstations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(DisabledWorkstation)]),
          ) as BuiltList<DisabledWorkstation>;
          result.disabledWorkstations.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WorkingDay deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkingDayBuilder();
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

