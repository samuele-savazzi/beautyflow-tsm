//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'holiday_time_slot_update.g.dart';

/// HolidayTimeSlotUpdate
///
/// Properties:
/// * [id] 
/// * [period] 
/// * [fromTime] 
/// * [toTime] 
/// * [isClosed] 
/// * [reason] 
@BuiltValue()
abstract class HolidayTimeSlotUpdate implements Built<HolidayTimeSlotUpdate, HolidayTimeSlotUpdateBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'period')
  String get period;

  @BuiltValueField(wireName: r'from_time')
  String get fromTime;

  @BuiltValueField(wireName: r'to_time')
  String get toTime;

  @BuiltValueField(wireName: r'is_closed')
  bool get isClosed;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  HolidayTimeSlotUpdate._();

  factory HolidayTimeSlotUpdate([void updates(HolidayTimeSlotUpdateBuilder b)]) = _$HolidayTimeSlotUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HolidayTimeSlotUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HolidayTimeSlotUpdate> get serializer => _$HolidayTimeSlotUpdateSerializer();
}

class _$HolidayTimeSlotUpdateSerializer implements PrimitiveSerializer<HolidayTimeSlotUpdate> {
  @override
  final Iterable<Type> types = const [HolidayTimeSlotUpdate, _$HolidayTimeSlotUpdate];

  @override
  final String wireName = r'HolidayTimeSlotUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HolidayTimeSlotUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    yield r'period';
    yield serializers.serialize(
      object.period,
      specifiedType: const FullType(String),
    );
    yield r'from_time';
    yield serializers.serialize(
      object.fromTime,
      specifiedType: const FullType(String),
    );
    yield r'to_time';
    yield serializers.serialize(
      object.toTime,
      specifiedType: const FullType(String),
    );
    yield r'is_closed';
    yield serializers.serialize(
      object.isClosed,
      specifiedType: const FullType(bool),
    );
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HolidayTimeSlotUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HolidayTimeSlotUpdateBuilder result,
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
        case r'period':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.period = valueDes;
          break;
        case r'from_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fromTime = valueDes;
          break;
        case r'to_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.toTime = valueDes;
          break;
        case r'is_closed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isClosed = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HolidayTimeSlotUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HolidayTimeSlotUpdateBuilder();
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

