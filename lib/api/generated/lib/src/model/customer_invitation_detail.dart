//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_invitation_detail.g.dart';

/// CustomerInvitationDetail
///
/// Properties:
/// * [id] 
/// * [firstName] 
/// * [lastName] 
/// * [email] 
/// * [phoneNumber] 
/// * [birthDate] 
/// * [gender] 
/// * [pathologies] 
/// * [diseases] 
/// * [familyAnamnesis] 
/// * [allergies] 
/// * [notesForCustomer] 
/// * [suggestedConsents] 
/// * [status] 
/// * [createdAt] 
/// * [expiresAt] 
/// * [acceptedAt] 
/// * [isValid] 
/// * [isExpired] 
@BuiltValue()
abstract class CustomerInvitationDetail implements Built<CustomerInvitationDetail, CustomerInvitationDetailBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'first_name')
  String get firstName;

  @BuiltValueField(wireName: r'last_name')
  String get lastName;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: r'birth_date')
  Date? get birthDate;

  @BuiltValueField(wireName: r'gender')
  String? get gender;

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
  BuiltMap<String, Map<String, dynamic>?> get suggestedConsents;

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'expires_at')
  DateTime get expiresAt;

  @BuiltValueField(wireName: r'accepted_at')
  DateTime? get acceptedAt;

  @BuiltValueField(wireName: r'is_valid')
  bool get isValid;

  @BuiltValueField(wireName: r'is_expired')
  bool get isExpired;

  CustomerInvitationDetail._();

  factory CustomerInvitationDetail([void updates(CustomerInvitationDetailBuilder b)]) = _$CustomerInvitationDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerInvitationDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerInvitationDetail> get serializer => _$CustomerInvitationDetailSerializer();
}

class _$CustomerInvitationDetailSerializer implements PrimitiveSerializer<CustomerInvitationDetail> {
  @override
  final Iterable<Type> types = const [CustomerInvitationDetail, _$CustomerInvitationDetail];

  @override
  final String wireName = r'CustomerInvitationDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerInvitationDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
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
    yield object.phoneNumber == null ? null : serializers.serialize(
      object.phoneNumber,
      specifiedType: const FullType.nullable(String),
    );
    yield r'birth_date';
    yield object.birthDate == null ? null : serializers.serialize(
      object.birthDate,
      specifiedType: const FullType.nullable(Date),
    );
    yield r'gender';
    yield object.gender == null ? null : serializers.serialize(
      object.gender,
      specifiedType: const FullType.nullable(String),
    );
    yield r'pathologies';
    yield object.pathologies == null ? null : serializers.serialize(
      object.pathologies,
      specifiedType: const FullType.nullable(String),
    );
    yield r'diseases';
    yield object.diseases == null ? null : serializers.serialize(
      object.diseases,
      specifiedType: const FullType.nullable(String),
    );
    yield r'family_anamnesis';
    yield object.familyAnamnesis == null ? null : serializers.serialize(
      object.familyAnamnesis,
      specifiedType: const FullType.nullable(String),
    );
    yield r'allergies';
    yield object.allergies == null ? null : serializers.serialize(
      object.allergies,
      specifiedType: const FullType.nullable(String),
    );
    yield r'notes_for_customer';
    yield object.notesForCustomer == null ? null : serializers.serialize(
      object.notesForCustomer,
      specifiedType: const FullType.nullable(String),
    );
    yield r'suggested_consents';
    yield serializers.serialize(
      object.suggestedConsents,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'expires_at';
    yield serializers.serialize(
      object.expiresAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'accepted_at';
    yield object.acceptedAt == null ? null : serializers.serialize(
      object.acceptedAt,
      specifiedType: const FullType.nullable(DateTime),
    );
    yield r'is_valid';
    yield serializers.serialize(
      object.isValid,
      specifiedType: const FullType(bool),
    );
    yield r'is_expired';
    yield serializers.serialize(
      object.isExpired,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerInvitationDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerInvitationDetailBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
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
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
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
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.gender = valueDes;
          break;
        case r'pathologies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pathologies = valueDes;
          break;
        case r'diseases':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.diseases = valueDes;
          break;
        case r'family_anamnesis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.familyAnamnesis = valueDes;
          break;
        case r'allergies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.allergies = valueDes;
          break;
        case r'notes_for_customer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.notesForCustomer = valueDes;
          break;
        case r'suggested_consents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltMap<String, Map<String, dynamic>?>;
          result.suggestedConsents.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'expires_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiresAt = valueDes;
          break;
        case r'accepted_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.acceptedAt = valueDes;
          break;
        case r'is_valid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isValid = valueDes;
          break;
        case r'is_expired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isExpired = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerInvitationDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerInvitationDetailBuilder();
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

