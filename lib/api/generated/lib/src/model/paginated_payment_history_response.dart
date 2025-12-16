//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/payment_record.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'paginated_payment_history_response.g.dart';

/// PaginatedPaymentHistoryResponse
///
/// Properties:
/// * [count] - Numero totale di transazioni
/// * [page] - Pagina corrente
/// * [pageSize] - Elementi per pagina
/// * [totalPages] - Numero totale di pagine
/// * [results] - Lista transazioni paginate
@BuiltValue()
abstract class PaginatedPaymentHistoryResponse implements Built<PaginatedPaymentHistoryResponse, PaginatedPaymentHistoryResponseBuilder> {
  /// Numero totale di transazioni
  @BuiltValueField(wireName: r'count')
  int get count;

  /// Pagina corrente
  @BuiltValueField(wireName: r'page')
  int get page;

  /// Elementi per pagina
  @BuiltValueField(wireName: r'page_size')
  int get pageSize;

  /// Numero totale di pagine
  @BuiltValueField(wireName: r'total_pages')
  int get totalPages;

  /// Lista transazioni paginate
  @BuiltValueField(wireName: r'results')
  BuiltList<PaymentRecord> get results;

  PaginatedPaymentHistoryResponse._();

  factory PaginatedPaymentHistoryResponse([void updates(PaginatedPaymentHistoryResponseBuilder b)]) = _$PaginatedPaymentHistoryResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaginatedPaymentHistoryResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaginatedPaymentHistoryResponse> get serializer => _$PaginatedPaymentHistoryResponseSerializer();
}

class _$PaginatedPaymentHistoryResponseSerializer implements PrimitiveSerializer<PaginatedPaymentHistoryResponse> {
  @override
  final Iterable<Type> types = const [PaginatedPaymentHistoryResponse, _$PaginatedPaymentHistoryResponse];

  @override
  final String wireName = r'PaginatedPaymentHistoryResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaginatedPaymentHistoryResponse object, {
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
    yield r'total_pages';
    yield serializers.serialize(
      object.totalPages,
      specifiedType: const FullType(int),
    );
    yield r'results';
    yield serializers.serialize(
      object.results,
      specifiedType: const FullType(BuiltList, [FullType(PaymentRecord)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PaginatedPaymentHistoryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaginatedPaymentHistoryResponseBuilder result,
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
        case r'total_pages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalPages = valueDes;
          break;
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PaymentRecord)]),
          ) as BuiltList<PaymentRecord>;
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
  PaginatedPaymentHistoryResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaginatedPaymentHistoryResponseBuilder();
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

