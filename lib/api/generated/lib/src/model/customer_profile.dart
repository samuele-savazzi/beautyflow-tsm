//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_profile.g.dart';

/// CustomerProfile
///
/// Properties:
/// * [id] 
/// * [fullName] 
/// * [firstName] 
/// * [lastName] 
/// * [email] 
/// * [phoneNumber] 
/// * [birthDate] 
/// * [gender] 
/// * [phoneVerified] 
/// * [pathologies] 
/// * [diseases] 
/// * [familyAnamnesis] 
/// * [allergies] 
/// * [createdAt] 
@BuiltValue()
abstract class CustomerProfile implements Built<CustomerProfile, CustomerProfileBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'full_name')
  String get fullName;

  @BuiltValueField(wireName: r'first_name')
  String get firstName;

  @BuiltValueField(wireName: r'last_name')
  String get lastName;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'phone_number')
  String get phoneNumber;

  @BuiltValueField(wireName: r'birth_date')
  String get birthDate;

  @BuiltValueField(wireName: r'gender')
  String get gender;

  @BuiltValueField(wireName: r'phone_verified')
  bool get phoneVerified;

  @BuiltValueField(wireName: r'pathologies')
  String get pathologies;

  @BuiltValueField(wireName: r'diseases')
  String get diseases;

  @BuiltValueField(wireName: r'family_anamnesis')
  String get familyAnamnesis;

  @BuiltValueField(wireName: r'allergies')
  String get allergies;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  CustomerProfile._();

  factory CustomerProfile([void updates(CustomerProfileBuilder b)]) = _$CustomerProfile;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerProfileBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerProfile> get serializer => _$CustomerProfileSerializer();
}

class _$CustomerProfileSerializer implements PrimitiveSerializer<CustomerProfile> {
  @override
  final Iterable<Type> types = const [CustomerProfile, _$CustomerProfile];

  @override
  final String wireName = r'CustomerProfile';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerProfile object, {
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
    yield r'first_name';
    yield serializers.serialize(
      object.firstName,
      specifiedType: const FullType(String),
    );
    yield r'last_name';
    yield serializers.serialize(
      object.lastName,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
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
    yield r'phone_verified';
    yield serializers.serialize(
      object.phoneVerified,
      specifiedType: const FullType(bool),
    );
    yield r'pathologies';
    yield serializers.serialize(
      object.pathologies,
      specifiedType: const FullType(String),
    );
    yield r'diseases';
    yield serializers.serialize(
      object.diseases,
      specifiedType: const FullType(String),
    );
    yield r'family_anamnesis';
    yield serializers.serialize(
      object.familyAnamnesis,
      specifiedType: const FullType(String),
    );
    yield r'allergies';
    yield serializers.serialize(
      object.allergies,
      specifiedType: const FullType(String),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerProfile object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerProfileBuilder result,
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
        case r'first_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.firstName = valueDes;
          break;
        case r'last_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastName = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
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
        case r'phone_verified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.phoneVerified = valueDes;
          break;
        case r'pathologies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pathologies = valueDes;
          break;
        case r'diseases':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.diseases = valueDes;
          break;
        case r'family_anamnesis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.familyAnamnesis = valueDes;
          break;
        case r'allergies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.allergies = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerProfile deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerProfileBuilder();
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

