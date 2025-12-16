//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/inconsistency.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validation_response.g.dart';

/// ValidationResponse
///
/// Properties:
/// * [message] 
/// * [inconsistencies] 
/// * [status] 
/// * [modificationType] 
@BuiltValue()
abstract class ValidationResponse implements Built<ValidationResponse, ValidationResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'inconsistencies')
  BuiltList<Inconsistency>? get inconsistencies;

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'modification_type')
  BuiltMap<String, Map<String, dynamic>?> get modificationType;

  ValidationResponse._();

  factory ValidationResponse([void updates(ValidationResponseBuilder b)]) = _$ValidationResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ValidationResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ValidationResponse> get serializer => _$ValidationResponseSerializer();
}

class _$ValidationResponseSerializer implements PrimitiveSerializer<ValidationResponse> {
  @override
  final Iterable<Type> types = const [ValidationResponse, _$ValidationResponse];

  @override
  final String wireName = r'ValidationResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ValidationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.inconsistencies != null) {
      yield r'inconsistencies';
      yield serializers.serialize(
        object.inconsistencies,
        specifiedType: const FullType(BuiltList, [FullType(Inconsistency)]),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'modification_type';
    yield serializers.serialize(
      object.modificationType,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ValidationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ValidationResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'inconsistencies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Inconsistency)]),
          ) as BuiltList<Inconsistency>;
          result.inconsistencies.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'modification_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltMap<String, Map<String, dynamic>?>;
          result.modificationType.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ValidationResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidationResponseBuilder();
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

