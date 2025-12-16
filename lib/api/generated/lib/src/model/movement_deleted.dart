//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'movement_deleted.g.dart';

/// MovementDeleted
///
/// Properties:
/// * [message] 
/// * [restoredStock] 
@BuiltValue()
abstract class MovementDeleted implements Built<MovementDeleted, MovementDeletedBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'restored_stock')
  double get restoredStock;

  MovementDeleted._();

  factory MovementDeleted([void updates(MovementDeletedBuilder b)]) = _$MovementDeleted;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MovementDeletedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MovementDeleted> get serializer => _$MovementDeletedSerializer();
}

class _$MovementDeletedSerializer implements PrimitiveSerializer<MovementDeleted> {
  @override
  final Iterable<Type> types = const [MovementDeleted, _$MovementDeleted];

  @override
  final String wireName = r'MovementDeleted';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MovementDeleted object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    yield r'restored_stock';
    yield serializers.serialize(
      object.restoredStock,
      specifiedType: const FullType(double),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MovementDeleted object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MovementDeletedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'restored_stock':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.restoredStock = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MovementDeleted deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MovementDeletedBuilder();
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

