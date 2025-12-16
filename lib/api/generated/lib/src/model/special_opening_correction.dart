//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'special_opening_correction.g.dart';

/// Serializer per le correzioni di aperture speciali.
///
/// Properties:
/// * [id] 
/// * [date] 
/// * [reason] 
/// * [ignore] 
/// * [morningOpen] 
/// * [morningOpeningTime] 
/// * [morningClosingTime] 
/// * [afternoonOpen] 
/// * [afternoonOpeningTime] 
/// * [afternoonClosingTime] 
@BuiltValue()
abstract class SpecialOpeningCorrection implements Built<SpecialOpeningCorrection, SpecialOpeningCorrectionBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'date')
  Date get date;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  @BuiltValueField(wireName: r'ignore')
  bool get ignore;

  @BuiltValueField(wireName: r'morning_open')
  bool get morningOpen;

  @BuiltValueField(wireName: r'morning_opening_time')
  String? get morningOpeningTime;

  @BuiltValueField(wireName: r'morning_closing_time')
  String? get morningClosingTime;

  @BuiltValueField(wireName: r'afternoon_open')
  bool get afternoonOpen;

  @BuiltValueField(wireName: r'afternoon_opening_time')
  String? get afternoonOpeningTime;

  @BuiltValueField(wireName: r'afternoon_closing_time')
  String? get afternoonClosingTime;

  SpecialOpeningCorrection._();

  factory SpecialOpeningCorrection([void updates(SpecialOpeningCorrectionBuilder b)]) = _$SpecialOpeningCorrection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SpecialOpeningCorrectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SpecialOpeningCorrection> get serializer => _$SpecialOpeningCorrectionSerializer();
}

class _$SpecialOpeningCorrectionSerializer implements PrimitiveSerializer<SpecialOpeningCorrection> {
  @override
  final Iterable<Type> types = const [SpecialOpeningCorrection, _$SpecialOpeningCorrection];

  @override
  final String wireName = r'SpecialOpeningCorrection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SpecialOpeningCorrection object, {
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
    yield r'morning_open';
    yield serializers.serialize(
      object.morningOpen,
      specifiedType: const FullType(bool),
    );
    yield r'morning_opening_time';
    yield object.morningOpeningTime == null ? null : serializers.serialize(
      object.morningOpeningTime,
      specifiedType: const FullType.nullable(String),
    );
    yield r'morning_closing_time';
    yield object.morningClosingTime == null ? null : serializers.serialize(
      object.morningClosingTime,
      specifiedType: const FullType.nullable(String),
    );
    yield r'afternoon_open';
    yield serializers.serialize(
      object.afternoonOpen,
      specifiedType: const FullType(bool),
    );
    yield r'afternoon_opening_time';
    yield object.afternoonOpeningTime == null ? null : serializers.serialize(
      object.afternoonOpeningTime,
      specifiedType: const FullType.nullable(String),
    );
    yield r'afternoon_closing_time';
    yield object.afternoonClosingTime == null ? null : serializers.serialize(
      object.afternoonClosingTime,
      specifiedType: const FullType.nullable(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SpecialOpeningCorrection object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SpecialOpeningCorrectionBuilder result,
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
        case r'morning_open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.morningOpen = valueDes;
          break;
        case r'morning_opening_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.morningOpeningTime = valueDes;
          break;
        case r'morning_closing_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.morningClosingTime = valueDes;
          break;
        case r'afternoon_open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.afternoonOpen = valueDes;
          break;
        case r'afternoon_opening_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.afternoonOpeningTime = valueDes;
          break;
        case r'afternoon_closing_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.afternoonClosingTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SpecialOpeningCorrection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpecialOpeningCorrectionBuilder();
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

