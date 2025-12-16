//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_phone_updated.g.dart';

/// CustomerPhoneUpdated
///
/// Properties:
/// * [phoneNumber] 
/// * [phoneVerified] 
/// * [phoneVerifiedAt] 
@BuiltValue()
abstract class CustomerPhoneUpdated implements Built<CustomerPhoneUpdated, CustomerPhoneUpdatedBuilder> {
  @BuiltValueField(wireName: r'phone_number')
  String get phoneNumber;

  @BuiltValueField(wireName: r'phone_verified')
  bool get phoneVerified;

  @BuiltValueField(wireName: r'phone_verified_at')
  DateTime get phoneVerifiedAt;

  CustomerPhoneUpdated._();

  factory CustomerPhoneUpdated([void updates(CustomerPhoneUpdatedBuilder b)]) = _$CustomerPhoneUpdated;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerPhoneUpdatedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerPhoneUpdated> get serializer => _$CustomerPhoneUpdatedSerializer();
}

class _$CustomerPhoneUpdatedSerializer implements PrimitiveSerializer<CustomerPhoneUpdated> {
  @override
  final Iterable<Type> types = const [CustomerPhoneUpdated, _$CustomerPhoneUpdated];

  @override
  final String wireName = r'CustomerPhoneUpdated';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerPhoneUpdated object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'phone_number';
    yield serializers.serialize(
      object.phoneNumber,
      specifiedType: const FullType(String),
    );
    yield r'phone_verified';
    yield serializers.serialize(
      object.phoneVerified,
      specifiedType: const FullType(bool),
    );
    yield r'phone_verified_at';
    yield serializers.serialize(
      object.phoneVerifiedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerPhoneUpdated object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerPhoneUpdatedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'phone_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phoneNumber = valueDes;
          break;
        case r'phone_verified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.phoneVerified = valueDes;
          break;
        case r'phone_verified_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.phoneVerifiedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerPhoneUpdated deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerPhoneUpdatedBuilder();
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

