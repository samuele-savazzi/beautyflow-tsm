//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'timeslotsschedule.g.dart';

/// Timeslotsschedule
///
/// Properties:
/// * [id] 
/// * [period] 
/// * [periodDisplay] 
/// * [isOpen] 
/// * [openingTime] 
/// * [closingTime] 
@BuiltValue()
abstract class Timeslotsschedule implements Built<Timeslotsschedule, TimeslotsscheduleBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'period')
  String get period;

  @BuiltValueField(wireName: r'period_display')
  String get periodDisplay;

  @BuiltValueField(wireName: r'is_open')
  bool get isOpen;

  @BuiltValueField(wireName: r'opening_time')
  String get openingTime;

  @BuiltValueField(wireName: r'closing_time')
  String get closingTime;

  Timeslotsschedule._();

  factory Timeslotsschedule([void updates(TimeslotsscheduleBuilder b)]) = _$Timeslotsschedule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimeslotsscheduleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Timeslotsschedule> get serializer => _$TimeslotsscheduleSerializer();
}

class _$TimeslotsscheduleSerializer implements PrimitiveSerializer<Timeslotsschedule> {
  @override
  final Iterable<Type> types = const [Timeslotsschedule, _$Timeslotsschedule];

  @override
  final String wireName = r'Timeslotsschedule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Timeslotsschedule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'period';
    yield serializers.serialize(
      object.period,
      specifiedType: const FullType(String),
    );
    yield r'period_display';
    yield serializers.serialize(
      object.periodDisplay,
      specifiedType: const FullType(String),
    );
    yield r'is_open';
    yield serializers.serialize(
      object.isOpen,
      specifiedType: const FullType(bool),
    );
    yield r'opening_time';
    yield serializers.serialize(
      object.openingTime,
      specifiedType: const FullType(String),
    );
    yield r'closing_time';
    yield serializers.serialize(
      object.closingTime,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Timeslotsschedule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TimeslotsscheduleBuilder result,
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
        case r'period_display':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.periodDisplay = valueDes;
          break;
        case r'is_open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isOpen = valueDes;
          break;
        case r'opening_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.openingTime = valueDes;
          break;
        case r'closing_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.closingTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Timeslotsschedule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeslotsscheduleBuilder();
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

