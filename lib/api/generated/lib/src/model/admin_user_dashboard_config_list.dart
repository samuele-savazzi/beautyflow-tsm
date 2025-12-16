//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_user_dashboard_config_list.g.dart';

/// AdminUserDashboardConfigList
///
/// Properties:
/// * [id] 
/// * [userId] 
/// * [userName] 
/// * [areaId] 
/// * [areaName] 
/// * [widgetCode] 
/// * [widgetName] 
/// * [visible] 
/// * [order] 
/// * [config] 
@BuiltValue()
abstract class AdminUserDashboardConfigList implements Built<AdminUserDashboardConfigList, AdminUserDashboardConfigListBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'user_id')
  int get userId;

  @BuiltValueField(wireName: r'user_name')
  String get userName;

  @BuiltValueField(wireName: r'area_id')
  int get areaId;

  @BuiltValueField(wireName: r'area_name')
  String get areaName;

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

  AdminUserDashboardConfigList._();

  factory AdminUserDashboardConfigList([void updates(AdminUserDashboardConfigListBuilder b)]) = _$AdminUserDashboardConfigList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminUserDashboardConfigListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminUserDashboardConfigList> get serializer => _$AdminUserDashboardConfigListSerializer();
}

class _$AdminUserDashboardConfigListSerializer implements PrimitiveSerializer<AdminUserDashboardConfigList> {
  @override
  final Iterable<Type> types = const [AdminUserDashboardConfigList, _$AdminUserDashboardConfigList];

  @override
  final String wireName = r'AdminUserDashboardConfigList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminUserDashboardConfigList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'user_id';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(int),
    );
    yield r'user_name';
    yield serializers.serialize(
      object.userName,
      specifiedType: const FullType(String),
    );
    yield r'area_id';
    yield serializers.serialize(
      object.areaId,
      specifiedType: const FullType(int),
    );
    yield r'area_name';
    yield serializers.serialize(
      object.areaName,
      specifiedType: const FullType(String),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminUserDashboardConfigList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdminUserDashboardConfigListBuilder result,
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
        case r'user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.userId = valueDes;
          break;
        case r'user_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userName = valueDes;
          break;
        case r'area_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.areaId = valueDes;
          break;
        case r'area_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdminUserDashboardConfigList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminUserDashboardConfigListBuilder();
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

