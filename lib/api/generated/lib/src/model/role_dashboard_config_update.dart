//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'role_dashboard_config_update.g.dart';

/// RoleDashboardConfigUpdate
///
/// Properties:
/// * [visible] 
/// * [order] 
/// * [config] 
@BuiltValue()
abstract class RoleDashboardConfigUpdate implements Built<RoleDashboardConfigUpdate, RoleDashboardConfigUpdateBuilder> {
  @BuiltValueField(wireName: r'visible')
  bool? get visible;

  @BuiltValueField(wireName: r'order')
  int? get order;

  @BuiltValueField(wireName: r'config')
  Map<String, dynamic>? get config;

  RoleDashboardConfigUpdate._();

  factory RoleDashboardConfigUpdate([void updates(RoleDashboardConfigUpdateBuilder b)]) = _$RoleDashboardConfigUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RoleDashboardConfigUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RoleDashboardConfigUpdate> get serializer => _$RoleDashboardConfigUpdateSerializer();
}

class _$RoleDashboardConfigUpdateSerializer implements PrimitiveSerializer<RoleDashboardConfigUpdate> {
  @override
  final Iterable<Type> types = const [RoleDashboardConfigUpdate, _$RoleDashboardConfigUpdate];

  @override
  final String wireName = r'RoleDashboardConfigUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RoleDashboardConfigUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.visible != null) {
      yield r'visible';
      yield serializers.serialize(
        object.visible,
        specifiedType: const FullType(bool),
      );
    }
    if (object.order != null) {
      yield r'order';
      yield serializers.serialize(
        object.order,
        specifiedType: const FullType(int),
      );
    }
    if (object.config != null) {
      yield r'config';
      yield serializers.serialize(
        object.config,
        specifiedType: const FullType.nullable(Map<String, dynamic>),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RoleDashboardConfigUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RoleDashboardConfigUpdateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'visible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.visible = valueDes;
          break;
        case r'order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.order = valueDes;
          break;
        case r'config':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Map<String, dynamic>),
          ) as Map<String, dynamic>?;
          if (valueDes == null) continue;
          result.config = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RoleDashboardConfigUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RoleDashboardConfigUpdateBuilder();
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

