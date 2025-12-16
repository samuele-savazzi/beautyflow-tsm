//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:beautyflow_api/src/model/area_hours.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'daily_hours_response.g.dart';

/// DailyHoursResponse
///
/// Properties:
/// * [date] 
/// * [dayOfWeek] 
/// * [areas] 
@BuiltValue()
abstract class DailyHoursResponse implements Built<DailyHoursResponse, DailyHoursResponseBuilder> {
  @BuiltValueField(wireName: r'date')
  Date get date;

  @BuiltValueField(wireName: r'day_of_week')
  String get dayOfWeek;

  @BuiltValueField(wireName: r'areas')
  BuiltList<AreaHours> get areas;

  DailyHoursResponse._();

  factory DailyHoursResponse([void updates(DailyHoursResponseBuilder b)]) = _$DailyHoursResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DailyHoursResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DailyHoursResponse> get serializer => _$DailyHoursResponseSerializer();
}

class _$DailyHoursResponseSerializer implements PrimitiveSerializer<DailyHoursResponse> {
  @override
  final Iterable<Type> types = const [DailyHoursResponse, _$DailyHoursResponse];

  @override
  final String wireName = r'DailyHoursResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DailyHoursResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(Date),
    );
    yield r'day_of_week';
    yield serializers.serialize(
      object.dayOfWeek,
      specifiedType: const FullType(String),
    );
    yield r'areas';
    yield serializers.serialize(
      object.areas,
      specifiedType: const FullType(BuiltList, [FullType(AreaHours)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DailyHoursResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DailyHoursResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        case r'day_of_week':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dayOfWeek = valueDes;
          break;
        case r'areas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AreaHours)]),
          ) as BuiltList<AreaHours>;
          result.areas.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DailyHoursResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DailyHoursResponseBuilder();
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

