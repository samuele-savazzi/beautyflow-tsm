//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/operator_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/time_slot_info.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'permission_request_list.g.dart';

/// PermissionRequestList
///
/// Properties:
/// * [id] 
/// * [operator_] 
/// * [date] 
/// * [reason] 
/// * [status] 
/// * [timeSlots] 
/// * [createdAt] 
@BuiltValue()
abstract class PermissionRequestList implements Built<PermissionRequestList, PermissionRequestListBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'operator')
  OperatorInfo get operator_;

  @BuiltValueField(wireName: r'date')
  Date get date;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'time_slots')
  BuiltList<TimeSlotInfo> get timeSlots;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  PermissionRequestList._();

  factory PermissionRequestList([void updates(PermissionRequestListBuilder b)]) = _$PermissionRequestList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PermissionRequestListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PermissionRequestList> get serializer => _$PermissionRequestListSerializer();
}

class _$PermissionRequestListSerializer implements PrimitiveSerializer<PermissionRequestList> {
  @override
  final Iterable<Type> types = const [PermissionRequestList, _$PermissionRequestList];

  @override
  final String wireName = r'PermissionRequestList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PermissionRequestList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'operator';
    yield serializers.serialize(
      object.operator_,
      specifiedType: const FullType(OperatorInfo),
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
      specifiedType: const FullType(BuiltList, [FullType(TimeSlotInfo)]),
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
    PermissionRequestList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PermissionRequestListBuilder result,
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
        case r'operator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OperatorInfo),
          ) as OperatorInfo;
          result.operator_.replace(valueDes);
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
            specifiedType: const FullType(BuiltList, [FullType(TimeSlotInfo)]),
          ) as BuiltList<TimeSlotInfo>;
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
  PermissionRequestList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PermissionRequestListBuilder();
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

