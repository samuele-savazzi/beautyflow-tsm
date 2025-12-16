//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/activate_tier_request_billing_cycle_enum.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'activate_tier_request.g.dart';

/// Request per attivare Tier su tenant
///
/// Properties:
/// * [tierId] - ID tier da attivare
/// * [isTrial] - Attiva in modalità trial
/// * [billingCycle] 
/// * [autoRenew] - Rinnovo automatico
/// * [expiresAt] - Data scadenza (opzionale)
/// * [activationMetadata] - Metadata attivazione
@BuiltValue()
abstract class ActivateTierRequest implements Built<ActivateTierRequest, ActivateTierRequestBuilder> {
  /// ID tier da attivare
  @BuiltValueField(wireName: r'tier_id')
  int get tierId;

  /// Attiva in modalità trial
  @BuiltValueField(wireName: r'is_trial')
  bool? get isTrial;

  @BuiltValueField(wireName: r'billing_cycle')
  ActivateTierRequestBillingCycleEnum? get billingCycle;
  // enum billingCycleEnum {  monthly,  yearly,  };

  /// Rinnovo automatico
  @BuiltValueField(wireName: r'auto_renew')
  bool? get autoRenew;

  /// Data scadenza (opzionale)
  @BuiltValueField(wireName: r'expires_at')
  DateTime? get expiresAt;

  /// Metadata attivazione
  @BuiltValueField(wireName: r'activation_metadata')
  Map<String, dynamic>? get activationMetadata;

  ActivateTierRequest._();

  factory ActivateTierRequest([void updates(ActivateTierRequestBuilder b)]) = _$ActivateTierRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActivateTierRequestBuilder b) => b
      ..isTrial = false
      ..billingCycle = ActivateTierRequestBillingCycleEnum.monthly
      ..autoRenew = true;

  @BuiltValueSerializer(custom: true)
  static Serializer<ActivateTierRequest> get serializer => _$ActivateTierRequestSerializer();
}

class _$ActivateTierRequestSerializer implements PrimitiveSerializer<ActivateTierRequest> {
  @override
  final Iterable<Type> types = const [ActivateTierRequest, _$ActivateTierRequest];

  @override
  final String wireName = r'ActivateTierRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ActivateTierRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'tier_id';
    yield serializers.serialize(
      object.tierId,
      specifiedType: const FullType(int),
    );
    if (object.isTrial != null) {
      yield r'is_trial';
      yield serializers.serialize(
        object.isTrial,
        specifiedType: const FullType(bool),
      );
    }
    if (object.billingCycle != null) {
      yield r'billing_cycle';
      yield serializers.serialize(
        object.billingCycle,
        specifiedType: const FullType(ActivateTierRequestBillingCycleEnum),
      );
    }
    if (object.autoRenew != null) {
      yield r'auto_renew';
      yield serializers.serialize(
        object.autoRenew,
        specifiedType: const FullType(bool),
      );
    }
    if (object.expiresAt != null) {
      yield r'expires_at';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.activationMetadata != null) {
      yield r'activation_metadata';
      yield serializers.serialize(
        object.activationMetadata,
        specifiedType: const FullType.nullable(Map<String, dynamic>),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ActivateTierRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ActivateTierRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tier_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tierId = valueDes;
          break;
        case r'is_trial':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isTrial = valueDes;
          break;
        case r'billing_cycle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ActivateTierRequestBillingCycleEnum),
          ) as ActivateTierRequestBillingCycleEnum;
          result.billingCycle = valueDes;
          break;
        case r'auto_renew':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.autoRenew = valueDes;
          break;
        case r'expires_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.expiresAt = valueDes;
          break;
        case r'activation_metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Map<String, dynamic>),
          ) as Map<String, dynamic>?;
          if (valueDes == null) continue;
          result.activationMetadata = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ActivateTierRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActivateTierRequestBuilder();
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

