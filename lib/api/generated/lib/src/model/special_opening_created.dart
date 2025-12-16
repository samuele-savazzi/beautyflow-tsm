//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'special_opening_created.g.dart';

/// Serializer per la risposta di creazione completata.
///
/// Properties:
/// * [status] 
/// * [id] 
/// * [message] 
/// * [operatorsScheduled] 
@BuiltValue()
abstract class SpecialOpeningCreated implements Built<SpecialOpeningCreated, SpecialOpeningCreatedBuilder> {
  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'operators_scheduled')
  int get operatorsScheduled;

  SpecialOpeningCreated._();

  factory SpecialOpeningCreated([void updates(SpecialOpeningCreatedBuilder b)]) = _$SpecialOpeningCreated;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SpecialOpeningCreatedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SpecialOpeningCreated> get serializer => _$SpecialOpeningCreatedSerializer();
}

class _$SpecialOpeningCreatedSerializer implements PrimitiveSerializer<SpecialOpeningCreated> {
  @override
  final Iterable<Type> types = const [SpecialOpeningCreated, _$SpecialOpeningCreated];

  @override
  final String wireName = r'SpecialOpeningCreated';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SpecialOpeningCreated object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
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
    yield r'operators_scheduled';
    yield serializers.serialize(
      object.operatorsScheduled,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SpecialOpeningCreated object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SpecialOpeningCreatedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
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
        case r'operators_scheduled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.operatorsScheduled = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SpecialOpeningCreated deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpecialOpeningCreatedBuilder();
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

