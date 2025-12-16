//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'morning_hours.g.dart';

/// MorningHours
///
/// Properties:
/// * [isOpen] 
/// * [openingTime] 
/// * [closingTime] 
/// * [status] 
/// * [isSpecial] 
@BuiltValue()
abstract class MorningHours implements Built<MorningHours, MorningHoursBuilder> {
  @BuiltValueField(wireName: r'is_open')
  bool get isOpen;

  @BuiltValueField(wireName: r'opening_time')
  String? get openingTime;

  @BuiltValueField(wireName: r'closing_time')
  String? get closingTime;

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'is_special')
  bool get isSpecial;

  MorningHours._();

  factory MorningHours([void updates(MorningHoursBuilder b)]) = _$MorningHours;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MorningHoursBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MorningHours> get serializer => _$MorningHoursSerializer();
}

class _$MorningHoursSerializer implements PrimitiveSerializer<MorningHours> {
  @override
  final Iterable<Type> types = const [MorningHours, _$MorningHours];

  @override
  final String wireName = r'MorningHours';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MorningHours object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'is_open';
    yield serializers.serialize(
      object.isOpen,
      specifiedType: const FullType(bool),
    );
    yield r'opening_time';
    yield object.openingTime == null ? null : serializers.serialize(
      object.openingTime,
      specifiedType: const FullType.nullable(String),
    );
    yield r'closing_time';
    yield object.closingTime == null ? null : serializers.serialize(
      object.closingTime,
      specifiedType: const FullType.nullable(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'is_special';
    yield serializers.serialize(
      object.isSpecial,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MorningHours object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MorningHoursBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'is_special':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isSpecial = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MorningHours deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MorningHoursBuilder();
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

