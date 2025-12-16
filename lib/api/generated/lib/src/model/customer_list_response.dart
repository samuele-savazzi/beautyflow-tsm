//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/customer_stats.dart';
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/customer_list_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_list_response.g.dart';

/// CustomerListResponse
///
/// Properties:
/// * [success] 
/// * [count] 
/// * [page] 
/// * [pageSize] 
/// * [totalPages] 
/// * [hasNext] 
/// * [hasPrevious] 
/// * [stats] 
/// * [results] 
@BuiltValue()
abstract class CustomerListResponse implements Built<CustomerListResponse, CustomerListResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'count')
  int get count;

  @BuiltValueField(wireName: r'page')
  int get page;

  @BuiltValueField(wireName: r'page_size')
  int get pageSize;

  @BuiltValueField(wireName: r'total_pages')
  int get totalPages;

  @BuiltValueField(wireName: r'has_next')
  bool get hasNext;

  @BuiltValueField(wireName: r'has_previous')
  bool get hasPrevious;

  @BuiltValueField(wireName: r'stats')
  CustomerStats get stats;

  @BuiltValueField(wireName: r'results')
  BuiltList<CustomerListItem> get results;

  CustomerListResponse._();

  factory CustomerListResponse([void updates(CustomerListResponseBuilder b)]) = _$CustomerListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerListResponse> get serializer => _$CustomerListResponseSerializer();
}

class _$CustomerListResponseSerializer implements PrimitiveSerializer<CustomerListResponse> {
  @override
  final Iterable<Type> types = const [CustomerListResponse, _$CustomerListResponse];

  @override
  final String wireName = r'CustomerListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
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
    yield r'total_pages';
    yield serializers.serialize(
      object.totalPages,
      specifiedType: const FullType(int),
    );
    yield r'has_next';
    yield serializers.serialize(
      object.hasNext,
      specifiedType: const FullType(bool),
    );
    yield r'has_previous';
    yield serializers.serialize(
      object.hasPrevious,
      specifiedType: const FullType(bool),
    );
    yield r'stats';
    yield serializers.serialize(
      object.stats,
      specifiedType: const FullType(CustomerStats),
    );
    yield r'results';
    yield serializers.serialize(
      object.results,
      specifiedType: const FullType(BuiltList, [FullType(CustomerListItem)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerListResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
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
        case r'total_pages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalPages = valueDes;
          break;
        case r'has_next':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasNext = valueDes;
          break;
        case r'has_previous':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasPrevious = valueDes;
          break;
        case r'stats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CustomerStats),
          ) as CustomerStats;
          result.stats.replace(valueDes);
          break;
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CustomerListItem)]),
          ) as BuiltList<CustomerListItem>;
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
  CustomerListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerListResponseBuilder();
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

