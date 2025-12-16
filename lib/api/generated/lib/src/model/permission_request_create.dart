//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/time_slot_create.dart';
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'permission_request_create.g.dart';

/// PermissionRequestCreate
///
/// Properties:
/// * [date] - Data del permesso
/// * [reason] - Motivazione della richiesta
/// * [timeSlots] - Fasce orarie richieste
@BuiltValue()
abstract class PermissionRequestCreate implements Built<PermissionRequestCreate, PermissionRequestCreateBuilder> {
  /// Data del permesso
  @BuiltValueField(wireName: r'date')
  Date get date;

  /// Motivazione della richiesta
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  /// Fasce orarie richieste
  @BuiltValueField(wireName: r'time_slots')
  BuiltList<TimeSlotCreate> get timeSlots;

  PermissionRequestCreate._();

  factory PermissionRequestCreate([void updates(PermissionRequestCreateBuilder b)]) = _$PermissionRequestCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PermissionRequestCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PermissionRequestCreate> get serializer => _$PermissionRequestCreateSerializer();
}

class _$PermissionRequestCreateSerializer implements PrimitiveSerializer<PermissionRequestCreate> {
  @override
  final Iterable<Type> types = const [PermissionRequestCreate, _$PermissionRequestCreate];

  @override
  final String wireName = r'PermissionRequestCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PermissionRequestCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(Date),
    );
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'time_slots';
    yield serializers.serialize(
      object.timeSlots,
      specifiedType: const FullType(BuiltList, [FullType(TimeSlotCreate)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PermissionRequestCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PermissionRequestCreateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'time_slots':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TimeSlotCreate)]),
          ) as BuiltList<TimeSlotCreate>;
          result.timeSlots.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PermissionRequestCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PermissionRequestCreateBuilder();
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

