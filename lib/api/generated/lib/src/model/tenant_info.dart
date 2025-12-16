//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tenant_info.g.dart';

/// Serializer completo info tenant
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [schemaName] 
/// * [type] 
/// * [createdOn] 
/// * [paidUntil] 
/// * [registeredOffice] 
/// * [onlineConsultation] 
/// * [theme] 
/// * [faviconUrl] 
/// * [logoUrl] 
/// * [darkLogoUrl] 
/// * [setupCompleted] 
/// * [configurationStatus] 
/// * [domain] 
@BuiltValue()
abstract class TenantInfo implements Built<TenantInfo, TenantInfoBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'schema_name')
  String get schemaName;

  @BuiltValueField(wireName: r'type')
  String get type;

  @BuiltValueField(wireName: r'created_on')
  Date get createdOn;

  @BuiltValueField(wireName: r'paid_until')
  Date get paidUntil;

  @BuiltValueField(wireName: r'registered_office')
  String get registeredOffice;

  @BuiltValueField(wireName: r'online_consultation')
  bool get onlineConsultation;

  @BuiltValueField(wireName: r'theme')
  Map<String, dynamic>? get theme;

  @BuiltValueField(wireName: r'favicon_url')
  String? get faviconUrl;

  @BuiltValueField(wireName: r'logo_url')
  String? get logoUrl;

  @BuiltValueField(wireName: r'dark_logo_url')
  String? get darkLogoUrl;

  @BuiltValueField(wireName: r'setup_completed')
  bool get setupCompleted;

  @BuiltValueField(wireName: r'configuration_status')
  Map<String, dynamic>? get configurationStatus;

  @BuiltValueField(wireName: r'domain')
  String get domain;

  TenantInfo._();

  factory TenantInfo([void updates(TenantInfoBuilder b)]) = _$TenantInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TenantInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TenantInfo> get serializer => _$TenantInfoSerializer();
}

class _$TenantInfoSerializer implements PrimitiveSerializer<TenantInfo> {
  @override
  final Iterable<Type> types = const [TenantInfo, _$TenantInfo];

  @override
  final String wireName = r'TenantInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TenantInfo object, {
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
    yield r'paid_until';
    yield serializers.serialize(
      object.paidUntil,
      specifiedType: const FullType(Date),
    );
    yield r'registered_office';
    yield serializers.serialize(
      object.registeredOffice,
      specifiedType: const FullType(String),
    );
    yield r'online_consultation';
    yield serializers.serialize(
      object.onlineConsultation,
      specifiedType: const FullType(bool),
    );
    yield r'theme';
    yield object.theme == null ? null : serializers.serialize(
      object.theme,
      specifiedType: const FullType.nullable(Map<String, dynamic>),
    );
    if (object.faviconUrl != null) {
      yield r'favicon_url';
      yield serializers.serialize(
        object.faviconUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.logoUrl != null) {
      yield r'logo_url';
      yield serializers.serialize(
        object.logoUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.darkLogoUrl != null) {
      yield r'dark_logo_url';
      yield serializers.serialize(
        object.darkLogoUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'setup_completed';
    yield serializers.serialize(
      object.setupCompleted,
      specifiedType: const FullType(bool),
    );
    yield r'configuration_status';
    yield object.configurationStatus == null ? null : serializers.serialize(
      object.configurationStatus,
      specifiedType: const FullType.nullable(Map<String, dynamic>),
    );
    yield r'domain';
    yield serializers.serialize(
      object.domain,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TenantInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TenantInfoBuilder result,
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
        case r'paid_until':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.paidUntil = valueDes;
          break;
        case r'registered_office':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.registeredOffice = valueDes;
          break;
        case r'online_consultation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.onlineConsultation = valueDes;
          break;
        case r'theme':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Map<String, dynamic>),
          ) as Map<String, dynamic>?;
          if (valueDes == null) continue;
          result.theme = valueDes;
          break;
        case r'favicon_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.faviconUrl = valueDes;
          break;
        case r'logo_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.logoUrl = valueDes;
          break;
        case r'dark_logo_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.darkLogoUrl = valueDes;
          break;
        case r'setup_completed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.setupCompleted = valueDes;
          break;
        case r'configuration_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Map<String, dynamic>),
          ) as Map<String, dynamic>?;
          if (valueDes == null) continue;
          result.configurationStatus = valueDes;
          break;
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domain = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TenantInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TenantInfoBuilder();
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

