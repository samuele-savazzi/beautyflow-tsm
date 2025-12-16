//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/working_day_create.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operator_area_working_day.g.dart';

/// OperatorAreaWorkingDay
///
/// Properties:
/// * [areaId] 
/// * [days] 
@BuiltValue()
abstract class OperatorAreaWorkingDay implements Built<OperatorAreaWorkingDay, OperatorAreaWorkingDayBuilder> {
  @BuiltValueField(wireName: r'area_id')
  int get areaId;

  @BuiltValueField(wireName: r'days')
  BuiltList<WorkingDayCreate> get days;

  OperatorAreaWorkingDay._();

  factory OperatorAreaWorkingDay([void updates(OperatorAreaWorkingDayBuilder b)]) = _$OperatorAreaWorkingDay;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperatorAreaWorkingDayBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperatorAreaWorkingDay> get serializer => _$OperatorAreaWorkingDaySerializer();
}

class _$OperatorAreaWorkingDaySerializer implements PrimitiveSerializer<OperatorAreaWorkingDay> {
  @override
  final Iterable<Type> types = const [OperatorAreaWorkingDay, _$OperatorAreaWorkingDay];

  @override
  final String wireName = r'OperatorAreaWorkingDay';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperatorAreaWorkingDay object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'area_id';
    yield serializers.serialize(
      object.areaId,
      specifiedType: const FullType(int),
    );
    yield r'days';
    yield serializers.serialize(
      object.days,
      specifiedType: const FullType(BuiltList, [FullType(WorkingDayCreate)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OperatorAreaWorkingDay object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperatorAreaWorkingDayBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'area_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.areaId = valueDes;
          break;
        case r'days':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(WorkingDayCreate)]),
          ) as BuiltList<WorkingDayCreate>;
          result.days.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OperatorAreaWorkingDay deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperatorAreaWorkingDayBuilder();
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

