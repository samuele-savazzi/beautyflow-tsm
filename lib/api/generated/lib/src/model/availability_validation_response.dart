//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'availability_validation_response.g.dart';

/// AvailabilityValidationResponse
///
/// Properties:
/// * [success] - Stato della validazione
/// * [valid] - Se la richiesta è valida
/// * [operator_] - Informazioni operatore (se valido)
/// * [errors] - Lista errori di validazione (se non valido)
@BuiltValue()
abstract class AvailabilityValidationResponse implements Built<AvailabilityValidationResponse, AvailabilityValidationResponseBuilder> {
  /// Stato della validazione
  @BuiltValueField(wireName: r'success')
  bool get success;

  /// Se la richiesta è valida
  @BuiltValueField(wireName: r'valid')
  bool get valid;

  /// Informazioni operatore (se valido)
  @BuiltValueField(wireName: r'operator')
  BuiltMap<String, Map<String, dynamic>?>? get operator_;

  /// Lista errori di validazione (se non valido)
  @BuiltValueField(wireName: r'errors')
  BuiltList<Map<String, dynamic>?>? get errors;

  AvailabilityValidationResponse._();

  factory AvailabilityValidationResponse([void updates(AvailabilityValidationResponseBuilder b)]) = _$AvailabilityValidationResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AvailabilityValidationResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AvailabilityValidationResponse> get serializer => _$AvailabilityValidationResponseSerializer();
}

class _$AvailabilityValidationResponseSerializer implements PrimitiveSerializer<AvailabilityValidationResponse> {
  @override
  final Iterable<Type> types = const [AvailabilityValidationResponse, _$AvailabilityValidationResponse];

  @override
  final String wireName = r'AvailabilityValidationResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AvailabilityValidationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'valid';
    yield serializers.serialize(
      object.valid,
      specifiedType: const FullType(bool),
    );
    if (object.operator_ != null) {
      yield r'operator';
      yield serializers.serialize(
        object.operator_,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
      );
    }
    if (object.errors != null) {
      yield r'errors';
      yield serializers.serialize(
        object.errors,
        specifiedType: const FullType(BuiltList, [FullType.nullable(Map<String, dynamic>)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AvailabilityValidationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AvailabilityValidationResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'valid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.valid = valueDes;
          break;
        case r'operator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltMap<String, Map<String, dynamic>?>;
          result.operator_.replace(valueDes);
          break;
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltList<Map<String, dynamic>?>;
          result.errors.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AvailabilityValidationResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AvailabilityValidationResponseBuilder();
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

