//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/operator_service_with_steps.dart';
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/workstation_operator_list.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:beautyflow_api/src/model/operator_area_working_day.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operator_create.g.dart';

/// OperatorCreate
///
/// Properties:
/// * [firstName] - Nome dell'operatore
/// * [lastName] - Cognome dell'operatore
/// * [role] - Ruolo dell'operatore in id
/// * [mansion] - Mansione dell'operatore
/// * [recoveryEmail] - Email di recupero
/// * [birthDate] - Data di nascita
/// * [isActive] - Indica se l'operatore è attivo
/// * [attachment] - Immagine dell'operatore in formato base64
/// * [workstations] 
/// * [services] - Lista dei servizi da associare all'operatore con relativi step e categorie
/// * [workingAreas] - Lista delle aree di lavoro con relativi orari
@BuiltValue()
abstract class OperatorCreate implements Built<OperatorCreate, OperatorCreateBuilder> {
  /// Nome dell'operatore
  @BuiltValueField(wireName: r'first_name')
  String get firstName;

  /// Cognome dell'operatore
  @BuiltValueField(wireName: r'last_name')
  String get lastName;

  /// Ruolo dell'operatore in id
  @BuiltValueField(wireName: r'role')
  int get role;

  /// Mansione dell'operatore
  @BuiltValueField(wireName: r'mansion')
  String get mansion;

  /// Email di recupero
  @BuiltValueField(wireName: r'recovery_email')
  String get recoveryEmail;

  /// Data di nascita
  @BuiltValueField(wireName: r'birth_date')
  Date get birthDate;

  /// Indica se l'operatore è attivo
  @BuiltValueField(wireName: r'is_active')
  bool? get isActive;

  /// Immagine dell'operatore in formato base64
  @BuiltValueField(wireName: r'attachment')
  String? get attachment;

  @BuiltValueField(wireName: r'workstations')
  BuiltList<WorkstationOperatorList>? get workstations;

  /// Lista dei servizi da associare all'operatore con relativi step e categorie
  @BuiltValueField(wireName: r'services')
  BuiltList<OperatorServiceWithSteps>? get services;

  /// Lista delle aree di lavoro con relativi orari
  @BuiltValueField(wireName: r'working_areas')
  BuiltList<OperatorAreaWorkingDay>? get workingAreas;

  OperatorCreate._();

  factory OperatorCreate([void updates(OperatorCreateBuilder b)]) = _$OperatorCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperatorCreateBuilder b) => b
      ..isActive = true
      ..workstations = ListBuilder()
      ..services = ListBuilder()
      ..workingAreas = ListBuilder();

  @BuiltValueSerializer(custom: true)
  static Serializer<OperatorCreate> get serializer => _$OperatorCreateSerializer();
}

class _$OperatorCreateSerializer implements PrimitiveSerializer<OperatorCreate> {
  @override
  final Iterable<Type> types = const [OperatorCreate, _$OperatorCreate];

  @override
  final String wireName = r'OperatorCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperatorCreate object, {
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
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(int),
    );
    yield r'mansion';
    yield serializers.serialize(
      object.mansion,
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
      specifiedType: const FullType(Date),
    );
    if (object.isActive != null) {
      yield r'is_active';
      yield serializers.serialize(
        object.isActive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.attachment != null) {
      yield r'attachment';
      yield serializers.serialize(
        object.attachment,
        specifiedType: const FullType(String),
      );
    }
    if (object.workstations != null) {
      yield r'workstations';
      yield serializers.serialize(
        object.workstations,
        specifiedType: const FullType(BuiltList, [FullType(WorkstationOperatorList)]),
      );
    }
    if (object.services != null) {
      yield r'services';
      yield serializers.serialize(
        object.services,
        specifiedType: const FullType(BuiltList, [FullType(OperatorServiceWithSteps)]),
      );
    }
    if (object.workingAreas != null) {
      yield r'working_areas';
      yield serializers.serialize(
        object.workingAreas,
        specifiedType: const FullType(BuiltList, [FullType(OperatorAreaWorkingDay)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OperatorCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperatorCreateBuilder result,
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
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.role = valueDes;
          break;
        case r'mansion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mansion = valueDes;
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
            specifiedType: const FullType(Date),
          ) as Date;
          result.birthDate = valueDes;
          break;
        case r'is_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'attachment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.attachment = valueDes;
          break;
        case r'workstations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(WorkstationOperatorList)]),
          ) as BuiltList<WorkstationOperatorList>;
          result.workstations.replace(valueDes);
          break;
        case r'services':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OperatorServiceWithSteps)]),
          ) as BuiltList<OperatorServiceWithSteps>;
          result.services.replace(valueDes);
          break;
        case r'working_areas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OperatorAreaWorkingDay)]),
          ) as BuiltList<OperatorAreaWorkingDay>;
          result.workingAreas.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OperatorCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperatorCreateBuilder();
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

