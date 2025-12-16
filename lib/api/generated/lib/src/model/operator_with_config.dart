//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operator_with_config.g.dart';

/// Serializer per operatori con le loro configurazioni attuali.
///
/// Properties:
/// * [id] 
/// * [firstName] 
/// * [lastName] 
/// * [fullName] 
/// * [avatar] 
/// * [morningWorking] 
/// * [morningStartTime] 
/// * [morningEndTime] 
/// * [afternoonWorking] 
/// * [afternoonStartTime] 
/// * [afternoonEndTime] 
/// * [ignoreMorning] 
/// * [ignoreAfternoon] 
/// * [notes] 
@BuiltValue()
abstract class OperatorWithConfig implements Built<OperatorWithConfig, OperatorWithConfigBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'first_name')
  String get firstName;

  @BuiltValueField(wireName: r'last_name')
  String get lastName;

  @BuiltValueField(wireName: r'full_name')
  String get fullName;

  @BuiltValueField(wireName: r'avatar')
  String? get avatar;

  @BuiltValueField(wireName: r'morning_working')
  bool get morningWorking;

  @BuiltValueField(wireName: r'morning_start_time')
  String? get morningStartTime;

  @BuiltValueField(wireName: r'morning_end_time')
  String? get morningEndTime;

  @BuiltValueField(wireName: r'afternoon_working')
  bool get afternoonWorking;

  @BuiltValueField(wireName: r'afternoon_start_time')
  String? get afternoonStartTime;

  @BuiltValueField(wireName: r'afternoon_end_time')
  String? get afternoonEndTime;

  @BuiltValueField(wireName: r'ignore_morning')
  bool get ignoreMorning;

  @BuiltValueField(wireName: r'ignore_afternoon')
  bool get ignoreAfternoon;

  @BuiltValueField(wireName: r'notes')
  String get notes;

  OperatorWithConfig._();

  factory OperatorWithConfig([void updates(OperatorWithConfigBuilder b)]) = _$OperatorWithConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperatorWithConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperatorWithConfig> get serializer => _$OperatorWithConfigSerializer();
}

class _$OperatorWithConfigSerializer implements PrimitiveSerializer<OperatorWithConfig> {
  @override
  final Iterable<Type> types = const [OperatorWithConfig, _$OperatorWithConfig];

  @override
  final String wireName = r'OperatorWithConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperatorWithConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'first_name';
    yield serializers.serialize(
      object.firstName,
      specifiedType: const FullType(String),
    );
    yield r'last_name';
    yield serializers.serialize(
      object.lastName,
      specifiedType: const FullType(String),
    );
    yield r'full_name';
    yield serializers.serialize(
      object.fullName,
      specifiedType: const FullType(String),
    );
    yield r'avatar';
    yield object.avatar == null ? null : serializers.serialize(
      object.avatar,
      specifiedType: const FullType.nullable(String),
    );
    yield r'morning_working';
    yield serializers.serialize(
      object.morningWorking,
      specifiedType: const FullType(bool),
    );
    yield r'morning_start_time';
    yield object.morningStartTime == null ? null : serializers.serialize(
      object.morningStartTime,
      specifiedType: const FullType.nullable(String),
    );
    yield r'morning_end_time';
    yield object.morningEndTime == null ? null : serializers.serialize(
      object.morningEndTime,
      specifiedType: const FullType.nullable(String),
    );
    yield r'afternoon_working';
    yield serializers.serialize(
      object.afternoonWorking,
      specifiedType: const FullType(bool),
    );
    yield r'afternoon_start_time';
    yield object.afternoonStartTime == null ? null : serializers.serialize(
      object.afternoonStartTime,
      specifiedType: const FullType.nullable(String),
    );
    yield r'afternoon_end_time';
    yield object.afternoonEndTime == null ? null : serializers.serialize(
      object.afternoonEndTime,
      specifiedType: const FullType.nullable(String),
    );
    yield r'ignore_morning';
    yield serializers.serialize(
      object.ignoreMorning,
      specifiedType: const FullType(bool),
    );
    yield r'ignore_afternoon';
    yield serializers.serialize(
      object.ignoreAfternoon,
      specifiedType: const FullType(bool),
    );
    yield r'notes';
    yield serializers.serialize(
      object.notes,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OperatorWithConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperatorWithConfigBuilder result,
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
        case r'first_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.firstName = valueDes;
          break;
        case r'last_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastName = valueDes;
          break;
        case r'full_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fullName = valueDes;
          break;
        case r'avatar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.avatar = valueDes;
          break;
        case r'morning_working':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.morningWorking = valueDes;
          break;
        case r'morning_start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.morningStartTime = valueDes;
          break;
        case r'morning_end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.morningEndTime = valueDes;
          break;
        case r'afternoon_working':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.afternoonWorking = valueDes;
          break;
        case r'afternoon_start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.afternoonStartTime = valueDes;
          break;
        case r'afternoon_end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.afternoonEndTime = valueDes;
          break;
        case r'ignore_morning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ignoreMorning = valueDes;
          break;
        case r'ignore_afternoon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ignoreAfternoon = valueDes;
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.notes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OperatorWithConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperatorWithConfigBuilder();
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

