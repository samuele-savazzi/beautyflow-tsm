//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'time_slot_update.g.dart';

/// TimeSlotUpdate
///
/// Properties:
/// * [id] 
/// * [period] 
/// * [isOpen] 
/// * [openingTime] 
/// * [closingTime] 
@BuiltValue()
abstract class TimeSlotUpdate implements Built<TimeSlotUpdate, TimeSlotUpdateBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'period')
  String get period;

  @BuiltValueField(wireName: r'is_open')
  bool get isOpen;

  @BuiltValueField(wireName: r'opening_time')
  String? get openingTime;

  @BuiltValueField(wireName: r'closing_time')
  String? get closingTime;

  TimeSlotUpdate._();

  factory TimeSlotUpdate([void updates(TimeSlotUpdateBuilder b)]) = _$TimeSlotUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimeSlotUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TimeSlotUpdate> get serializer => _$TimeSlotUpdateSerializer();
}

class _$TimeSlotUpdateSerializer implements PrimitiveSerializer<TimeSlotUpdate> {
  @override
  final Iterable<Type> types = const [TimeSlotUpdate, _$TimeSlotUpdate];

  @override
  final String wireName = r'TimeSlotUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimeSlotUpdate object, {
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
    yield r'is_open';
    yield serializers.serialize(
      object.isOpen,
      specifiedType: const FullType(bool),
    );
    if (object.openingTime != null) {
      yield r'opening_time';
      yield serializers.serialize(
        object.openingTime,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.closingTime != null) {
      yield r'closing_time';
      yield serializers.serialize(
        object.closingTime,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TimeSlotUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TimeSlotUpdateBuilder result,
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
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.openingTime = valueDes;
          break;
        case r'closing_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
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
  TimeSlotUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeSlotUpdateBuilder();
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

