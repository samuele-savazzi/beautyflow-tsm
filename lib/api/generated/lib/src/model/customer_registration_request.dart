//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/gender_c3c_enum.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_registration_request.g.dart';

/// CustomerRegistrationRequest
///
/// Properties:
/// * [email] 
/// * [password] 
/// * [firstName] 
/// * [lastName] 
/// * [birthDate] 
/// * [gender] 
/// * [phoneNumber] 
/// * [invitationToken] - Token di invito opzionale
@BuiltValue()
abstract class CustomerRegistrationRequest implements Built<CustomerRegistrationRequest, CustomerRegistrationRequestBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'password')
  String get password;

  @BuiltValueField(wireName: r'first_name')
  String get firstName;

  @BuiltValueField(wireName: r'last_name')
  String get lastName;

  @BuiltValueField(wireName: r'birth_date')
  Date get birthDate;

  @BuiltValueField(wireName: r'gender')
  GenderC3cEnum get gender;
  // enum genderEnum {  M,  F,  U,  };

  @BuiltValueField(wireName: r'phone_number')
  String get phoneNumber;

  /// Token di invito opzionale
  @BuiltValueField(wireName: r'invitation_token')
  String? get invitationToken;

  CustomerRegistrationRequest._();

  factory CustomerRegistrationRequest([void updates(CustomerRegistrationRequestBuilder b)]) = _$CustomerRegistrationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerRegistrationRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerRegistrationRequest> get serializer => _$CustomerRegistrationRequestSerializer();
}

class _$CustomerRegistrationRequestSerializer implements PrimitiveSerializer<CustomerRegistrationRequest> {
  @override
  final Iterable<Type> types = const [CustomerRegistrationRequest, _$CustomerRegistrationRequest];

  @override
  final String wireName = r'CustomerRegistrationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerRegistrationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
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
    yield r'birth_date';
    yield serializers.serialize(
      object.birthDate,
      specifiedType: const FullType(Date),
    );
    yield r'gender';
    yield serializers.serialize(
      object.gender,
      specifiedType: const FullType(GenderC3cEnum),
    );
    yield r'phone_number';
    yield serializers.serialize(
      object.phoneNumber,
      specifiedType: const FullType(String),
    );
    if (object.invitationToken != null) {
      yield r'invitation_token';
      yield serializers.serialize(
        object.invitationToken,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerRegistrationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerRegistrationRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
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
        case r'birth_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.birthDate = valueDes;
          break;
        case r'gender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GenderC3cEnum),
          ) as GenderC3cEnum;
          result.gender = valueDes;
          break;
        case r'phone_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phoneNumber = valueDes;
          break;
        case r'invitation_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.invitationToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerRegistrationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerRegistrationRequestBuilder();
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

