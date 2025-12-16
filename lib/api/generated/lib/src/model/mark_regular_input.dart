//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mark_regular_input.g.dart';

/// Input serializer per marcare un cliente come abituale.
///
/// Properties:
/// * [notes] - Note opzionali sulla marcatura come cliente abituale
@BuiltValue()
abstract class MarkRegularInput implements Built<MarkRegularInput, MarkRegularInputBuilder> {
  /// Note opzionali sulla marcatura come cliente abituale
  @BuiltValueField(wireName: r'notes')
  String? get notes;

  MarkRegularInput._();

  factory MarkRegularInput([void updates(MarkRegularInputBuilder b)]) = _$MarkRegularInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MarkRegularInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MarkRegularInput> get serializer => _$MarkRegularInputSerializer();
}

class _$MarkRegularInputSerializer implements PrimitiveSerializer<MarkRegularInput> {
  @override
  final Iterable<Type> types = const [MarkRegularInput, _$MarkRegularInput];

  @override
  final String wireName = r'MarkRegularInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MarkRegularInput object, {
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
    MarkRegularInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MarkRegularInputBuilder result,
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
  MarkRegularInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MarkRegularInputBuilder();
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

