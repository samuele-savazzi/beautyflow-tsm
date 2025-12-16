//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'time_slot_detail.g.dart';

/// TimeSlotDetail
///
/// Properties:
/// * [id] 
/// * [startTime] 
/// * [endTime] 
/// * [period] 
@BuiltValue()
abstract class TimeSlotDetail implements Built<TimeSlotDetail, TimeSlotDetailBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'start_time')
  String get startTime;

  @BuiltValueField(wireName: r'end_time')
  String get endTime;

  @BuiltValueField(wireName: r'period')
  String get period;

  TimeSlotDetail._();

  factory TimeSlotDetail([void updates(TimeSlotDetailBuilder b)]) = _$TimeSlotDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimeSlotDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TimeSlotDetail> get serializer => _$TimeSlotDetailSerializer();
}

class _$TimeSlotDetailSerializer implements PrimitiveSerializer<TimeSlotDetail> {
  @override
  final Iterable<Type> types = const [TimeSlotDetail, _$TimeSlotDetail];

  @override
  final String wireName = r'TimeSlotDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimeSlotDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'start_time';
    yield serializers.serialize(
      object.startTime,
      specifiedType: const FullType(String),
    );
    yield r'end_time';
    yield serializers.serialize(
      object.endTime,
      specifiedType: const FullType(String),
    );
    yield r'period';
    yield serializers.serialize(
      object.period,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TimeSlotDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TimeSlotDetailBuilder result,
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
        case r'start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.startTime = valueDes;
          break;
        case r'end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.endTime = valueDes;
          break;
        case r'period':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.period = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TimeSlotDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeSlotDetailBuilder();
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

