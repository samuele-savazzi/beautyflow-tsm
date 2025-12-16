//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_list_item.g.dart';

/// CustomerListItem
///
/// Properties:
/// * [id] 
/// * [fullName] 
/// * [phoneNumber] 
/// * [birthDate] 
/// * [gender] 
/// * [valid] 
/// * [blocked] 
/// * [blockedMotivation] 
/// * [phoneVerified] 
/// * [createdAt] 
/// * [totalBookings] 
/// * [lastBookingDate] 
/// * [isPremium] 
/// * [totalSpent] 
@BuiltValue()
abstract class CustomerListItem implements Built<CustomerListItem, CustomerListItemBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'full_name')
  String get fullName;

  @BuiltValueField(wireName: r'phone_number')
  String get phoneNumber;

  @BuiltValueField(wireName: r'birth_date')
  String get birthDate;

  @BuiltValueField(wireName: r'gender')
  String get gender;

  @BuiltValueField(wireName: r'valid')
  bool get valid;

  @BuiltValueField(wireName: r'blocked')
  bool get blocked;

  @BuiltValueField(wireName: r'blocked_motivation')
  String? get blockedMotivation;

  @BuiltValueField(wireName: r'phone_verified')
  bool get phoneVerified;

  @BuiltValueField(wireName: r'created_at')
  String get createdAt;

  @BuiltValueField(wireName: r'total_bookings')
  int get totalBookings;

  @BuiltValueField(wireName: r'last_booking_date')
  String? get lastBookingDate;

  @BuiltValueField(wireName: r'is_premium')
  bool get isPremium;

  @BuiltValueField(wireName: r'total_spent')
  double get totalSpent;

  CustomerListItem._();

  factory CustomerListItem([void updates(CustomerListItemBuilder b)]) = _$CustomerListItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerListItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerListItem> get serializer => _$CustomerListItemSerializer();
}

class _$CustomerListItemSerializer implements PrimitiveSerializer<CustomerListItem> {
  @override
  final Iterable<Type> types = const [CustomerListItem, _$CustomerListItem];

  @override
  final String wireName = r'CustomerListItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerListItem object, {
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
    yield r'phone_number';
    yield serializers.serialize(
      object.phoneNumber,
      specifiedType: const FullType(String),
    );
    yield r'birth_date';
    yield serializers.serialize(
      object.birthDate,
      specifiedType: const FullType(String),
    );
    yield r'gender';
    yield serializers.serialize(
      object.gender,
      specifiedType: const FullType(String),
    );
    yield r'valid';
    yield serializers.serialize(
      object.valid,
      specifiedType: const FullType(bool),
    );
    yield r'blocked';
    yield serializers.serialize(
      object.blocked,
      specifiedType: const FullType(bool),
    );
    yield r'blocked_motivation';
    yield object.blockedMotivation == null ? null : serializers.serialize(
      object.blockedMotivation,
      specifiedType: const FullType.nullable(String),
    );
    yield r'phone_verified';
    yield serializers.serialize(
      object.phoneVerified,
      specifiedType: const FullType(bool),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(String),
    );
    yield r'total_bookings';
    yield serializers.serialize(
      object.totalBookings,
      specifiedType: const FullType(int),
    );
    yield r'last_booking_date';
    yield object.lastBookingDate == null ? null : serializers.serialize(
      object.lastBookingDate,
      specifiedType: const FullType.nullable(String),
    );
    yield r'is_premium';
    yield serializers.serialize(
      object.isPremium,
      specifiedType: const FullType(bool),
    );
    yield r'total_spent';
    yield serializers.serialize(
      object.totalSpent,
      specifiedType: const FullType(double),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerListItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerListItemBuilder result,
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
        case r'phone_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phoneNumber = valueDes;
          break;
        case r'birth_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.birthDate = valueDes;
          break;
        case r'gender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gender = valueDes;
          break;
        case r'valid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.valid = valueDes;
          break;
        case r'blocked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.blocked = valueDes;
          break;
        case r'blocked_motivation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.blockedMotivation = valueDes;
          break;
        case r'phone_verified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.phoneVerified = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'total_bookings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalBookings = valueDes;
          break;
        case r'last_booking_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastBookingDate = valueDes;
          break;
        case r'is_premium':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isPremium = valueDes;
          break;
        case r'total_spent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalSpent = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerListItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerListItemBuilder();
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

