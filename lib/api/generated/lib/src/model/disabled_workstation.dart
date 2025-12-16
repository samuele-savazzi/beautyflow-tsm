//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'disabled_workstation.g.dart';

/// DisabledWorkstation
///
/// Properties:
/// * [workstationId] 
/// * [workstationName] 
/// * [workstationType] 
/// * [reason] 
/// * [morningDisabled] 
/// * [afternoonDisabled] 
/// * [disabledMorningStart] 
/// * [disabledMorningEnd] 
/// * [disabledAfternoonStart] 
/// * [disabledAfternoonEnd] 
@BuiltValue()
abstract class DisabledWorkstation implements Built<DisabledWorkstation, DisabledWorkstationBuilder> {
  @BuiltValueField(wireName: r'workstation_id')
  int get workstationId;

  @BuiltValueField(wireName: r'workstation_name')
  String get workstationName;

  @BuiltValueField(wireName: r'workstation_type')
  String get workstationType;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  @BuiltValueField(wireName: r'morning_disabled')
  bool get morningDisabled;

  @BuiltValueField(wireName: r'afternoon_disabled')
  bool get afternoonDisabled;

  @BuiltValueField(wireName: r'disabled_morning_start')
  String get disabledMorningStart;

  @BuiltValueField(wireName: r'disabled_morning_end')
  String get disabledMorningEnd;

  @BuiltValueField(wireName: r'disabled_afternoon_start')
  String get disabledAfternoonStart;

  @BuiltValueField(wireName: r'disabled_afternoon_end')
  String get disabledAfternoonEnd;

  DisabledWorkstation._();

  factory DisabledWorkstation([void updates(DisabledWorkstationBuilder b)]) = _$DisabledWorkstation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DisabledWorkstationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DisabledWorkstation> get serializer => _$DisabledWorkstationSerializer();
}

class _$DisabledWorkstationSerializer implements PrimitiveSerializer<DisabledWorkstation> {
  @override
  final Iterable<Type> types = const [DisabledWorkstation, _$DisabledWorkstation];

  @override
  final String wireName = r'DisabledWorkstation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DisabledWorkstation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'workstation_id';
    yield serializers.serialize(
      object.workstationId,
      specifiedType: const FullType(int),
    );
    yield r'workstation_name';
    yield serializers.serialize(
      object.workstationName,
      specifiedType: const FullType(String),
    );
    yield r'workstation_type';
    yield serializers.serialize(
      object.workstationType,
      specifiedType: const FullType(String),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
    yield r'morning_disabled';
    yield serializers.serialize(
      object.morningDisabled,
      specifiedType: const FullType(bool),
    );
    yield r'afternoon_disabled';
    yield serializers.serialize(
      object.afternoonDisabled,
      specifiedType: const FullType(bool),
    );
    yield r'disabled_morning_start';
    yield serializers.serialize(
      object.disabledMorningStart,
      specifiedType: const FullType(String),
    );
    yield r'disabled_morning_end';
    yield serializers.serialize(
      object.disabledMorningEnd,
      specifiedType: const FullType(String),
    );
    yield r'disabled_afternoon_start';
    yield serializers.serialize(
      object.disabledAfternoonStart,
      specifiedType: const FullType(String),
    );
    yield r'disabled_afternoon_end';
    yield serializers.serialize(
      object.disabledAfternoonEnd,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DisabledWorkstation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DisabledWorkstationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'workstation_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.workstationId = valueDes;
          break;
        case r'workstation_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.workstationName = valueDes;
          break;
        case r'workstation_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.workstationType = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'morning_disabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.morningDisabled = valueDes;
          break;
        case r'afternoon_disabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.afternoonDisabled = valueDes;
          break;
        case r'disabled_morning_start':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.disabledMorningStart = valueDes;
          break;
        case r'disabled_morning_end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.disabledMorningEnd = valueDes;
          break;
        case r'disabled_afternoon_start':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.disabledAfternoonStart = valueDes;
          break;
        case r'disabled_afternoon_end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.disabledAfternoonEnd = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DisabledWorkstation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisabledWorkstationBuilder();
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

