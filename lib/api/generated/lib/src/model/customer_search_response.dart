//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/customer_search_item.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_search_response.g.dart';

/// CustomerSearchResponse
///
/// Properties:
/// * [results] 
/// * [total] 
/// * [hasMore] 
@BuiltValue()
abstract class CustomerSearchResponse implements Built<CustomerSearchResponse, CustomerSearchResponseBuilder> {
  @BuiltValueField(wireName: r'results')
  BuiltList<CustomerSearchItem> get results;

  @BuiltValueField(wireName: r'total')
  int get total;

  @BuiltValueField(wireName: r'has_more')
  bool get hasMore;

  CustomerSearchResponse._();

  factory CustomerSearchResponse([void updates(CustomerSearchResponseBuilder b)]) = _$CustomerSearchResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerSearchResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerSearchResponse> get serializer => _$CustomerSearchResponseSerializer();
}

class _$CustomerSearchResponseSerializer implements PrimitiveSerializer<CustomerSearchResponse> {
  @override
  final Iterable<Type> types = const [CustomerSearchResponse, _$CustomerSearchResponse];

  @override
  final String wireName = r'CustomerSearchResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerSearchResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'results';
    yield serializers.serialize(
      object.results,
      specifiedType: const FullType(BuiltList, [FullType(CustomerSearchItem)]),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
    yield r'has_more';
    yield serializers.serialize(
      object.hasMore,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerSearchResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerSearchResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CustomerSearchItem)]),
          ) as BuiltList<CustomerSearchItem>;
          result.results.replace(valueDes);
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        case r'has_more':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasMore = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerSearchResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerSearchResponseBuilder();
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

