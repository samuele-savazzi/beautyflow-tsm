//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/time_slot_detail.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operator_permission_request_list.g.dart';

/// OperatorPermissionRequestList
///
/// Properties:
/// * [id] 
/// * [date] 
/// * [reason] 
/// * [status] 
/// * [timeSlots] 
/// * [createdAt] 
@BuiltValue()
abstract class OperatorPermissionRequestList implements Built<OperatorPermissionRequestList, OperatorPermissionRequestListBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'date')
  Date get date;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'time_slots')
  BuiltList<TimeSlotDetail> get timeSlots;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  OperatorPermissionRequestList._();

  factory OperatorPermissionRequestList([void updates(OperatorPermissionRequestListBuilder b)]) = _$OperatorPermissionRequestList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperatorPermissionRequestListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperatorPermissionRequestList> get serializer => _$OperatorPermissionRequestListSerializer();
}

class _$OperatorPermissionRequestListSerializer implements PrimitiveSerializer<OperatorPermissionRequestList> {
  @override
  final Iterable<Type> types = const [OperatorPermissionRequestList, _$OperatorPermissionRequestList];

  @override
  final String wireName = r'OperatorPermissionRequestList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperatorPermissionRequestList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(Date),
    );
    yield r'reason';
    yield object.reason == null ? null : serializers.serialize(
      object.reason,
      specifiedType: const FullType.nullable(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'time_slots';
    yield serializers.serialize(
      object.timeSlots,
      specifiedType: const FullType(BuiltList, [FullType(TimeSlotDetail)]),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OperatorPermissionRequestList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperatorPermissionRequestListBuilder result,
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
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'time_slots':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TimeSlotDetail)]),
          ) as BuiltList<TimeSlotDetail>;
          result.timeSlots.replace(valueDes);
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OperatorPermissionRequestList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperatorPermissionRequestListBuilder();
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

