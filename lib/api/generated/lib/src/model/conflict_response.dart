//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/conflict.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'conflict_response.g.dart';

/// ConflictResponse
///
/// Properties:
/// * [status] 
/// * [message] 
/// * [conflicts] 
@BuiltValue()
abstract class ConflictResponse implements Built<ConflictResponse, ConflictResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'conflicts')
  BuiltList<Conflict> get conflicts;

  ConflictResponse._();

  factory ConflictResponse([void updates(ConflictResponseBuilder b)]) = _$ConflictResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConflictResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConflictResponse> get serializer => _$ConflictResponseSerializer();
}

class _$ConflictResponseSerializer implements PrimitiveSerializer<ConflictResponse> {
  @override
  final Iterable<Type> types = const [ConflictResponse, _$ConflictResponse];

  @override
  final String wireName = r'ConflictResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConflictResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    yield r'conflicts';
    yield serializers.serialize(
      object.conflicts,
      specifiedType: const FullType(BuiltList, [FullType(Conflict)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ConflictResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConflictResponseBuilder result,
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
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'conflicts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Conflict)]),
          ) as BuiltList<Conflict>;
          result.conflicts.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConflictResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConflictResponseBuilder();
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

