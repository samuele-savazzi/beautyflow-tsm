//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consultation_complete_response.g.dart';

/// ConsultationCompleteResponse
///
/// Properties:
/// * [id] 
/// * [status] 
/// * [statusDisplay] 
/// * [completedAt] 
@BuiltValue()
abstract class ConsultationCompleteResponse implements Built<ConsultationCompleteResponse, ConsultationCompleteResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'status_display')
  String get statusDisplay;

  @BuiltValueField(wireName: r'completed_at')
  DateTime get completedAt;

  ConsultationCompleteResponse._();

  factory ConsultationCompleteResponse([void updates(ConsultationCompleteResponseBuilder b)]) = _$ConsultationCompleteResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsultationCompleteResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsultationCompleteResponse> get serializer => _$ConsultationCompleteResponseSerializer();
}

class _$ConsultationCompleteResponseSerializer implements PrimitiveSerializer<ConsultationCompleteResponse> {
  @override
  final Iterable<Type> types = const [ConsultationCompleteResponse, _$ConsultationCompleteResponse];

  @override
  final String wireName = r'ConsultationCompleteResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsultationCompleteResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'status_display';
    yield serializers.serialize(
      object.statusDisplay,
      specifiedType: const FullType(String),
    );
    yield r'completed_at';
    yield serializers.serialize(
      object.completedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsultationCompleteResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsultationCompleteResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'status_display':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.statusDisplay = valueDes;
          break;
        case r'completed_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.completedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsultationCompleteResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsultationCompleteResponseBuilder();
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

