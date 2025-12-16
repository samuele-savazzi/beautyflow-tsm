//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mark_notifications_read.g.dart';

/// MarkNotificationsRead
///
/// Properties:
/// * [notificationIds] 
/// * [all] 
@BuiltValue()
abstract class MarkNotificationsRead implements Built<MarkNotificationsRead, MarkNotificationsReadBuilder> {
  @BuiltValueField(wireName: r'notification_ids')
  BuiltList<int> get notificationIds;

  @BuiltValueField(wireName: r'all')
  bool? get all;

  MarkNotificationsRead._();

  factory MarkNotificationsRead([void updates(MarkNotificationsReadBuilder b)]) = _$MarkNotificationsRead;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MarkNotificationsReadBuilder b) => b
      ..all = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<MarkNotificationsRead> get serializer => _$MarkNotificationsReadSerializer();
}

class _$MarkNotificationsReadSerializer implements PrimitiveSerializer<MarkNotificationsRead> {
  @override
  final Iterable<Type> types = const [MarkNotificationsRead, _$MarkNotificationsRead];

  @override
  final String wireName = r'MarkNotificationsRead';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MarkNotificationsRead object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'notification_ids';
    yield serializers.serialize(
      object.notificationIds,
      specifiedType: const FullType(BuiltList, [FullType(int)]),
    );
    if (object.all != null) {
      yield r'all';
      yield serializers.serialize(
        object.all,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MarkNotificationsRead object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MarkNotificationsReadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'notification_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.notificationIds.replace(valueDes);
          break;
        case r'all':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.all = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MarkNotificationsRead deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MarkNotificationsReadBuilder();
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

