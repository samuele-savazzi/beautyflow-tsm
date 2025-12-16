//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/afternoon_hours.dart';
import 'package:beautyflow_api/src/model/morning_hours.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'area_hours.g.dart';

/// AreaHours
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [isOpen] 
/// * [hasDailySchedule] 
/// * [reasonStatus] 
/// * [morning] 
/// * [afternoon] 
/// * [notes] 
/// * [hasHoliday] 
/// * [hasSpecialClosing] 
/// * [hasSpecialOpening] 
@BuiltValue()
abstract class AreaHours implements Built<AreaHours, AreaHoursBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'is_open')
  bool get isOpen;

  @BuiltValueField(wireName: r'has_daily_schedule')
  bool get hasDailySchedule;

  @BuiltValueField(wireName: r'reason_status')
  String get reasonStatus;

  @BuiltValueField(wireName: r'morning')
  MorningHours get morning;

  @BuiltValueField(wireName: r'afternoon')
  AfternoonHours get afternoon;

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  @BuiltValueField(wireName: r'has_holiday')
  bool get hasHoliday;

  @BuiltValueField(wireName: r'has_special_closing')
  bool get hasSpecialClosing;

  @BuiltValueField(wireName: r'has_special_opening')
  bool get hasSpecialOpening;

  AreaHours._();

  factory AreaHours([void updates(AreaHoursBuilder b)]) = _$AreaHours;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AreaHoursBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AreaHours> get serializer => _$AreaHoursSerializer();
}

class _$AreaHoursSerializer implements PrimitiveSerializer<AreaHours> {
  @override
  final Iterable<Type> types = const [AreaHours, _$AreaHours];

  @override
  final String wireName = r'AreaHours';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AreaHours object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'is_open';
    yield serializers.serialize(
      object.isOpen,
      specifiedType: const FullType(bool),
    );
    yield r'has_daily_schedule';
    yield serializers.serialize(
      object.hasDailySchedule,
      specifiedType: const FullType(bool),
    );
    yield r'reason_status';
    yield serializers.serialize(
      object.reasonStatus,
      specifiedType: const FullType(String),
    );
    yield r'morning';
    yield serializers.serialize(
      object.morning,
      specifiedType: const FullType(MorningHours),
    );
    yield r'afternoon';
    yield serializers.serialize(
      object.afternoon,
      specifiedType: const FullType(AfternoonHours),
    );
    yield r'notes';
    yield object.notes == null ? null : serializers.serialize(
      object.notes,
      specifiedType: const FullType.nullable(String),
    );
    yield r'has_holiday';
    yield serializers.serialize(
      object.hasHoliday,
      specifiedType: const FullType(bool),
    );
    yield r'has_special_closing';
    yield serializers.serialize(
      object.hasSpecialClosing,
      specifiedType: const FullType(bool),
    );
    yield r'has_special_opening';
    yield serializers.serialize(
      object.hasSpecialOpening,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AreaHours object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AreaHoursBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'is_open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isOpen = valueDes;
          break;
        case r'has_daily_schedule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasDailySchedule = valueDes;
          break;
        case r'reason_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reasonStatus = valueDes;
          break;
        case r'morning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MorningHours),
          ) as MorningHours;
          result.morning.replace(valueDes);
          break;
        case r'afternoon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AfternoonHours),
          ) as AfternoonHours;
          result.afternoon.replace(valueDes);
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.notes = valueDes;
          break;
        case r'has_holiday':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasHoliday = valueDes;
          break;
        case r'has_special_closing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasSpecialClosing = valueDes;
          break;
        case r'has_special_opening':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasSpecialOpening = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AreaHours deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AreaHoursBuilder();
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

