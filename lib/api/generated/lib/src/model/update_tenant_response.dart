//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/tenant_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_tenant_response.g.dart';

/// Response per update tenant
///
/// Properties:
/// * [message] 
/// * [tenant] 
@BuiltValue()
abstract class UpdateTenantResponse implements Built<UpdateTenantResponse, UpdateTenantResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'tenant')
  TenantInfo get tenant;

  UpdateTenantResponse._();

  factory UpdateTenantResponse([void updates(UpdateTenantResponseBuilder b)]) = _$UpdateTenantResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateTenantResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateTenantResponse> get serializer => _$UpdateTenantResponseSerializer();
}

class _$UpdateTenantResponseSerializer implements PrimitiveSerializer<UpdateTenantResponse> {
  @override
  final Iterable<Type> types = const [UpdateTenantResponse, _$UpdateTenantResponse];

  @override
  final String wireName = r'UpdateTenantResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateTenantResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    yield r'tenant';
    yield serializers.serialize(
      object.tenant,
      specifiedType: const FullType(TenantInfo),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateTenantResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateTenantResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'tenant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TenantInfo),
          ) as TenantInfo;
          result.tenant.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateTenantResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTenantResponseBuilder();
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

