//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'movement_correction.g.dart';

/// MovementCorrection
///
/// Properties:
/// * [movementId] 
/// * [newQuantity] 
/// * [reason] 
@BuiltValue()
abstract class MovementCorrection implements Built<MovementCorrection, MovementCorrectionBuilder> {
  @BuiltValueField(wireName: r'movement_id')
  int get movementId;

  @BuiltValueField(wireName: r'new_quantity')
  double get newQuantity;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  MovementCorrection._();

  factory MovementCorrection([void updates(MovementCorrectionBuilder b)]) = _$MovementCorrection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MovementCorrectionBuilder b) => b
      ..reason = 'Manual correction';

  @BuiltValueSerializer(custom: true)
  static Serializer<MovementCorrection> get serializer => _$MovementCorrectionSerializer();
}

class _$MovementCorrectionSerializer implements PrimitiveSerializer<MovementCorrection> {
  @override
  final Iterable<Type> types = const [MovementCorrection, _$MovementCorrection];

  @override
  final String wireName = r'MovementCorrection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MovementCorrection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'movement_id';
    yield serializers.serialize(
      object.movementId,
      specifiedType: const FullType(int),
    );
    yield r'new_quantity';
    yield serializers.serialize(
      object.newQuantity,
      specifiedType: const FullType(double),
    );
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MovementCorrection object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MovementCorrectionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'movement_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.movementId = valueDes;
          break;
        case r'new_quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.newQuantity = valueDes;
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
  MovementCorrection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MovementCorrectionBuilder();
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

