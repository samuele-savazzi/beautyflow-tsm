//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_user_dashboard_config_create.g.dart';

/// AdminUserDashboardConfigCreate
///
/// Properties:
/// * [userId] 
/// * [areaId] 
/// * [widgetCode] 
/// * [visible] 
/// * [order] 
/// * [config] 
@BuiltValue()
abstract class AdminUserDashboardConfigCreate implements Built<AdminUserDashboardConfigCreate, AdminUserDashboardConfigCreateBuilder> {
  @BuiltValueField(wireName: r'user_id')
  int get userId;

  @BuiltValueField(wireName: r'area_id')
  int get areaId;

  @BuiltValueField(wireName: r'widget_code')
  String get widgetCode;

  @BuiltValueField(wireName: r'visible')
  bool? get visible;

  @BuiltValueField(wireName: r'order')
  int? get order;

  @BuiltValueField(wireName: r'config')
  Map<String, dynamic>? get config;

  AdminUserDashboardConfigCreate._();

  factory AdminUserDashboardConfigCreate([void updates(AdminUserDashboardConfigCreateBuilder b)]) = _$AdminUserDashboardConfigCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminUserDashboardConfigCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminUserDashboardConfigCreate> get serializer => _$AdminUserDashboardConfigCreateSerializer();
}

class _$AdminUserDashboardConfigCreateSerializer implements PrimitiveSerializer<AdminUserDashboardConfigCreate> {
  @override
  final Iterable<Type> types = const [AdminUserDashboardConfigCreate, _$AdminUserDashboardConfigCreate];

  @override
  final String wireName = r'AdminUserDashboardConfigCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminUserDashboardConfigCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'user_id';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(int),
    );
    yield r'area_id';
    yield serializers.serialize(
      object.areaId,
      specifiedType: const FullType(int),
    );
    yield r'widget_code';
    yield serializers.serialize(
      object.widgetCode,
      specifiedType: const FullType(String),
    );
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
    AdminUserDashboardConfigCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdminUserDashboardConfigCreateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.userId = valueDes;
          break;
        case r'area_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.areaId = valueDes;
          break;
        case r'widget_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.widgetCode = valueDes;
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
  AdminUserDashboardConfigCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminUserDashboardConfigCreateBuilder();
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

