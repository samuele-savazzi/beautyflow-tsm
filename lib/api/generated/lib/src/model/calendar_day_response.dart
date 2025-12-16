//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/calendar_operator.dart';
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/calendar_workstation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'calendar_day_response.g.dart';

/// CalendarDayResponse
///
/// Properties:
/// * [success] - Request status
/// * [date] - Calendar date (YYYY-MM-DD)
/// * [operators] - Operators data with slots
/// * [workstations] - Workstations data with slots
@BuiltValue()
abstract class CalendarDayResponse implements Built<CalendarDayResponse, CalendarDayResponseBuilder> {
  /// Request status
  @BuiltValueField(wireName: r'success')
  bool get success;

  /// Calendar date (YYYY-MM-DD)
  @BuiltValueField(wireName: r'date')
  String get date;

  /// Operators data with slots
  @BuiltValueField(wireName: r'operators')
  BuiltList<CalendarOperator> get operators;

  /// Workstations data with slots
  @BuiltValueField(wireName: r'workstations')
  BuiltList<CalendarWorkstation> get workstations;

  CalendarDayResponse._();

  factory CalendarDayResponse([void updates(CalendarDayResponseBuilder b)]) = _$CalendarDayResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CalendarDayResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CalendarDayResponse> get serializer => _$CalendarDayResponseSerializer();
}

class _$CalendarDayResponseSerializer implements PrimitiveSerializer<CalendarDayResponse> {
  @override
  final Iterable<Type> types = const [CalendarDayResponse, _$CalendarDayResponse];

  @override
  final String wireName = r'CalendarDayResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CalendarDayResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(String),
    );
    yield r'operators';
    yield serializers.serialize(
      object.operators,
      specifiedType: const FullType(BuiltList, [FullType(CalendarOperator)]),
    );
    yield r'workstations';
    yield serializers.serialize(
      object.workstations,
      specifiedType: const FullType(BuiltList, [FullType(CalendarWorkstation)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CalendarDayResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CalendarDayResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.date = valueDes;
          break;
        case r'operators':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CalendarOperator)]),
          ) as BuiltList<CalendarOperator>;
          result.operators.replace(valueDes);
          break;
        case r'workstations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CalendarWorkstation)]),
          ) as BuiltList<CalendarWorkstation>;
          result.workstations.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CalendarDayResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CalendarDayResponseBuilder();
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

