//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/tenant_detail.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_tenant_response.g.dart';

/// Response per creazione tenant
///
/// Properties:
/// * [message] 
/// * [tenant] 
/// * [warnings] - Eventuali warning durante creazione
@BuiltValue()
abstract class CreateTenantResponse implements Built<CreateTenantResponse, CreateTenantResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'tenant')
  TenantDetail get tenant;

  /// Eventuali warning durante creazione
  @BuiltValueField(wireName: r'warnings')
  BuiltList<String>? get warnings;

  CreateTenantResponse._();

  factory CreateTenantResponse([void updates(CreateTenantResponseBuilder b)]) = _$CreateTenantResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateTenantResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateTenantResponse> get serializer => _$CreateTenantResponseSerializer();
}

class _$CreateTenantResponseSerializer implements PrimitiveSerializer<CreateTenantResponse> {
  @override
  final Iterable<Type> types = const [CreateTenantResponse, _$CreateTenantResponse];

  @override
  final String wireName = r'CreateTenantResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateTenantResponse object, {
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
      specifiedType: const FullType(TenantDetail),
    );
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateTenantResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateTenantResponseBuilder result,
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
            specifiedType: const FullType(TenantDetail),
          ) as TenantDetail;
          result.tenant.replace(valueDes);
          break;
        case r'warnings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.warnings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateTenantResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTenantResponseBuilder();
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

