//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tenant_detail.g.dart';

/// Response dettaglio tenant creato
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [schemaName] 
/// * [domain] 
/// * [type] 
/// * [createdOn] 
/// * [adminUserId] 
/// * [areasCreated] 
/// * [quotaPlan] 
@BuiltValue()
abstract class TenantDetail implements Built<TenantDetail, TenantDetailBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'schema_name')
  String get schemaName;

  @BuiltValueField(wireName: r'domain')
  String get domain;

  @BuiltValueField(wireName: r'type')
  String get type;

  @BuiltValueField(wireName: r'created_on')
  Date get createdOn;

  @BuiltValueField(wireName: r'admin_user_id')
  int get adminUserId;

  @BuiltValueField(wireName: r'areas_created')
  BuiltList<String> get areasCreated;

  @BuiltValueField(wireName: r'quota_plan')
  String get quotaPlan;

  TenantDetail._();

  factory TenantDetail([void updates(TenantDetailBuilder b)]) = _$TenantDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TenantDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TenantDetail> get serializer => _$TenantDetailSerializer();
}

class _$TenantDetailSerializer implements PrimitiveSerializer<TenantDetail> {
  @override
  final Iterable<Type> types = const [TenantDetail, _$TenantDetail];

  @override
  final String wireName = r'TenantDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TenantDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'schema_name';
    yield serializers.serialize(
      object.schemaName,
      specifiedType: const FullType(String),
    );
    yield r'domain';
    yield serializers.serialize(
      object.domain,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'created_on';
    yield serializers.serialize(
      object.createdOn,
      specifiedType: const FullType(Date),
    );
    yield r'admin_user_id';
    yield serializers.serialize(
      object.adminUserId,
      specifiedType: const FullType(int),
    );
    yield r'areas_created';
    yield serializers.serialize(
      object.areasCreated,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'quota_plan';
    yield serializers.serialize(
      object.quotaPlan,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TenantDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TenantDetailBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'schema_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.schemaName = valueDes;
          break;
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domain = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'created_on':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.createdOn = valueDes;
          break;
        case r'admin_user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.adminUserId = valueDes;
          break;
        case r'areas_created':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.areasCreated.replace(valueDes);
          break;
        case r'quota_plan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.quotaPlan = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TenantDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TenantDetailBuilder();
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

