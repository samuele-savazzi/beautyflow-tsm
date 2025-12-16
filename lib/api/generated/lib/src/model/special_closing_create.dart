//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'special_closing_create.g.dart';

/// SpecialClosingCreate
///
/// Properties:
/// * [areaId] 
/// * [date] 
/// * [reason] 
/// * [isFullDay] 
/// * [morningClosed] 
/// * [morningPartial] 
/// * [morningFromTime] 
/// * [morningToTime] 
/// * [afternoonClosed] 
/// * [afternoonPartial] 
/// * [afternoonFromTime] 
/// * [afternoonToTime] 
@BuiltValue()
abstract class SpecialClosingCreate implements Built<SpecialClosingCreate, SpecialClosingCreateBuilder> {
  @BuiltValueField(wireName: r'area_id')
  int get areaId;

  @BuiltValueField(wireName: r'date')
  Date get date;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  @BuiltValueField(wireName: r'is_full_day')
  bool get isFullDay;

  @BuiltValueField(wireName: r'morning_closed')
  bool get morningClosed;

  @BuiltValueField(wireName: r'morning_partial')
  bool get morningPartial;

  @BuiltValueField(wireName: r'morning_from_time')
  String? get morningFromTime;

  @BuiltValueField(wireName: r'morning_to_time')
  String? get morningToTime;

  @BuiltValueField(wireName: r'afternoon_closed')
  bool get afternoonClosed;

  @BuiltValueField(wireName: r'afternoon_partial')
  bool get afternoonPartial;

  @BuiltValueField(wireName: r'afternoon_from_time')
  String? get afternoonFromTime;

  @BuiltValueField(wireName: r'afternoon_to_time')
  String? get afternoonToTime;

  SpecialClosingCreate._();

  factory SpecialClosingCreate([void updates(SpecialClosingCreateBuilder b)]) = _$SpecialClosingCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SpecialClosingCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SpecialClosingCreate> get serializer => _$SpecialClosingCreateSerializer();
}

class _$SpecialClosingCreateSerializer implements PrimitiveSerializer<SpecialClosingCreate> {
  @override
  final Iterable<Type> types = const [SpecialClosingCreate, _$SpecialClosingCreate];

  @override
  final String wireName = r'SpecialClosingCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SpecialClosingCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'area_id';
    yield serializers.serialize(
      object.areaId,
      specifiedType: const FullType(int),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(Date),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
    yield r'is_full_day';
    yield serializers.serialize(
      object.isFullDay,
      specifiedType: const FullType(bool),
    );
    yield r'morning_closed';
    yield serializers.serialize(
      object.morningClosed,
      specifiedType: const FullType(bool),
    );
    yield r'morning_partial';
    yield serializers.serialize(
      object.morningPartial,
      specifiedType: const FullType(bool),
    );
    if (object.morningFromTime != null) {
      yield r'morning_from_time';
      yield serializers.serialize(
        object.morningFromTime,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.morningToTime != null) {
      yield r'morning_to_time';
      yield serializers.serialize(
        object.morningToTime,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'afternoon_closed';
    yield serializers.serialize(
      object.afternoonClosed,
      specifiedType: const FullType(bool),
    );
    yield r'afternoon_partial';
    yield serializers.serialize(
      object.afternoonPartial,
      specifiedType: const FullType(bool),
    );
    if (object.afternoonFromTime != null) {
      yield r'afternoon_from_time';
      yield serializers.serialize(
        object.afternoonFromTime,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.afternoonToTime != null) {
      yield r'afternoon_to_time';
      yield serializers.serialize(
        object.afternoonToTime,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SpecialClosingCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SpecialClosingCreateBuilder result,
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
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'is_full_day':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isFullDay = valueDes;
          break;
        case r'morning_closed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.morningClosed = valueDes;
          break;
        case r'morning_partial':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.morningPartial = valueDes;
          break;
        case r'morning_from_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.morningFromTime = valueDes;
          break;
        case r'morning_to_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.morningToTime = valueDes;
          break;
        case r'afternoon_closed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.afternoonClosed = valueDes;
          break;
        case r'afternoon_partial':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.afternoonPartial = valueDes;
          break;
        case r'afternoon_from_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.afternoonFromTime = valueDes;
          break;
        case r'afternoon_to_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.afternoonToTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SpecialClosingCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpecialClosingCreateBuilder();
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

