//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'holiday_time_slot_create.g.dart';

/// HolidayTimeSlotCreate
///
/// Properties:
/// * [period] 
/// * [fromTime] 
/// * [toTime] 
/// * [isClosed] 
/// * [reason] 
@BuiltValue()
abstract class HolidayTimeSlotCreate implements Built<HolidayTimeSlotCreate, HolidayTimeSlotCreateBuilder> {
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

  HolidayTimeSlotCreate._();

  factory HolidayTimeSlotCreate([void updates(HolidayTimeSlotCreateBuilder b)]) = _$HolidayTimeSlotCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HolidayTimeSlotCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HolidayTimeSlotCreate> get serializer => _$HolidayTimeSlotCreateSerializer();
}

class _$HolidayTimeSlotCreateSerializer implements PrimitiveSerializer<HolidayTimeSlotCreate> {
  @override
  final Iterable<Type> types = const [HolidayTimeSlotCreate, _$HolidayTimeSlotCreate];

  @override
  final String wireName = r'HolidayTimeSlotCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HolidayTimeSlotCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    HolidayTimeSlotCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HolidayTimeSlotCreateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  HolidayTimeSlotCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HolidayTimeSlotCreateBuilder();
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

