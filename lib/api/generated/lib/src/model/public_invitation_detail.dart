//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'public_invitation_detail.g.dart';

/// PublicInvitationDetail
///
/// Properties:
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
/// * [createdByName] 
/// * [expiresAt] 
/// * [isValid] 
/// * [isExpired] 
@BuiltValue()
abstract class PublicInvitationDetail implements Built<PublicInvitationDetail, PublicInvitationDetailBuilder> {
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

  @BuiltValueField(wireName: r'created_by_name')
  String get createdByName;

  @BuiltValueField(wireName: r'expires_at')
  DateTime get expiresAt;

  @BuiltValueField(wireName: r'is_valid')
  bool get isValid;

  @BuiltValueField(wireName: r'is_expired')
  bool get isExpired;

  PublicInvitationDetail._();

  factory PublicInvitationDetail([void updates(PublicInvitationDetailBuilder b)]) = _$PublicInvitationDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PublicInvitationDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PublicInvitationDetail> get serializer => _$PublicInvitationDetailSerializer();
}

class _$PublicInvitationDetailSerializer implements PrimitiveSerializer<PublicInvitationDetail> {
  @override
  final Iterable<Type> types = const [PublicInvitationDetail, _$PublicInvitationDetail];

  @override
  final String wireName = r'PublicInvitationDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PublicInvitationDetail object, {
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
    yield r'created_by_name';
    yield serializers.serialize(
      object.createdByName,
      specifiedType: const FullType(String),
    );
    yield r'expires_at';
    yield serializers.serialize(
      object.expiresAt,
      specifiedType: const FullType(DateTime),
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
    PublicInvitationDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PublicInvitationDetailBuilder result,
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
        case r'created_by_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdByName = valueDes;
          break;
        case r'expires_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiresAt = valueDes;
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
  PublicInvitationDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PublicInvitationDetailBuilder();
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

