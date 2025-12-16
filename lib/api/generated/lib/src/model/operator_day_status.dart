//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operator_day_status.g.dart';

/// OperatorDayStatus
///
/// Properties:
/// * [operatorId] 
/// * [operatorName] 
/// * [operatorType] - Tipo operatore: \"operator\" o \"operator_authorized\"
/// * [morningAvailable] 
/// * [afternoonAvailable] 
/// * [morningStartTime] 
/// * [morningEndTime] 
/// * [afternoonStartTime] 
/// * [afternoonEndTime] 
/// * [status] 
/// * [reason] 
@BuiltValue()
abstract class OperatorDayStatus implements Built<OperatorDayStatus, OperatorDayStatusBuilder> {
  @BuiltValueField(wireName: r'operator_id')
  int get operatorId;

  @BuiltValueField(wireName: r'operator_name')
  String get operatorName;

  /// Tipo operatore: \"operator\" o \"operator_authorized\"
  @BuiltValueField(wireName: r'operator_type')
  String get operatorType;

  @BuiltValueField(wireName: r'morning_available')
  bool get morningAvailable;

  @BuiltValueField(wireName: r'afternoon_available')
  bool get afternoonAvailable;

  @BuiltValueField(wireName: r'morning_start_time')
  String get morningStartTime;

  @BuiltValueField(wireName: r'morning_end_time')
  String get morningEndTime;

  @BuiltValueField(wireName: r'afternoon_start_time')
  String get afternoonStartTime;

  @BuiltValueField(wireName: r'afternoon_end_time')
  String get afternoonEndTime;

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  OperatorDayStatus._();

  factory OperatorDayStatus([void updates(OperatorDayStatusBuilder b)]) = _$OperatorDayStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperatorDayStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperatorDayStatus> get serializer => _$OperatorDayStatusSerializer();
}

class _$OperatorDayStatusSerializer implements PrimitiveSerializer<OperatorDayStatus> {
  @override
  final Iterable<Type> types = const [OperatorDayStatus, _$OperatorDayStatus];

  @override
  final String wireName = r'OperatorDayStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperatorDayStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'operator_id';
    yield serializers.serialize(
      object.operatorId,
      specifiedType: const FullType(int),
    );
    yield r'operator_name';
    yield serializers.serialize(
      object.operatorName,
      specifiedType: const FullType(String),
    );
    yield r'operator_type';
    yield serializers.serialize(
      object.operatorType,
      specifiedType: const FullType(String),
    );
    yield r'morning_available';
    yield serializers.serialize(
      object.morningAvailable,
      specifiedType: const FullType(bool),
    );
    yield r'afternoon_available';
    yield serializers.serialize(
      object.afternoonAvailable,
      specifiedType: const FullType(bool),
    );
    yield r'morning_start_time';
    yield serializers.serialize(
      object.morningStartTime,
      specifiedType: const FullType(String),
    );
    yield r'morning_end_time';
    yield serializers.serialize(
      object.morningEndTime,
      specifiedType: const FullType(String),
    );
    yield r'afternoon_start_time';
    yield serializers.serialize(
      object.afternoonStartTime,
      specifiedType: const FullType(String),
    );
    yield r'afternoon_end_time';
    yield serializers.serialize(
      object.afternoonEndTime,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OperatorDayStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperatorDayStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'operator_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.operatorId = valueDes;
          break;
        case r'operator_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.operatorName = valueDes;
          break;
        case r'operator_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.operatorType = valueDes;
          break;
        case r'morning_available':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.morningAvailable = valueDes;
          break;
        case r'afternoon_available':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.afternoonAvailable = valueDes;
          break;
        case r'morning_start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.morningStartTime = valueDes;
          break;
        case r'morning_end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.morningEndTime = valueDes;
          break;
        case r'afternoon_start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.afternoonStartTime = valueDes;
          break;
        case r'afternoon_end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.afternoonEndTime = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  OperatorDayStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperatorDayStatusBuilder();
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

