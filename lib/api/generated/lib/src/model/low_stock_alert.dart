//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/product_list.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'low_stock_alert.g.dart';

/// LowStockAlert
///
/// Properties:
/// * [totalAlerts] 
/// * [products] 
@BuiltValue()
abstract class LowStockAlert implements Built<LowStockAlert, LowStockAlertBuilder> {
  @BuiltValueField(wireName: r'total_alerts')
  int get totalAlerts;

  @BuiltValueField(wireName: r'products')
  BuiltList<ProductList> get products;

  LowStockAlert._();

  factory LowStockAlert([void updates(LowStockAlertBuilder b)]) = _$LowStockAlert;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LowStockAlertBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LowStockAlert> get serializer => _$LowStockAlertSerializer();
}

class _$LowStockAlertSerializer implements PrimitiveSerializer<LowStockAlert> {
  @override
  final Iterable<Type> types = const [LowStockAlert, _$LowStockAlert];

  @override
  final String wireName = r'LowStockAlert';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LowStockAlert object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'total_alerts';
    yield serializers.serialize(
      object.totalAlerts,
      specifiedType: const FullType(int),
    );
    yield r'products';
    yield serializers.serialize(
      object.products,
      specifiedType: const FullType(BuiltList, [FullType(ProductList)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LowStockAlert object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LowStockAlertBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total_alerts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalAlerts = valueDes;
          break;
        case r'products':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ProductList)]),
          ) as BuiltList<ProductList>;
          result.products.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LowStockAlert deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LowStockAlertBuilder();
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

