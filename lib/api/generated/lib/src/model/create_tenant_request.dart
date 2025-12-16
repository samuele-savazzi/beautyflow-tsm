//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/area_config.dart';
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/type_enum.dart';
import 'package:beautyflow_api/src/model/create_tenant_request_billing_type_enum.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_tenant_request.g.dart';

/// Request per creazione nuovo tenant
///
/// Properties:
/// * [name] - Nome tenant
/// * [domain] - Dominio (es: cliente1)
/// * [type] 
/// * [registeredOffice] - Sede legale
/// * [adminEmail] - Email utente admin
/// * [adminPhone] - Telefono admin
/// * [adminFirstName] 
/// * [adminLastName] 
/// * [quotaTypeCode] - Codice piano (es: FREE, BASIC, PRO)
/// * [billingType] 
/// * [billingDuration] - Durata in anni (solo per billing_type='custom' o 'yearly'). Default: 1 anno
/// * [areas] - Lista aree da creare
/// * [theme] 
/// * [favicon] - File favicon (PNG, ICO, SVG) - max 2MB
/// * [logo] - File logo (PNG, JPG, SVG) - max 5MB
/// * [darkLogo] - File dark logo (PNG, JPG, SVG) - max 5MB
@BuiltValue()
abstract class CreateTenantRequest implements Built<CreateTenantRequest, CreateTenantRequestBuilder> {
  /// Nome tenant
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Dominio (es: cliente1)
  @BuiltValueField(wireName: r'domain')
  String get domain;

  @BuiltValueField(wireName: r'type')
  TypeEnum get type;
  // enum typeEnum {  HAIRDRESSER,  BARBER,  BEAUTICIAN,  SPA,  };

  /// Sede legale
  @BuiltValueField(wireName: r'registered_office')
  String? get registeredOffice;

  /// Email utente admin
  @BuiltValueField(wireName: r'admin_email')
  String get adminEmail;

  /// Telefono admin
  @BuiltValueField(wireName: r'admin_phone')
  String get adminPhone;

  @BuiltValueField(wireName: r'admin_first_name')
  String get adminFirstName;

  @BuiltValueField(wireName: r'admin_last_name')
  String get adminLastName;

  /// Codice piano (es: FREE, BASIC, PRO)
  @BuiltValueField(wireName: r'quota_type_code')
  String get quotaTypeCode;

  @BuiltValueField(wireName: r'billing_type')
  CreateTenantRequestBillingTypeEnum? get billingType;
  // enum billingTypeEnum {  trial,  monthly,  yearly,  custom,  };

  /// Durata in anni (solo per billing_type='custom' o 'yearly'). Default: 1 anno
  @BuiltValueField(wireName: r'billing_duration')
  int? get billingDuration;

  /// Lista aree da creare
  @BuiltValueField(wireName: r'areas')
  BuiltList<AreaConfig> get areas;

  @BuiltValueField(wireName: r'theme')
  Map<String, dynamic>? get theme;

  /// File favicon (PNG, ICO, SVG) - max 2MB
  @BuiltValueField(wireName: r'favicon')
  String? get favicon;

  /// File logo (PNG, JPG, SVG) - max 5MB
  @BuiltValueField(wireName: r'logo')
  String? get logo;

  /// File dark logo (PNG, JPG, SVG) - max 5MB
  @BuiltValueField(wireName: r'dark_logo')
  String? get darkLogo;

  CreateTenantRequest._();

  factory CreateTenantRequest([void updates(CreateTenantRequestBuilder b)]) = _$CreateTenantRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateTenantRequestBuilder b) => b
      ..billingType = CreateTenantRequestBillingTypeEnum.trial;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateTenantRequest> get serializer => _$CreateTenantRequestSerializer();
}

class _$CreateTenantRequestSerializer implements PrimitiveSerializer<CreateTenantRequest> {
  @override
  final Iterable<Type> types = const [CreateTenantRequest, _$CreateTenantRequest];

  @override
  final String wireName = r'CreateTenantRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateTenantRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
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
      specifiedType: const FullType(TypeEnum),
    );
    if (object.registeredOffice != null) {
      yield r'registered_office';
      yield serializers.serialize(
        object.registeredOffice,
        specifiedType: const FullType(String),
      );
    }
    yield r'admin_email';
    yield serializers.serialize(
      object.adminEmail,
      specifiedType: const FullType(String),
    );
    yield r'admin_phone';
    yield serializers.serialize(
      object.adminPhone,
      specifiedType: const FullType(String),
    );
    yield r'admin_first_name';
    yield serializers.serialize(
      object.adminFirstName,
      specifiedType: const FullType(String),
    );
    yield r'admin_last_name';
    yield serializers.serialize(
      object.adminLastName,
      specifiedType: const FullType(String),
    );
    yield r'quota_type_code';
    yield serializers.serialize(
      object.quotaTypeCode,
      specifiedType: const FullType(String),
    );
    if (object.billingType != null) {
      yield r'billing_type';
      yield serializers.serialize(
        object.billingType,
        specifiedType: const FullType(CreateTenantRequestBillingTypeEnum),
      );
    }
    if (object.billingDuration != null) {
      yield r'billing_duration';
      yield serializers.serialize(
        object.billingDuration,
        specifiedType: const FullType(int),
      );
    }
    yield r'areas';
    yield serializers.serialize(
      object.areas,
      specifiedType: const FullType(BuiltList, [FullType(AreaConfig)]),
    );
    if (object.theme != null) {
      yield r'theme';
      yield serializers.serialize(
        object.theme,
        specifiedType: const FullType.nullable(Map<String, dynamic>),
      );
    }
    if (object.favicon != null) {
      yield r'favicon';
      yield serializers.serialize(
        object.favicon,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.logo != null) {
      yield r'logo';
      yield serializers.serialize(
        object.logo,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.darkLogo != null) {
      yield r'dark_logo';
      yield serializers.serialize(
        object.darkLogo,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateTenantRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateTenantRequestBuilder result,
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
            specifiedType: const FullType(TypeEnum),
          ) as TypeEnum;
          result.type = valueDes;
          break;
        case r'registered_office':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.registeredOffice = valueDes;
          break;
        case r'admin_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.adminEmail = valueDes;
          break;
        case r'admin_phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.adminPhone = valueDes;
          break;
        case r'admin_first_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.adminFirstName = valueDes;
          break;
        case r'admin_last_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.adminLastName = valueDes;
          break;
        case r'quota_type_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.quotaTypeCode = valueDes;
          break;
        case r'billing_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateTenantRequestBillingTypeEnum),
          ) as CreateTenantRequestBillingTypeEnum;
          result.billingType = valueDes;
          break;
        case r'billing_duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.billingDuration = valueDes;
          break;
        case r'areas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AreaConfig)]),
          ) as BuiltList<AreaConfig>;
          result.areas.replace(valueDes);
          break;
        case r'theme':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Map<String, dynamic>),
          ) as Map<String, dynamic>?;
          if (valueDes == null) continue;
          result.theme = valueDes;
          break;
        case r'favicon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.favicon = valueDes;
          break;
        case r'logo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.logo = valueDes;
          break;
        case r'dark_logo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.darkLogo = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateTenantRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTenantRequestBuilder();
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

