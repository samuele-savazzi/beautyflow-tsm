//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/tenant_admin_detail.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tenant_admin_list_response.g.dart';

/// TenantAdminListResponse
///
/// Properties:
/// * [count] 
/// * [page] 
/// * [pageSize] 
/// * [results] 
@BuiltValue()
abstract class TenantAdminListResponse implements Built<TenantAdminListResponse, TenantAdminListResponseBuilder> {
  @BuiltValueField(wireName: r'count')
  int get count;

  @BuiltValueField(wireName: r'page')
  int get page;

  @BuiltValueField(wireName: r'page_size')
  int get pageSize;

  @BuiltValueField(wireName: r'results')
  BuiltList<TenantAdminDetail> get results;

  TenantAdminListResponse._();

  factory TenantAdminListResponse([void updates(TenantAdminListResponseBuilder b)]) = _$TenantAdminListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TenantAdminListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TenantAdminListResponse> get serializer => _$TenantAdminListResponseSerializer();
}

class _$TenantAdminListResponseSerializer implements PrimitiveSerializer<TenantAdminListResponse> {
  @override
  final Iterable<Type> types = const [TenantAdminListResponse, _$TenantAdminListResponse];

  @override
  final String wireName = r'TenantAdminListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TenantAdminListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
    yield r'page';
    yield serializers.serialize(
      object.page,
      specifiedType: const FullType(int),
    );
    yield r'page_size';
    yield serializers.serialize(
      object.pageSize,
      specifiedType: const FullType(int),
    );
    yield r'results';
    yield serializers.serialize(
      object.results,
      specifiedType: const FullType(BuiltList, [FullType(TenantAdminDetail)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TenantAdminListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TenantAdminListResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.page = valueDes;
          break;
        case r'page_size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pageSize = valueDes;
          break;
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TenantAdminDetail)]),
          ) as BuiltList<TenantAdminDetail>;
          result.results.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TenantAdminListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TenantAdminListResponseBuilder();
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

