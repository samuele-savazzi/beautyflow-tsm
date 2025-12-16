//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/code_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_type.g.dart';

/// Serializer per il modello NotificationType
///
/// Properties:
/// * [id] 
/// * [code] 
/// * [label] 
/// * [color] 
/// * [ttl] 
/// * [showAsPopup] 
@BuiltValue()
abstract class NotificationType implements Built<NotificationType, NotificationTypeBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'code')
  CodeEnum get code;
  // enum codeEnum {  new_booking,  new_registration,  cancellation,  leave_request,  inventory,  system,  consultation,  };

  @BuiltValueField(wireName: r'label')
  String get label;

  @BuiltValueField(wireName: r'color')
  String? get color;

  @BuiltValueField(wireName: r'ttl')
  int? get ttl;

  @BuiltValueField(wireName: r'show_as_popup')
  bool? get showAsPopup;

  NotificationType._();

  factory NotificationType([void updates(NotificationTypeBuilder b)]) = _$NotificationType;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationTypeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationType> get serializer => _$NotificationTypeSerializer();
}

class _$NotificationTypeSerializer implements PrimitiveSerializer<NotificationType> {
  @override
  final Iterable<Type> types = const [NotificationType, _$NotificationType];

  @override
  final String wireName = r'NotificationType';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationType object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(CodeEnum),
    );
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(String),
    );
    if (object.color != null) {
      yield r'color';
      yield serializers.serialize(
        object.color,
        specifiedType: const FullType(String),
      );
    }
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
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NotificationTypeBuilder result,
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
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CodeEnum),
          ) as CodeEnum;
          result.code = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        case r'color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.color = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationTypeBuilder();
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

