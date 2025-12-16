//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/dashboard_widget_config.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_dashboard.g.dart';

/// UserDashboard
///
/// Properties:
/// * [widgets] 
@BuiltValue()
abstract class UserDashboard implements Built<UserDashboard, UserDashboardBuilder> {
  @BuiltValueField(wireName: r'widgets')
  BuiltList<DashboardWidgetConfig> get widgets;

  UserDashboard._();

  factory UserDashboard([void updates(UserDashboardBuilder b)]) = _$UserDashboard;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserDashboardBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserDashboard> get serializer => _$UserDashboardSerializer();
}

class _$UserDashboardSerializer implements PrimitiveSerializer<UserDashboard> {
  @override
  final Iterable<Type> types = const [UserDashboard, _$UserDashboard];

  @override
  final String wireName = r'UserDashboard';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserDashboard object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'widgets';
    yield serializers.serialize(
      object.widgets,
      specifiedType: const FullType(BuiltList, [FullType(DashboardWidgetConfig)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserDashboard object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserDashboardBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'widgets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(DashboardWidgetConfig)]),
          ) as BuiltList<DashboardWidgetConfig>;
          result.widgets.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserDashboard deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserDashboardBuilder();
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

