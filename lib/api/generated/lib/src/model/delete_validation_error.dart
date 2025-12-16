//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delete_validation_error.g.dart';

/// Serializer per errori di validazione eliminazione.
///
/// Properties:
/// * [error] 
/// * [blockingFactors] 
/// * [affectedEntities] 
@BuiltValue()
abstract class DeleteValidationError implements Built<DeleteValidationError, DeleteValidationErrorBuilder> {
  @BuiltValueField(wireName: r'error')
  String get error;

  @BuiltValueField(wireName: r'blocking_factors')
  BuiltList<String>? get blockingFactors;

  @BuiltValueField(wireName: r'affected_entities')
  BuiltMap<String, Map<String, dynamic>?>? get affectedEntities;

  DeleteValidationError._();

  factory DeleteValidationError([void updates(DeleteValidationErrorBuilder b)]) = _$DeleteValidationError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeleteValidationErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeleteValidationError> get serializer => _$DeleteValidationErrorSerializer();
}

class _$DeleteValidationErrorSerializer implements PrimitiveSerializer<DeleteValidationError> {
  @override
  final Iterable<Type> types = const [DeleteValidationError, _$DeleteValidationError];

  @override
  final String wireName = r'DeleteValidationError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeleteValidationError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'error';
    yield serializers.serialize(
      object.error,
      specifiedType: const FullType(String),
    );
    if (object.blockingFactors != null) {
      yield r'blocking_factors';
      yield serializers.serialize(
        object.blockingFactors,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.affectedEntities != null) {
      yield r'affected_entities';
      yield serializers.serialize(
        object.affectedEntities,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeleteValidationError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeleteValidationErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.error = valueDes;
          break;
        case r'blocking_factors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.blockingFactors.replace(valueDes);
          break;
        case r'affected_entities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltMap<String, Map<String, dynamic>?>;
          result.affectedEntities.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeleteValidationError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteValidationErrorBuilder();
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

