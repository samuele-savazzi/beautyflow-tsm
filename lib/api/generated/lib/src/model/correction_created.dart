//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'correction_created.g.dart';

/// CorrectionCreated
///
/// Properties:
/// * [id] 
/// * [message] 
/// * [correctionMovementId] 
@BuiltValue()
abstract class CorrectionCreated implements Built<CorrectionCreated, CorrectionCreatedBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'correction_movement_id')
  int get correctionMovementId;

  CorrectionCreated._();

  factory CorrectionCreated([void updates(CorrectionCreatedBuilder b)]) = _$CorrectionCreated;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorrectionCreatedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorrectionCreated> get serializer => _$CorrectionCreatedSerializer();
}

class _$CorrectionCreatedSerializer implements PrimitiveSerializer<CorrectionCreated> {
  @override
  final Iterable<Type> types = const [CorrectionCreated, _$CorrectionCreated];

  @override
  final String wireName = r'CorrectionCreated';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorrectionCreated object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    yield r'correction_movement_id';
    yield serializers.serialize(
      object.correctionMovementId,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CorrectionCreated object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CorrectionCreatedBuilder result,
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
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'correction_movement_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.correctionMovementId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorrectionCreated deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorrectionCreatedBuilder();
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

