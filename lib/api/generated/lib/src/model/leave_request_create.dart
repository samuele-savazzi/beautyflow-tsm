//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'leave_request_create.g.dart';

/// LeaveRequestCreate
///
/// Properties:
/// * [startDate] - Data di inizio ferie
/// * [endDate] - Data di fine ferie
/// * [reason] - Motivazione della richiesta
@BuiltValue()
abstract class LeaveRequestCreate implements Built<LeaveRequestCreate, LeaveRequestCreateBuilder> {
  /// Data di inizio ferie
  @BuiltValueField(wireName: r'start_date')
  Date get startDate;

  /// Data di fine ferie
  @BuiltValueField(wireName: r'end_date')
  Date get endDate;

  /// Motivazione della richiesta
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  LeaveRequestCreate._();

  factory LeaveRequestCreate([void updates(LeaveRequestCreateBuilder b)]) = _$LeaveRequestCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LeaveRequestCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LeaveRequestCreate> get serializer => _$LeaveRequestCreateSerializer();
}

class _$LeaveRequestCreateSerializer implements PrimitiveSerializer<LeaveRequestCreate> {
  @override
  final Iterable<Type> types = const [LeaveRequestCreate, _$LeaveRequestCreate];

  @override
  final String wireName = r'LeaveRequestCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LeaveRequestCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'start_date';
    yield serializers.serialize(
      object.startDate,
      specifiedType: const FullType(Date),
    );
    yield r'end_date';
    yield serializers.serialize(
      object.endDate,
      specifiedType: const FullType(Date),
    );
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LeaveRequestCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LeaveRequestCreateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'start_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.startDate = valueDes;
          break;
        case r'end_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.endDate = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LeaveRequestCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LeaveRequestCreateBuilder();
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

