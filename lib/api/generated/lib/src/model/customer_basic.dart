//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_basic.g.dart';

/// Serializer minimale per customer (per nested data)
///
/// Properties:
/// * [id] 
/// * [fullName] - Nome completo del cliente
/// * [email] 
@BuiltValue()
abstract class CustomerBasic implements Built<CustomerBasic, CustomerBasicBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  /// Nome completo del cliente
  @BuiltValueField(wireName: r'full_name')
  String get fullName;

  @BuiltValueField(wireName: r'email')
  String get email;

  CustomerBasic._();

  factory CustomerBasic([void updates(CustomerBasicBuilder b)]) = _$CustomerBasic;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerBasicBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerBasic> get serializer => _$CustomerBasicSerializer();
}

class _$CustomerBasicSerializer implements PrimitiveSerializer<CustomerBasic> {
  @override
  final Iterable<Type> types = const [CustomerBasic, _$CustomerBasic];

  @override
  final String wireName = r'CustomerBasic';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerBasic object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'full_name';
    yield serializers.serialize(
      object.fullName,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerBasic object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerBasicBuilder result,
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
        case r'full_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fullName = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerBasic deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerBasicBuilder();
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

