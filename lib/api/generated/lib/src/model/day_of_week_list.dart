//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'day_of_week_list.g.dart';

/// DayOfWeekList
///
/// Properties:
/// * [id] 
/// * [dayNumber] 
/// * [name] 
@BuiltValue()
abstract class DayOfWeekList implements Built<DayOfWeekList, DayOfWeekListBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'day_number')
  int get dayNumber;

  @BuiltValueField(wireName: r'name')
  String get name;

  DayOfWeekList._();

  factory DayOfWeekList([void updates(DayOfWeekListBuilder b)]) = _$DayOfWeekList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DayOfWeekListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DayOfWeekList> get serializer => _$DayOfWeekListSerializer();
}

class _$DayOfWeekListSerializer implements PrimitiveSerializer<DayOfWeekList> {
  @override
  final Iterable<Type> types = const [DayOfWeekList, _$DayOfWeekList];

  @override
  final String wireName = r'DayOfWeekList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DayOfWeekList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'day_number';
    yield serializers.serialize(
      object.dayNumber,
      specifiedType: const FullType(int),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DayOfWeekList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DayOfWeekListBuilder result,
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
        case r'day_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dayNumber = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DayOfWeekList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DayOfWeekListBuilder();
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

