//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_search_item.g.dart';

/// CustomerSearchItem
///
/// Properties:
/// * [id] 
/// * [name] 
@BuiltValue()
abstract class CustomerSearchItem implements Built<CustomerSearchItem, CustomerSearchItemBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  CustomerSearchItem._();

  factory CustomerSearchItem([void updates(CustomerSearchItemBuilder b)]) = _$CustomerSearchItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerSearchItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerSearchItem> get serializer => _$CustomerSearchItemSerializer();
}

class _$CustomerSearchItemSerializer implements PrimitiveSerializer<CustomerSearchItem> {
  @override
  final Iterable<Type> types = const [CustomerSearchItem, _$CustomerSearchItem];

  @override
  final String wireName = r'CustomerSearchItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerSearchItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerSearchItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerSearchItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerSearchItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerSearchItemBuilder();
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

