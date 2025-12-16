//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/type_enum.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_tenant_request.g.dart';

/// Request per update info tenant
///
/// Properties:
/// * [tenantId] - ID del tenant da modificare
/// * [name] 
/// * [registeredOffice] 
/// * [onlineConsultation] 
/// * [type] 
/// * [theme] 
@BuiltValue()
abstract class UpdateTenantRequest implements Built<UpdateTenantRequest, UpdateTenantRequestBuilder> {
  /// ID del tenant da modificare
  @BuiltValueField(wireName: r'tenant_id')
  int get tenantId;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'registered_office')
  String? get registeredOffice;

  @BuiltValueField(wireName: r'online_consultation')
  bool? get onlineConsultation;

  @BuiltValueField(wireName: r'type')
  TypeEnum? get type;
  // enum typeEnum {  HAIRDRESSER,  BARBER,  BEAUTICIAN,  SPA,  };

  @BuiltValueField(wireName: r'theme')
  Map<String, dynamic>? get theme;

  UpdateTenantRequest._();

  factory UpdateTenantRequest([void updates(UpdateTenantRequestBuilder b)]) = _$UpdateTenantRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateTenantRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateTenantRequest> get serializer => _$UpdateTenantRequestSerializer();
}

class _$UpdateTenantRequestSerializer implements PrimitiveSerializer<UpdateTenantRequest> {
  @override
  final Iterable<Type> types = const [UpdateTenantRequest, _$UpdateTenantRequest];

  @override
  final String wireName = r'UpdateTenantRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateTenantRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'tenant_id';
    yield serializers.serialize(
      object.tenantId,
      specifiedType: const FullType(int),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.registeredOffice != null) {
      yield r'registered_office';
      yield serializers.serialize(
        object.registeredOffice,
        specifiedType: const FullType(String),
      );
    }
    if (object.onlineConsultation != null) {
      yield r'online_consultation';
      yield serializers.serialize(
        object.onlineConsultation,
        specifiedType: const FullType(bool),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(TypeEnum),
      );
    }
    if (object.theme != null) {
      yield r'theme';
      yield serializers.serialize(
        object.theme,
        specifiedType: const FullType.nullable(Map<String, dynamic>),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateTenantRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateTenantRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tenant_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tenantId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TypeEnum),
          ) as TypeEnum;
          result.type = valueDes;
          break;
        case r'theme':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Map<String, dynamic>),
          ) as Map<String, dynamic>?;
          if (valueDes == null) continue;
          result.theme = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateTenantRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTenantRequestBuilder();
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

