//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operator_detail.g.dart';

/// OperatorDetail
///
/// Properties:
/// * [id] 
/// * [firstName] 
/// * [lastName] 
/// * [role] 
/// * [recoveryEmail] 
/// * [birthDate] 
/// * [isActive] 
/// * [isDisabled] 
/// * [attachment] 
/// * [currentDisability] 
/// * [workstations] 
/// * [services] 
/// * [workingAreas] 
/// * [schedules] 
@BuiltValue()
abstract class OperatorDetail implements Built<OperatorDetail, OperatorDetailBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'first_name')
  String get firstName;

  @BuiltValueField(wireName: r'last_name')
  String get lastName;

  @BuiltValueField(wireName: r'role')
  String get role;

  @BuiltValueField(wireName: r'recovery_email')
  String get recoveryEmail;

  @BuiltValueField(wireName: r'birth_date')
  String get birthDate;

  @BuiltValueField(wireName: r'is_active')
  bool get isActive;

  @BuiltValueField(wireName: r'is_disabled')
  bool get isDisabled;

  @BuiltValueField(wireName: r'attachment')
  String? get attachment;

  @BuiltValueField(wireName: r'current_disability')
  BuiltMap<String, Map<String, dynamic>?>? get currentDisability;

  @BuiltValueField(wireName: r'workstations')
  BuiltList<int> get workstations;

  @BuiltValueField(wireName: r'services')
  BuiltList<BuiltMap<String, Map<String, dynamic>?>> get services;

  @BuiltValueField(wireName: r'working_areas')
  BuiltList<BuiltMap<String, Map<String, dynamic>?>> get workingAreas;

  @BuiltValueField(wireName: r'schedules')
  BuiltList<BuiltMap<String, Map<String, dynamic>?>> get schedules;

  OperatorDetail._();

  factory OperatorDetail([void updates(OperatorDetailBuilder b)]) = _$OperatorDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperatorDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperatorDetail> get serializer => _$OperatorDetailSerializer();
}

class _$OperatorDetailSerializer implements PrimitiveSerializer<OperatorDetail> {
  @override
  final Iterable<Type> types = const [OperatorDetail, _$OperatorDetail];

  @override
  final String wireName = r'OperatorDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperatorDetail object, {
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
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(String),
    );
    yield r'recovery_email';
    yield serializers.serialize(
      object.recoveryEmail,
      specifiedType: const FullType(String),
    );
    yield r'birth_date';
    yield serializers.serialize(
      object.birthDate,
      specifiedType: const FullType(String),
    );
    yield r'is_active';
    yield serializers.serialize(
      object.isActive,
      specifiedType: const FullType(bool),
    );
    yield r'is_disabled';
    yield serializers.serialize(
      object.isDisabled,
      specifiedType: const FullType(bool),
    );
    yield r'attachment';
    yield object.attachment == null ? null : serializers.serialize(
      object.attachment,
      specifiedType: const FullType.nullable(String),
    );
    yield r'current_disability';
    yield object.currentDisability == null ? null : serializers.serialize(
      object.currentDisability,
      specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
    );
    yield r'workstations';
    yield serializers.serialize(
      object.workstations,
      specifiedType: const FullType(BuiltList, [FullType(int)]),
    );
    yield r'services';
    yield serializers.serialize(
      object.services,
      specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
    );
    yield r'working_areas';
    yield serializers.serialize(
      object.workingAreas,
      specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
    );
    yield r'schedules';
    yield serializers.serialize(
      object.schedules,
      specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OperatorDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperatorDetailBuilder result,
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
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.role = valueDes;
          break;
        case r'recovery_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.recoveryEmail = valueDes;
          break;
        case r'birth_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.birthDate = valueDes;
          break;
        case r'is_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'is_disabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDisabled = valueDes;
          break;
        case r'attachment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.attachment = valueDes;
          break;
        case r'current_disability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltMap<String, Map<String, dynamic>?>?;
          if (valueDes == null) continue;
          result.currentDisability.replace(valueDes);
          break;
        case r'workstations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.workstations.replace(valueDes);
          break;
        case r'services':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
          ) as BuiltList<BuiltMap<String, Map<String, dynamic>?>>;
          result.services.replace(valueDes);
          break;
        case r'working_areas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
          ) as BuiltList<BuiltMap<String, Map<String, dynamic>?>>;
          result.workingAreas.replace(valueDes);
          break;
        case r'schedules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
          ) as BuiltList<BuiltMap<String, Map<String, dynamic>?>>;
          result.schedules.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OperatorDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperatorDetailBuilder();
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

