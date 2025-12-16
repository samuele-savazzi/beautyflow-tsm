//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'holiday_created.g.dart';

/// HolidayCreated
///
/// Properties:
/// * [ids] 
/// * [message] 
@BuiltValue()
abstract class HolidayCreated implements Built<HolidayCreated, HolidayCreatedBuilder> {
  @BuiltValueField(wireName: r'ids')
  BuiltList<int> get ids;

  @BuiltValueField(wireName: r'message')
  String get message;

  HolidayCreated._();

  factory HolidayCreated([void updates(HolidayCreatedBuilder b)]) = _$HolidayCreated;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HolidayCreatedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HolidayCreated> get serializer => _$HolidayCreatedSerializer();
}

class _$HolidayCreatedSerializer implements PrimitiveSerializer<HolidayCreated> {
  @override
  final Iterable<Type> types = const [HolidayCreated, _$HolidayCreated];

  @override
  final String wireName = r'HolidayCreated';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HolidayCreated object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ids';
    yield serializers.serialize(
      object.ids,
      specifiedType: const FullType(BuiltList, [FullType(int)]),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HolidayCreated object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HolidayCreatedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.ids.replace(valueDes);
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HolidayCreated deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HolidayCreatedBuilder();
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

