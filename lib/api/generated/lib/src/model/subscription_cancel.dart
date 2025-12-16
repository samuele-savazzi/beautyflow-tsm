//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'subscription_cancel.g.dart';

/// Serializer per la cancellazione di una subscription premium
///
/// Properties:
/// * [notes] - Motivo della cancellazione
@BuiltValue()
abstract class SubscriptionCancel implements Built<SubscriptionCancel, SubscriptionCancelBuilder> {
  /// Motivo della cancellazione
  @BuiltValueField(wireName: r'notes')
  String get notes;

  SubscriptionCancel._();

  factory SubscriptionCancel([void updates(SubscriptionCancelBuilder b)]) = _$SubscriptionCancel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubscriptionCancelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubscriptionCancel> get serializer => _$SubscriptionCancelSerializer();
}

class _$SubscriptionCancelSerializer implements PrimitiveSerializer<SubscriptionCancel> {
  @override
  final Iterable<Type> types = const [SubscriptionCancel, _$SubscriptionCancel];

  @override
  final String wireName = r'SubscriptionCancel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubscriptionCancel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'notes';
    yield serializers.serialize(
      object.notes,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SubscriptionCancel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubscriptionCancelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  SubscriptionCancel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubscriptionCancelBuilder();
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

