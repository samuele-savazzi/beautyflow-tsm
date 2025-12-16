//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_updated.g.dart';

/// CustomerUpdated
///
/// Properties:
/// * [id] 
/// * [firstName] 
/// * [lastName] 
/// * [fullName] 
/// * [birthDate] 
/// * [gender] 
/// * [pathologies] 
/// * [diseases] 
/// * [familyAnamnesis] 
/// * [allergies] 
/// * [blocked] 
/// * [blockedMotivation] 
/// * [valid] 
/// * [updatedAt] 
@BuiltValue()
abstract class CustomerUpdated implements Built<CustomerUpdated, CustomerUpdatedBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'first_name')
  String get firstName;

  @BuiltValueField(wireName: r'last_name')
  String get lastName;

  @BuiltValueField(wireName: r'full_name')
  String get fullName;

  @BuiltValueField(wireName: r'birth_date')
  Date get birthDate;

  @BuiltValueField(wireName: r'gender')
  String get gender;

  @BuiltValueField(wireName: r'pathologies')
  String? get pathologies;

  @BuiltValueField(wireName: r'diseases')
  String? get diseases;

  @BuiltValueField(wireName: r'family_anamnesis')
  String? get familyAnamnesis;

  @BuiltValueField(wireName: r'allergies')
  String? get allergies;

  @BuiltValueField(wireName: r'blocked')
  bool get blocked;

  @BuiltValueField(wireName: r'blocked_motivation')
  String? get blockedMotivation;

  @BuiltValueField(wireName: r'valid')
  bool get valid;

  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  CustomerUpdated._();

  factory CustomerUpdated([void updates(CustomerUpdatedBuilder b)]) = _$CustomerUpdated;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerUpdatedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerUpdated> get serializer => _$CustomerUpdatedSerializer();
}

class _$CustomerUpdatedSerializer implements PrimitiveSerializer<CustomerUpdated> {
  @override
  final Iterable<Type> types = const [CustomerUpdated, _$CustomerUpdated];

  @override
  final String wireName = r'CustomerUpdated';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerUpdated object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
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
    yield r'full_name';
    yield serializers.serialize(
      object.fullName,
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
      specifiedType: const FullType(String),
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
    yield r'valid';
    yield serializers.serialize(
      object.valid,
      specifiedType: const FullType(bool),
    );
    yield r'updated_at';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerUpdated object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerUpdatedBuilder result,
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
        case r'full_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fullName = valueDes;
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
            specifiedType: const FullType(String),
          ) as String;
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
        case r'valid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.valid = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerUpdated deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerUpdatedBuilder();
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

