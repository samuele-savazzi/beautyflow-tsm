//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'role_dashboard_config_list.g.dart';

/// RoleDashboardConfigList
///
/// Properties:
/// * [id] 
/// * [roleId] 
/// * [roleName] 
/// * [areaId] 
/// * [areaName] 
/// * [widgetCode] 
/// * [widgetName] 
/// * [visible] 
/// * [order] 
/// * [config] 
/// * [isGlobal] 
@BuiltValue()
abstract class RoleDashboardConfigList implements Built<RoleDashboardConfigList, RoleDashboardConfigListBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'role_id')
  int get roleId;

  @BuiltValueField(wireName: r'role_name')
  String get roleName;

  @BuiltValueField(wireName: r'area_id')
  int? get areaId;

  @BuiltValueField(wireName: r'area_name')
  String? get areaName;

  @BuiltValueField(wireName: r'widget_code')
  String get widgetCode;

  @BuiltValueField(wireName: r'widget_name')
  String get widgetName;

  @BuiltValueField(wireName: r'visible')
  bool get visible;

  @BuiltValueField(wireName: r'order')
  int get order;

  @BuiltValueField(wireName: r'config')
  Map<String, dynamic>? get config;

  @BuiltValueField(wireName: r'is_global')
  bool get isGlobal;

  RoleDashboardConfigList._();

  factory RoleDashboardConfigList([void updates(RoleDashboardConfigListBuilder b)]) = _$RoleDashboardConfigList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RoleDashboardConfigListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RoleDashboardConfigList> get serializer => _$RoleDashboardConfigListSerializer();
}

class _$RoleDashboardConfigListSerializer implements PrimitiveSerializer<RoleDashboardConfigList> {
  @override
  final Iterable<Type> types = const [RoleDashboardConfigList, _$RoleDashboardConfigList];

  @override
  final String wireName = r'RoleDashboardConfigList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RoleDashboardConfigList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'role_id';
    yield serializers.serialize(
      object.roleId,
      specifiedType: const FullType(int),
    );
    yield r'role_name';
    yield serializers.serialize(
      object.roleName,
      specifiedType: const FullType(String),
    );
    yield r'area_id';
    yield object.areaId == null ? null : serializers.serialize(
      object.areaId,
      specifiedType: const FullType.nullable(int),
    );
    yield r'area_name';
    yield object.areaName == null ? null : serializers.serialize(
      object.areaName,
      specifiedType: const FullType.nullable(String),
    );
    yield r'widget_code';
    yield serializers.serialize(
      object.widgetCode,
      specifiedType: const FullType(String),
    );
    yield r'widget_name';
    yield serializers.serialize(
      object.widgetName,
      specifiedType: const FullType(String),
    );
    yield r'visible';
    yield serializers.serialize(
      object.visible,
      specifiedType: const FullType(bool),
    );
    yield r'order';
    yield serializers.serialize(
      object.order,
      specifiedType: const FullType(int),
    );
    yield r'config';
    yield object.config == null ? null : serializers.serialize(
      object.config,
      specifiedType: const FullType.nullable(Map<String, dynamic>),
    );
    yield r'is_global';
    yield serializers.serialize(
      object.isGlobal,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RoleDashboardConfigList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RoleDashboardConfigListBuilder result,
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
        case r'role_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.roleId = valueDes;
          break;
        case r'role_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.roleName = valueDes;
          break;
        case r'area_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.areaId = valueDes;
          break;
        case r'area_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.areaName = valueDes;
          break;
        case r'widget_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.widgetCode = valueDes;
          break;
        case r'widget_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.widgetName = valueDes;
          break;
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
        case r'is_global':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isGlobal = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RoleDashboardConfigList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RoleDashboardConfigListBuilder();
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

