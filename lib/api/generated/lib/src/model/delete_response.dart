//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delete_response.g.dart';

/// Serializer per la risposta di eliminazione.
///
/// Properties:
/// * [status] 
/// * [message] 
/// * [rollbackSummary] 
@BuiltValue()
abstract class DeleteResponse implements Built<DeleteResponse, DeleteResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'rollback_summary')
  BuiltMap<String, Map<String, dynamic>?>? get rollbackSummary;

  DeleteResponse._();

  factory DeleteResponse([void updates(DeleteResponseBuilder b)]) = _$DeleteResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeleteResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeleteResponse> get serializer => _$DeleteResponseSerializer();
}

class _$DeleteResponseSerializer implements PrimitiveSerializer<DeleteResponse> {
  @override
  final Iterable<Type> types = const [DeleteResponse, _$DeleteResponse];

  @override
  final String wireName = r'DeleteResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeleteResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    if (object.rollbackSummary != null) {
      yield r'rollback_summary';
      yield serializers.serialize(
        object.rollbackSummary,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeleteResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeleteResponseBuilder result,
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
        case r'rollback_summary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltMap<String, Map<String, dynamic>?>;
          result.rollbackSummary.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeleteResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteResponseBuilder();
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

