//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/supplier_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'supplier_list_response.g.dart';

/// SupplierListResponse
///
/// Properties:
/// * [success] 
/// * [count] 
/// * [results] 
@BuiltValue()
abstract class SupplierListResponse implements Built<SupplierListResponse, SupplierListResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'count')
  int get count;

  @BuiltValueField(wireName: r'results')
  BuiltList<SupplierList> get results;

  SupplierListResponse._();

  factory SupplierListResponse([void updates(SupplierListResponseBuilder b)]) = _$SupplierListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SupplierListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SupplierListResponse> get serializer => _$SupplierListResponseSerializer();
}

class _$SupplierListResponseSerializer implements PrimitiveSerializer<SupplierListResponse> {
  @override
  final Iterable<Type> types = const [SupplierListResponse, _$SupplierListResponse];

  @override
  final String wireName = r'SupplierListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SupplierListResponse object, {
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
    yield r'results';
    yield serializers.serialize(
      object.results,
      specifiedType: const FullType(BuiltList, [FullType(SupplierList)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SupplierListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SupplierListResponseBuilder result,
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
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SupplierList)]),
          ) as BuiltList<SupplierList>;
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
  SupplierListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SupplierListResponseBuilder();
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

