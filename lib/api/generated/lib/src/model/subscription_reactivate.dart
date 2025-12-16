//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'subscription_reactivate.g.dart';

/// Serializer per la riattivazione di una subscription premium
///
/// Properties:
/// * [notes] - Note sulla riattivazione
@BuiltValue()
abstract class SubscriptionReactivate implements Built<SubscriptionReactivate, SubscriptionReactivateBuilder> {
  /// Note sulla riattivazione
  @BuiltValueField(wireName: r'notes')
  String? get notes;

  SubscriptionReactivate._();

  factory SubscriptionReactivate([void updates(SubscriptionReactivateBuilder b)]) = _$SubscriptionReactivate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubscriptionReactivateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubscriptionReactivate> get serializer => _$SubscriptionReactivateSerializer();
}

class _$SubscriptionReactivateSerializer implements PrimitiveSerializer<SubscriptionReactivate> {
  @override
  final Iterable<Type> types = const [SubscriptionReactivate, _$SubscriptionReactivate];

  @override
  final String wireName = r'SubscriptionReactivate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubscriptionReactivate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SubscriptionReactivate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubscriptionReactivateBuilder result,
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
  SubscriptionReactivate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubscriptionReactivateBuilder();
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

