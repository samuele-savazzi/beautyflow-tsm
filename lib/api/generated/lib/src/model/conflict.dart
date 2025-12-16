//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'conflict.g.dart';

/// Conflict
///
/// Properties:
/// * [type] 
/// * [operatorId] 
/// * [operatorName] 
/// * [changeId] 
/// * [message] 
@BuiltValue()
abstract class Conflict implements Built<Conflict, ConflictBuilder> {
  @BuiltValueField(wireName: r'type')
  String get type;

  @BuiltValueField(wireName: r'operator_id')
  int? get operatorId;

  @BuiltValueField(wireName: r'operator_name')
  String? get operatorName;

  @BuiltValueField(wireName: r'change_id')
  int? get changeId;

  @BuiltValueField(wireName: r'message')
  String get message;

  Conflict._();

  factory Conflict([void updates(ConflictBuilder b)]) = _$Conflict;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConflictBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Conflict> get serializer => _$ConflictSerializer();
}

class _$ConflictSerializer implements PrimitiveSerializer<Conflict> {
  @override
  final Iterable<Type> types = const [Conflict, _$Conflict];

  @override
  final String wireName = r'Conflict';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Conflict object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.operatorId != null) {
      yield r'operator_id';
      yield serializers.serialize(
        object.operatorId,
        specifiedType: const FullType(int),
      );
    }
    if (object.operatorName != null) {
      yield r'operator_name';
      yield serializers.serialize(
        object.operatorName,
        specifiedType: const FullType(String),
      );
    }
    if (object.changeId != null) {
      yield r'change_id';
      yield serializers.serialize(
        object.changeId,
        specifiedType: const FullType(int),
      );
    }
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Conflict object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConflictBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
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
        case r'change_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.changeId = valueDes;
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
  Conflict deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConflictBuilder();
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

