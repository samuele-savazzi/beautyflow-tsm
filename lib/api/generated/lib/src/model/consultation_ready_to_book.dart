//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consultation_ready_to_book.g.dart';

/// Serializer per marcare una consultation come 'ready_to_book'. Include validazioni robuste per service_steps_snapshot. Formato: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool,            'category_selected': int (optional), 'category_name': str (optional)}]
///
/// Properties:
/// * [serviceStepsSnapshot] - Array di step del servizio con durate definitive
/// * [finalDescription] - Descrizione dettagliata del servizio personalizzato
/// * [markAsRegular] - Se true, marca anche il cliente come abituale per questo servizio
@BuiltValue()
abstract class ConsultationReadyToBook implements Built<ConsultationReadyToBook, ConsultationReadyToBookBuilder> {
  /// Array di step del servizio con durate definitive
  @BuiltValueField(wireName: r'service_steps_snapshot')
  Map<String, dynamic>? get serviceStepsSnapshot;

  /// Descrizione dettagliata del servizio personalizzato
  @BuiltValueField(wireName: r'final_description')
  String get finalDescription;

  /// Se true, marca anche il cliente come abituale per questo servizio
  @BuiltValueField(wireName: r'mark_as_regular')
  bool? get markAsRegular;

  ConsultationReadyToBook._();

  factory ConsultationReadyToBook([void updates(ConsultationReadyToBookBuilder b)]) = _$ConsultationReadyToBook;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsultationReadyToBookBuilder b) => b
      ..markAsRegular = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsultationReadyToBook> get serializer => _$ConsultationReadyToBookSerializer();
}

class _$ConsultationReadyToBookSerializer implements PrimitiveSerializer<ConsultationReadyToBook> {
  @override
  final Iterable<Type> types = const [ConsultationReadyToBook, _$ConsultationReadyToBook];

  @override
  final String wireName = r'ConsultationReadyToBook';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsultationReadyToBook object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'service_steps_snapshot';
    yield object.serviceStepsSnapshot == null ? null : serializers.serialize(
      object.serviceStepsSnapshot,
      specifiedType: const FullType.nullable(Map<String, dynamic>),
    );
    yield r'final_description';
    yield serializers.serialize(
      object.finalDescription,
      specifiedType: const FullType(String),
    );
    if (object.markAsRegular != null) {
      yield r'mark_as_regular';
      yield serializers.serialize(
        object.markAsRegular,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsultationReadyToBook object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsultationReadyToBookBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'service_steps_snapshot':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Map<String, dynamic>),
          ) as Map<String, dynamic>?;
          if (valueDes == null) continue;
          result.serviceStepsSnapshot = valueDes;
          break;
        case r'final_description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.finalDescription = valueDes;
          break;
        case r'mark_as_regular':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.markAsRegular = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsultationReadyToBook deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsultationReadyToBookBuilder();
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

