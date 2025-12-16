//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/service_with_steps_update.dart';
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/workstation_operator_list.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:beautyflow_api/src/model/working_area_update.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operator_update.g.dart';

/// OperatorUpdate
///
/// Properties:
/// * [firstName] 
/// * [lastName] 
/// * [role] 
/// * [mansion] 
/// * [recoveryEmail] 
/// * [birthDate] 
/// * [isActive] 
/// * [attachment] - Immagine dell'operatore in formato base64
/// * [workstations] 
/// * [services] 
/// * [workingAreas] 
@BuiltValue()
abstract class OperatorUpdate implements Built<OperatorUpdate, OperatorUpdateBuilder> {
  @BuiltValueField(wireName: r'first_name')
  String? get firstName;

  @BuiltValueField(wireName: r'last_name')
  String? get lastName;

  @BuiltValueField(wireName: r'role')
  int? get role;

  @BuiltValueField(wireName: r'mansion')
  String? get mansion;

  @BuiltValueField(wireName: r'recovery_email')
  String? get recoveryEmail;

  @BuiltValueField(wireName: r'birth_date')
  Date? get birthDate;

  @BuiltValueField(wireName: r'is_active')
  bool? get isActive;

  /// Immagine dell'operatore in formato base64
  @BuiltValueField(wireName: r'attachment')
  String? get attachment;

  @BuiltValueField(wireName: r'workstations')
  BuiltList<WorkstationOperatorList>? get workstations;

  @BuiltValueField(wireName: r'services')
  BuiltList<ServiceWithStepsUpdate>? get services;

  @BuiltValueField(wireName: r'working_areas')
  BuiltList<WorkingAreaUpdate>? get workingAreas;

  OperatorUpdate._();

  factory OperatorUpdate([void updates(OperatorUpdateBuilder b)]) = _$OperatorUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperatorUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperatorUpdate> get serializer => _$OperatorUpdateSerializer();
}

class _$OperatorUpdateSerializer implements PrimitiveSerializer<OperatorUpdate> {
  @override
  final Iterable<Type> types = const [OperatorUpdate, _$OperatorUpdate];

  @override
  final String wireName = r'OperatorUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperatorUpdate object, {
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
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(int),
      );
    }
    if (object.mansion != null) {
      yield r'mansion';
      yield serializers.serialize(
        object.mansion,
        specifiedType: const FullType(String),
      );
    }
    if (object.recoveryEmail != null) {
      yield r'recovery_email';
      yield serializers.serialize(
        object.recoveryEmail,
        specifiedType: const FullType(String),
      );
    }
    if (object.birthDate != null) {
      yield r'birth_date';
      yield serializers.serialize(
        object.birthDate,
        specifiedType: const FullType(Date),
      );
    }
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
        specifiedType: const FullType(BuiltList, [FullType(ServiceWithStepsUpdate)]),
      );
    }
    if (object.workingAreas != null) {
      yield r'working_areas';
      yield serializers.serialize(
        object.workingAreas,
        specifiedType: const FullType(BuiltList, [FullType(WorkingAreaUpdate)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OperatorUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperatorUpdateBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(ServiceWithStepsUpdate)]),
          ) as BuiltList<ServiceWithStepsUpdate>;
          result.services.replace(valueDes);
          break;
        case r'working_areas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(WorkingAreaUpdate)]),
          ) as BuiltList<WorkingAreaUpdate>;
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
  OperatorUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperatorUpdateBuilder();
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

