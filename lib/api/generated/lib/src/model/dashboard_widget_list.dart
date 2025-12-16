//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/authorization_requirement.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dashboard_widget_list.g.dart';

/// DashboardWidgetList
///
/// Properties:
/// * [id] 
/// * [code] 
/// * [name] 
/// * [description] 
/// * [category] 
/// * [icon] 
/// * [defaultVisible] 
/// * [defaultConfig] 
/// * [forOperator] 
/// * [forOperatorAuthorized] 
/// * [forAdmin] 
/// * [forSecretariat] 
/// * [forTitular] 
/// * [requiredWidgets] 
/// * [mutuallyExclusiveWith] 
/// * [requiredAuthorizations] 
@BuiltValue()
abstract class DashboardWidgetList implements Built<DashboardWidgetList, DashboardWidgetListBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'category')
  String get category;

  @BuiltValueField(wireName: r'icon')
  String get icon;

  @BuiltValueField(wireName: r'default_visible')
  bool get defaultVisible;

  @BuiltValueField(wireName: r'default_config')
  Map<String, dynamic>? get defaultConfig;

  @BuiltValueField(wireName: r'for_operator')
  bool get forOperator;

  @BuiltValueField(wireName: r'for_operator_authorized')
  bool get forOperatorAuthorized;

  @BuiltValueField(wireName: r'for_admin')
  bool get forAdmin;

  @BuiltValueField(wireName: r'for_secretariat')
  bool get forSecretariat;

  @BuiltValueField(wireName: r'for_titular')
  bool get forTitular;

  @BuiltValueField(wireName: r'required_widgets')
  BuiltList<String> get requiredWidgets;

  @BuiltValueField(wireName: r'mutually_exclusive_with')
  BuiltList<String> get mutuallyExclusiveWith;

  @BuiltValueField(wireName: r'required_authorizations')
  BuiltList<AuthorizationRequirement> get requiredAuthorizations;

  DashboardWidgetList._();

  factory DashboardWidgetList([void updates(DashboardWidgetListBuilder b)]) = _$DashboardWidgetList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DashboardWidgetListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DashboardWidgetList> get serializer => _$DashboardWidgetListSerializer();
}

class _$DashboardWidgetListSerializer implements PrimitiveSerializer<DashboardWidgetList> {
  @override
  final Iterable<Type> types = const [DashboardWidgetList, _$DashboardWidgetList];

  @override
  final String wireName = r'DashboardWidgetList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DashboardWidgetList object, {
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
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'category';
    yield serializers.serialize(
      object.category,
      specifiedType: const FullType(String),
    );
    yield r'icon';
    yield serializers.serialize(
      object.icon,
      specifiedType: const FullType(String),
    );
    yield r'default_visible';
    yield serializers.serialize(
      object.defaultVisible,
      specifiedType: const FullType(bool),
    );
    yield r'default_config';
    yield object.defaultConfig == null ? null : serializers.serialize(
      object.defaultConfig,
      specifiedType: const FullType.nullable(Map<String, dynamic>),
    );
    yield r'for_operator';
    yield serializers.serialize(
      object.forOperator,
      specifiedType: const FullType(bool),
    );
    yield r'for_operator_authorized';
    yield serializers.serialize(
      object.forOperatorAuthorized,
      specifiedType: const FullType(bool),
    );
    yield r'for_admin';
    yield serializers.serialize(
      object.forAdmin,
      specifiedType: const FullType(bool),
    );
    yield r'for_secretariat';
    yield serializers.serialize(
      object.forSecretariat,
      specifiedType: const FullType(bool),
    );
    yield r'for_titular';
    yield serializers.serialize(
      object.forTitular,
      specifiedType: const FullType(bool),
    );
    yield r'required_widgets';
    yield serializers.serialize(
      object.requiredWidgets,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'mutually_exclusive_with';
    yield serializers.serialize(
      object.mutuallyExclusiveWith,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'required_authorizations';
    yield serializers.serialize(
      object.requiredAuthorizations,
      specifiedType: const FullType(BuiltList, [FullType(AuthorizationRequirement)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DashboardWidgetList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DashboardWidgetListBuilder result,
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
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
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
        case r'default_config':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Map<String, dynamic>),
          ) as Map<String, dynamic>?;
          if (valueDes == null) continue;
          result.defaultConfig = valueDes;
          break;
        case r'for_operator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.forOperator = valueDes;
          break;
        case r'for_operator_authorized':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.forOperatorAuthorized = valueDes;
          break;
        case r'for_admin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.forAdmin = valueDes;
          break;
        case r'for_secretariat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.forSecretariat = valueDes;
          break;
        case r'for_titular':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.forTitular = valueDes;
          break;
        case r'required_widgets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.requiredWidgets.replace(valueDes);
          break;
        case r'mutually_exclusive_with':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.mutuallyExclusiveWith.replace(valueDes);
          break;
        case r'required_authorizations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AuthorizationRequirement)]),
          ) as BuiltList<AuthorizationRequirement>;
          result.requiredAuthorizations.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DashboardWidgetList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DashboardWidgetListBuilder();
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

