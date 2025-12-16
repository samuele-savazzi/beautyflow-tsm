//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/gender_c3c_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_profile_request.g.dart';

/// UpdateProfileRequest
///
/// Properties:
/// * [firstName] - Nome
/// * [lastName] - Cognome
/// * [birthDate] - Data di nascita (YYYY-MM-DD)
/// * [gender] 
/// * [pathologies] - Patologie
/// * [diseases] - Malattie
/// * [familyAnamnesis] - Anamnesi familiare
/// * [allergies] - Allergie
@BuiltValue()
abstract class UpdateProfileRequest implements Built<UpdateProfileRequest, UpdateProfileRequestBuilder> {
  /// Nome
  @BuiltValueField(wireName: r'first_name')
  String? get firstName;

  /// Cognome
  @BuiltValueField(wireName: r'last_name')
  String? get lastName;

  /// Data di nascita (YYYY-MM-DD)
  @BuiltValueField(wireName: r'birth_date')
  String? get birthDate;

  @BuiltValueField(wireName: r'gender')
  GenderC3cEnum? get gender;
  // enum genderEnum {  M,  F,  U,  };

  /// Patologie
  @BuiltValueField(wireName: r'pathologies')
  String? get pathologies;

  /// Malattie
  @BuiltValueField(wireName: r'diseases')
  String? get diseases;

  /// Anamnesi familiare
  @BuiltValueField(wireName: r'family_anamnesis')
  String? get familyAnamnesis;

  /// Allergie
  @BuiltValueField(wireName: r'allergies')
  String? get allergies;

  UpdateProfileRequest._();

  factory UpdateProfileRequest([void updates(UpdateProfileRequestBuilder b)]) = _$UpdateProfileRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateProfileRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateProfileRequest> get serializer => _$UpdateProfileRequestSerializer();
}

class _$UpdateProfileRequestSerializer implements PrimitiveSerializer<UpdateProfileRequest> {
  @override
  final Iterable<Type> types = const [UpdateProfileRequest, _$UpdateProfileRequest];

  @override
  final String wireName = r'UpdateProfileRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateProfileRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.firstName != null) {
      yield r'first_name';
      yield serializers.serialize(
        object.firstName,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastName != null) {
      yield r'last_name';
      yield serializers.serialize(
        object.lastName,
        specifiedType: const FullType(String),
      );
    }
    if (object.birthDate != null) {
      yield r'birth_date';
      yield serializers.serialize(
        object.birthDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.gender != null) {
      yield r'gender';
      yield serializers.serialize(
        object.gender,
        specifiedType: const FullType(GenderC3cEnum),
      );
    }
    if (object.pathologies != null) {
      yield r'pathologies';
      yield serializers.serialize(
        object.pathologies,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.diseases != null) {
      yield r'diseases';
      yield serializers.serialize(
        object.diseases,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.familyAnamnesis != null) {
      yield r'family_anamnesis';
      yield serializers.serialize(
        object.familyAnamnesis,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.allergies != null) {
      yield r'allergies';
      yield serializers.serialize(
        object.allergies,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateProfileRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateProfileRequestBuilder result,
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
            specifiedType: const FullType(GenderC3cEnum),
          ) as GenderC3cEnum;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateProfileRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateProfileRequestBuilder();
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

