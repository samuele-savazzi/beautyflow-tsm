//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/scheduled_time_change_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scheduled_time_change_list_response.g.dart';

/// Serializer per la lista paginata delle modifiche.
///
/// Properties:
/// * [count] 
/// * [next] 
/// * [previous] 
/// * [results] 
@BuiltValue()
abstract class ScheduledTimeChangeListResponse implements Built<ScheduledTimeChangeListResponse, ScheduledTimeChangeListResponseBuilder> {
  @BuiltValueField(wireName: r'count')
  int get count;

  @BuiltValueField(wireName: r'next')
  String? get next;

  @BuiltValueField(wireName: r'previous')
  String? get previous;

  @BuiltValueField(wireName: r'results')
  BuiltList<ScheduledTimeChangeResponse> get results;

  ScheduledTimeChangeListResponse._();

  factory ScheduledTimeChangeListResponse([void updates(ScheduledTimeChangeListResponseBuilder b)]) = _$ScheduledTimeChangeListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ScheduledTimeChangeListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ScheduledTimeChangeListResponse> get serializer => _$ScheduledTimeChangeListResponseSerializer();
}

class _$ScheduledTimeChangeListResponseSerializer implements PrimitiveSerializer<ScheduledTimeChangeListResponse> {
  @override
  final Iterable<Type> types = const [ScheduledTimeChangeListResponse, _$ScheduledTimeChangeListResponse];

  @override
  final String wireName = r'ScheduledTimeChangeListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ScheduledTimeChangeListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
    yield r'next';
    yield object.next == null ? null : serializers.serialize(
      object.next,
      specifiedType: const FullType.nullable(String),
    );
    yield r'previous';
    yield object.previous == null ? null : serializers.serialize(
      object.previous,
      specifiedType: const FullType.nullable(String),
    );
    yield r'results';
    yield serializers.serialize(
      object.results,
      specifiedType: const FullType(BuiltList, [FullType(ScheduledTimeChangeResponse)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ScheduledTimeChangeListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ScheduledTimeChangeListResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        case r'next':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.next = valueDes;
          break;
        case r'previous':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.previous = valueDes;
          break;
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ScheduledTimeChangeResponse)]),
          ) as BuiltList<ScheduledTimeChangeResponse>;
          result.results.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ScheduledTimeChangeListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduledTimeChangeListResponseBuilder();
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

