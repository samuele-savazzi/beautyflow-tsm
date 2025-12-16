//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/patched_premium_operator_access_premium_type.dart';
import 'package:beautyflow_api/src/model/patched_premium_operator_access_operator.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patched_premium_operator_access.g.dart';

/// Serializer per l'accesso premium degli operatori
///
/// Properties:
/// * [id] 
/// * [premiumType] 
/// * [premiumTypeId] 
/// * [operator_] 
/// * [operatorId] 
/// * [extraDays] - Giorni extra di disponibilità oltre il periodo standard (max 30)
/// * [active] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class PatchedPremiumOperatorAccess implements Built<PatchedPremiumOperatorAccess, PatchedPremiumOperatorAccessBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'premium_type')
  PatchedPremiumOperatorAccessPremiumType? get premiumType;

  @BuiltValueField(wireName: r'premium_type_id')
  int? get premiumTypeId;

  @BuiltValueField(wireName: r'operator')
  PatchedPremiumOperatorAccessOperator? get operator_;

  @BuiltValueField(wireName: r'operator_id')
  int? get operatorId;

  /// Giorni extra di disponibilità oltre il periodo standard (max 30)
  @BuiltValueField(wireName: r'extra_days')
  int? get extraDays;

  @BuiltValueField(wireName: r'active')
  bool? get active;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  PatchedPremiumOperatorAccess._();

  factory PatchedPremiumOperatorAccess([void updates(PatchedPremiumOperatorAccessBuilder b)]) = _$PatchedPremiumOperatorAccess;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchedPremiumOperatorAccessBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchedPremiumOperatorAccess> get serializer => _$PatchedPremiumOperatorAccessSerializer();
}

class _$PatchedPremiumOperatorAccessSerializer implements PrimitiveSerializer<PatchedPremiumOperatorAccess> {
  @override
  final Iterable<Type> types = const [PatchedPremiumOperatorAccess, _$PatchedPremiumOperatorAccess];

  @override
  final String wireName = r'PatchedPremiumOperatorAccess';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchedPremiumOperatorAccess object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.premiumType != null) {
      yield r'premium_type';
      yield serializers.serialize(
        object.premiumType,
        specifiedType: const FullType(PatchedPremiumOperatorAccessPremiumType),
      );
    }
    if (object.premiumTypeId != null) {
      yield r'premium_type_id';
      yield serializers.serialize(
        object.premiumTypeId,
        specifiedType: const FullType(int),
      );
    }
    if (object.operator_ != null) {
      yield r'operator';
      yield serializers.serialize(
        object.operator_,
        specifiedType: const FullType(PatchedPremiumOperatorAccessOperator),
      );
    }
    if (object.operatorId != null) {
      yield r'operator_id';
      yield serializers.serialize(
        object.operatorId,
        specifiedType: const FullType(int),
      );
    }
    if (object.extraDays != null) {
      yield r'extra_days';
      yield serializers.serialize(
        object.extraDays,
        specifiedType: const FullType(int),
      );
    }
    if (object.active != null) {
      yield r'active';
      yield serializers.serialize(
        object.active,
        specifiedType: const FullType(bool),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updated_at';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchedPremiumOperatorAccess object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatchedPremiumOperatorAccessBuilder result,
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
        case r'premium_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PatchedPremiumOperatorAccessPremiumType),
          ) as PatchedPremiumOperatorAccessPremiumType;
          result.premiumType.replace(valueDes);
          break;
        case r'premium_type_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.premiumTypeId = valueDes;
          break;
        case r'operator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PatchedPremiumOperatorAccessOperator),
          ) as PatchedPremiumOperatorAccessOperator;
          result.operator_.replace(valueDes);
          break;
        case r'operator_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.operatorId = valueDes;
          break;
        case r'extra_days':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.extraDays = valueDes;
          break;
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.active = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
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
  PatchedPremiumOperatorAccess deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchedPremiumOperatorAccessBuilder();
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

