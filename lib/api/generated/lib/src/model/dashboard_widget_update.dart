//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dashboard_widget_update.g.dart';

/// DashboardWidgetUpdate
///
/// Properties:
/// * [name] 
/// * [description] 
/// * [category] 
/// * [icon] 
/// * [defaultVisible] 
/// * [minRoleLevel] 
/// * [defaultConfig] 
@BuiltValue()
abstract class DashboardWidgetUpdate implements Built<DashboardWidgetUpdate, DashboardWidgetUpdateBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'category')
  String? get category;

  @BuiltValueField(wireName: r'icon')
  String? get icon;

  @BuiltValueField(wireName: r'default_visible')
  bool? get defaultVisible;

  @BuiltValueField(wireName: r'min_role_level')
  int? get minRoleLevel;

  @BuiltValueField(wireName: r'default_config')
  Map<String, dynamic>? get defaultConfig;

  DashboardWidgetUpdate._();

  factory DashboardWidgetUpdate([void updates(DashboardWidgetUpdateBuilder b)]) = _$DashboardWidgetUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DashboardWidgetUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DashboardWidgetUpdate> get serializer => _$DashboardWidgetUpdateSerializer();
}

class _$DashboardWidgetUpdateSerializer implements PrimitiveSerializer<DashboardWidgetUpdate> {
  @override
  final Iterable<Type> types = const [DashboardWidgetUpdate, _$DashboardWidgetUpdate];

  @override
  final String wireName = r'DashboardWidgetUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DashboardWidgetUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType(String),
      );
    }
    if (object.icon != null) {
      yield r'icon';
      yield serializers.serialize(
        object.icon,
        specifiedType: const FullType(String),
      );
    }
    if (object.defaultVisible != null) {
      yield r'default_visible';
      yield serializers.serialize(
        object.defaultVisible,
        specifiedType: const FullType(bool),
      );
    }
    if (object.minRoleLevel != null) {
      yield r'min_role_level';
      yield serializers.serialize(
        object.minRoleLevel,
        specifiedType: const FullType(int),
      );
    }
    if (object.defaultConfig != null) {
      yield r'default_config';
      yield serializers.serialize(
        object.defaultConfig,
        specifiedType: const FullType.nullable(Map<String, dynamic>),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DashboardWidgetUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DashboardWidgetUpdateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.category = valueDes;
          break;
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.icon = valueDes;
          break;
        case r'default_visible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.defaultVisible = valueDes;
          break;
        case r'min_role_level':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.minRoleLevel = valueDes;
          break;
        case r'default_config':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Map<String, dynamic>),
          ) as Map<String, dynamic>?;
          if (valueDes == null) continue;
          result.defaultConfig = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DashboardWidgetUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DashboardWidgetUpdateBuilder();
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

