//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'special_closing_correction.g.dart';

/// Serializer per le correzioni di chiusure speciali.
///
/// Properties:
/// * [id] 
/// * [date] 
/// * [reason] 
/// * [ignore] 
/// * [isFullDay] 
/// * [morningClosed] 
/// * [morningPartial] 
/// * [morningFromTime] 
/// * [morningToTime] 
/// * [afternoonClosed] 
/// * [afternoonPartial] 
/// * [afternoonFromTime] 
/// * [afternoonToTime] 
/// * [previousMorningClosed] 
/// * [previousMorningPartial] 
/// * [previousMorningFromTime] 
/// * [previousMorningToTime] 
/// * [previousAfternoonClosed] 
/// * [previousAfternoonPartial] 
/// * [previousAfternoonFromTime] 
/// * [previousAfternoonToTime] 
@BuiltValue()
abstract class SpecialClosingCorrection implements Built<SpecialClosingCorrection, SpecialClosingCorrectionBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'date')
  Date get date;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  @BuiltValueField(wireName: r'ignore')
  bool get ignore;

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

  @BuiltValueField(wireName: r'previous_morning_closed')
  bool? get previousMorningClosed;

  @BuiltValueField(wireName: r'previous_morning_partial')
  bool? get previousMorningPartial;

  @BuiltValueField(wireName: r'previous_morning_from_time')
  String? get previousMorningFromTime;

  @BuiltValueField(wireName: r'previous_morning_to_time')
  String? get previousMorningToTime;

  @BuiltValueField(wireName: r'previous_afternoon_closed')
  bool? get previousAfternoonClosed;

  @BuiltValueField(wireName: r'previous_afternoon_partial')
  bool? get previousAfternoonPartial;

  @BuiltValueField(wireName: r'previous_afternoon_from_time')
  String? get previousAfternoonFromTime;

  @BuiltValueField(wireName: r'previous_afternoon_to_time')
  String? get previousAfternoonToTime;

  SpecialClosingCorrection._();

  factory SpecialClosingCorrection([void updates(SpecialClosingCorrectionBuilder b)]) = _$SpecialClosingCorrection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SpecialClosingCorrectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SpecialClosingCorrection> get serializer => _$SpecialClosingCorrectionSerializer();
}

class _$SpecialClosingCorrectionSerializer implements PrimitiveSerializer<SpecialClosingCorrection> {
  @override
  final Iterable<Type> types = const [SpecialClosingCorrection, _$SpecialClosingCorrection];

  @override
  final String wireName = r'SpecialClosingCorrection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SpecialClosingCorrection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
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
    yield r'ignore';
    yield serializers.serialize(
      object.ignore,
      specifiedType: const FullType(bool),
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
    yield r'morning_from_time';
    yield object.morningFromTime == null ? null : serializers.serialize(
      object.morningFromTime,
      specifiedType: const FullType.nullable(String),
    );
    yield r'morning_to_time';
    yield object.morningToTime == null ? null : serializers.serialize(
      object.morningToTime,
      specifiedType: const FullType.nullable(String),
    );
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
    yield r'afternoon_from_time';
    yield object.afternoonFromTime == null ? null : serializers.serialize(
      object.afternoonFromTime,
      specifiedType: const FullType.nullable(String),
    );
    yield r'afternoon_to_time';
    yield object.afternoonToTime == null ? null : serializers.serialize(
      object.afternoonToTime,
      specifiedType: const FullType.nullable(String),
    );
    yield r'previous_morning_closed';
    yield object.previousMorningClosed == null ? null : serializers.serialize(
      object.previousMorningClosed,
      specifiedType: const FullType.nullable(bool),
    );
    yield r'previous_morning_partial';
    yield object.previousMorningPartial == null ? null : serializers.serialize(
      object.previousMorningPartial,
      specifiedType: const FullType.nullable(bool),
    );
    yield r'previous_morning_from_time';
    yield object.previousMorningFromTime == null ? null : serializers.serialize(
      object.previousMorningFromTime,
      specifiedType: const FullType.nullable(String),
    );
    yield r'previous_morning_to_time';
    yield object.previousMorningToTime == null ? null : serializers.serialize(
      object.previousMorningToTime,
      specifiedType: const FullType.nullable(String),
    );
    yield r'previous_afternoon_closed';
    yield object.previousAfternoonClosed == null ? null : serializers.serialize(
      object.previousAfternoonClosed,
      specifiedType: const FullType.nullable(bool),
    );
    yield r'previous_afternoon_partial';
    yield object.previousAfternoonPartial == null ? null : serializers.serialize(
      object.previousAfternoonPartial,
      specifiedType: const FullType.nullable(bool),
    );
    yield r'previous_afternoon_from_time';
    yield object.previousAfternoonFromTime == null ? null : serializers.serialize(
      object.previousAfternoonFromTime,
      specifiedType: const FullType.nullable(String),
    );
    yield r'previous_afternoon_to_time';
    yield object.previousAfternoonToTime == null ? null : serializers.serialize(
      object.previousAfternoonToTime,
      specifiedType: const FullType.nullable(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SpecialClosingCorrection object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SpecialClosingCorrectionBuilder result,
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
        case r'ignore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ignore = valueDes;
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
        case r'previous_morning_closed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.previousMorningClosed = valueDes;
          break;
        case r'previous_morning_partial':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.previousMorningPartial = valueDes;
          break;
        case r'previous_morning_from_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.previousMorningFromTime = valueDes;
          break;
        case r'previous_morning_to_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.previousMorningToTime = valueDes;
          break;
        case r'previous_afternoon_closed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.previousAfternoonClosed = valueDes;
          break;
        case r'previous_afternoon_partial':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.previousAfternoonPartial = valueDes;
          break;
        case r'previous_afternoon_from_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.previousAfternoonFromTime = valueDes;
          break;
        case r'previous_afternoon_to_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.previousAfternoonToTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SpecialClosingCorrection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpecialClosingCorrectionBuilder();
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

