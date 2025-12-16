//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/calendar_booking_slot.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'calendar_workstation.g.dart';

/// CalendarWorkstation
///
/// Properties:
/// * [id] - Workstation ID
/// * [name] - Workstation name
/// * [slots] - List of workstation booking slots
@BuiltValue()
abstract class CalendarWorkstation implements Built<CalendarWorkstation, CalendarWorkstationBuilder> {
  /// Workstation ID
  @BuiltValueField(wireName: r'id')
  int get id;

  /// Workstation name
  @BuiltValueField(wireName: r'name')
  String get name;

  /// List of workstation booking slots
  @BuiltValueField(wireName: r'slots')
  BuiltList<CalendarBookingSlot> get slots;

  CalendarWorkstation._();

  factory CalendarWorkstation([void updates(CalendarWorkstationBuilder b)]) = _$CalendarWorkstation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CalendarWorkstationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CalendarWorkstation> get serializer => _$CalendarWorkstationSerializer();
}

class _$CalendarWorkstationSerializer implements PrimitiveSerializer<CalendarWorkstation> {
  @override
  final Iterable<Type> types = const [CalendarWorkstation, _$CalendarWorkstation];

  @override
  final String wireName = r'CalendarWorkstation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CalendarWorkstation object, {
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
    yield r'slots';
    yield serializers.serialize(
      object.slots,
      specifiedType: const FullType(BuiltList, [FullType(CalendarBookingSlot)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CalendarWorkstation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CalendarWorkstationBuilder result,
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
        case r'slots':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CalendarBookingSlot)]),
          ) as BuiltList<CalendarBookingSlot>;
          result.slots.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CalendarWorkstation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CalendarWorkstationBuilder();
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

