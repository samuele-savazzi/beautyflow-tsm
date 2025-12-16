//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:beautyflow_api/src/model/gender63e_enum.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_invitation_create_request.g.dart';

/// CustomerInvitationCreateRequest
///
/// Properties:
/// * [firstName] 
/// * [lastName] 
/// * [email] 
/// * [phoneNumber] - Numero di telefono necessario per invio SMS
/// * [birthDate] 
/// * [gender] 
/// * [pathologies] 
/// * [diseases] 
/// * [familyAnamnesis] 
/// * [allergies] 
/// * [notesForCustomer] 
/// * [suggestedConsents] 
@BuiltValue()
abstract class CustomerInvitationCreateRequest implements Built<CustomerInvitationCreateRequest, CustomerInvitationCreateRequestBuilder> {
  @BuiltValueField(wireName: r'first_name')
  String get firstName;

  @BuiltValueField(wireName: r'last_name')
  String get lastName;

  @BuiltValueField(wireName: r'email')
  String get email;

  /// Numero di telefono necessario per invio SMS
  @BuiltValueField(wireName: r'phone_number')
  String get phoneNumber;

  @BuiltValueField(wireName: r'birth_date')
  Date? get birthDate;

  @BuiltValueField(wireName: r'gender')
  Gender63eEnum? get gender;
  // enum genderEnum {  M,  F,  U,  };

  @BuiltValueField(wireName: r'pathologies')
  String? get pathologies;

  @BuiltValueField(wireName: r'diseases')
  String? get diseases;

  @BuiltValueField(wireName: r'family_anamnesis')
  String? get familyAnamnesis;

  @BuiltValueField(wireName: r'allergies')
  String? get allergies;

  @BuiltValueField(wireName: r'notes_for_customer')
  String? get notesForCustomer;

  @BuiltValueField(wireName: r'suggested_consents')
  BuiltMap<String, Map<String, dynamic>?>? get suggestedConsents;

  CustomerInvitationCreateRequest._();

  factory CustomerInvitationCreateRequest([void updates(CustomerInvitationCreateRequestBuilder b)]) = _$CustomerInvitationCreateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerInvitationCreateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerInvitationCreateRequest> get serializer => _$CustomerInvitationCreateRequestSerializer();
}

class _$CustomerInvitationCreateRequestSerializer implements PrimitiveSerializer<CustomerInvitationCreateRequest> {
  @override
  final Iterable<Type> types = const [CustomerInvitationCreateRequest, _$CustomerInvitationCreateRequest];

  @override
  final String wireName = r'CustomerInvitationCreateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerInvitationCreateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.birthDate != null) {
      yield r'birth_date';
      yield serializers.serialize(
        object.birthDate,
        specifiedType: const FullType.nullable(Date),
      );
    }
    if (object.gender != null) {
      yield r'gender';
      yield serializers.serialize(
        object.gender,
        specifiedType: const FullType.nullable(Gender63eEnum),
      );
    }
    if (object.pathologies != null) {
      yield r'pathologies';
      yield serializers.serialize(
        object.pathologies,
        specifiedType: const FullType(String),
      );
    }
    if (object.diseases != null) {
      yield r'diseases';
      yield serializers.serialize(
        object.diseases,
        specifiedType: const FullType(String),
      );
    }
    if (object.familyAnamnesis != null) {
      yield r'family_anamnesis';
      yield serializers.serialize(
        object.familyAnamnesis,
        specifiedType: const FullType(String),
      );
    }
    if (object.allergies != null) {
      yield r'allergies';
      yield serializers.serialize(
        object.allergies,
        specifiedType: const FullType(String),
      );
    }
    if (object.notesForCustomer != null) {
      yield r'notes_for_customer';
      yield serializers.serialize(
        object.notesForCustomer,
        specifiedType: const FullType(String),
      );
    }
    if (object.suggestedConsents != null) {
      yield r'suggested_consents';
      yield serializers.serialize(
        object.suggestedConsents,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerInvitationCreateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerInvitationCreateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.birthDate = valueDes;
          break;
        case r'gender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Gender63eEnum),
          ) as Gender63eEnum?;
          if (valueDes == null) continue;
          result.gender = valueDes;
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
        case r'notes_for_customer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.notesForCustomer = valueDes;
          break;
        case r'suggested_consents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltMap<String, Map<String, dynamic>?>;
          result.suggestedConsents.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerInvitationCreateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerInvitationCreateRequestBuilder();
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

