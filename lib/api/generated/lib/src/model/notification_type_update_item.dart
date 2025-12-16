//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_type_update_item.g.dart';

/// NotificationTypeUpdateItem
///
/// Properties:
/// * [id] 
/// * [ttl] 
/// * [showAsPopup] 
/// * [color] 
@BuiltValue()
abstract class NotificationTypeUpdateItem implements Built<NotificationTypeUpdateItem, NotificationTypeUpdateItemBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'ttl')
  int? get ttl;

  @BuiltValueField(wireName: r'show_as_popup')
  bool? get showAsPopup;

  @BuiltValueField(wireName: r'color')
  String? get color;

  NotificationTypeUpdateItem._();

  factory NotificationTypeUpdateItem([void updates(NotificationTypeUpdateItemBuilder b)]) = _$NotificationTypeUpdateItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationTypeUpdateItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationTypeUpdateItem> get serializer => _$NotificationTypeUpdateItemSerializer();
}

class _$NotificationTypeUpdateItemSerializer implements PrimitiveSerializer<NotificationTypeUpdateItem> {
  @override
  final Iterable<Type> types = const [NotificationTypeUpdateItem, _$NotificationTypeUpdateItem];

  @override
  final String wireName = r'NotificationTypeUpdateItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationTypeUpdateItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    if (object.ttl != null) {
      yield r'ttl';
      yield serializers.serialize(
        object.ttl,
        specifiedType: const FullType(int),
      );
    }
    if (object.showAsPopup != null) {
      yield r'show_as_popup';
      yield serializers.serialize(
        object.showAsPopup,
        specifiedType: const FullType(bool),
      );
    }
    if (object.color != null) {
      yield r'color';
      yield serializers.serialize(
        object.color,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationTypeUpdateItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NotificationTypeUpdateItemBuilder result,
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
        case r'ttl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.ttl = valueDes;
          break;
        case r'show_as_popup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showAsPopup = valueDes;
          break;
        case r'color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.color = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationTypeUpdateItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationTypeUpdateItemBuilder();
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

