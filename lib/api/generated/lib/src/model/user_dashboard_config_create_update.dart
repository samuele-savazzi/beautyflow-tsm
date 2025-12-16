//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_dashboard_config_create_update.g.dart';

/// UserDashboardConfigCreateUpdate
///
/// Properties:
/// * [areaId] 
/// * [widgetCode] 
/// * [visible] 
/// * [order] 
/// * [config] 
@BuiltValue()
abstract class UserDashboardConfigCreateUpdate implements Built<UserDashboardConfigCreateUpdate, UserDashboardConfigCreateUpdateBuilder> {
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

  UserDashboardConfigCreateUpdate._();

  factory UserDashboardConfigCreateUpdate([void updates(UserDashboardConfigCreateUpdateBuilder b)]) = _$UserDashboardConfigCreateUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserDashboardConfigCreateUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserDashboardConfigCreateUpdate> get serializer => _$UserDashboardConfigCreateUpdateSerializer();
}

class _$UserDashboardConfigCreateUpdateSerializer implements PrimitiveSerializer<UserDashboardConfigCreateUpdate> {
  @override
  final Iterable<Type> types = const [UserDashboardConfigCreateUpdate, _$UserDashboardConfigCreateUpdate];

  @override
  final String wireName = r'UserDashboardConfigCreateUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserDashboardConfigCreateUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    UserDashboardConfigCreateUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserDashboardConfigCreateUpdateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  UserDashboardConfigCreateUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserDashboardConfigCreateUpdateBuilder();
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

