//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/tier_list_item.dart';
import 'package:beautyflow_api/src/model/tenant_tier_detail_billing_cycle_enum.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tenant_tier_detail.g.dart';

/// Dettagli TenantTier con info tier
///
/// Properties:
/// * [id] 
/// * [tenant] 
/// * [tenantName] 
/// * [tier] 
/// * [isActive] 
/// * [isTrial] 
/// * [activatedAt] 
/// * [expiresAt] 
/// * [trialEndsAt] 
/// * [lastRenewedAt] 
/// * [billingCycle] 
/// * [autoRenew] 
/// * [nextBillingDate] 
/// * [usageCount] 
/// * [usageResetDate] 
/// * [lastPaymentAmount] 
/// * [lastPaymentDate] 
/// * [cancelledAt] 
/// * [cancellationReason] 
/// * [activationMetadata] - Metadata attivazione: {\"activated_by_admin\": 5, \"type\": \"manual\", \"reason\": \"Demo\"}
/// * [canUse] 
/// * [usageStatus] 
@BuiltValue()
abstract class TenantTierDetail implements Built<TenantTierDetail, TenantTierDetailBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'tenant')
  int get tenant;

  @BuiltValueField(wireName: r'tenant_name')
  String get tenantName;

  @BuiltValueField(wireName: r'tier')
  TierListItem get tier;

  @BuiltValueField(wireName: r'is_active')
  bool get isActive;

  @BuiltValueField(wireName: r'is_trial')
  bool get isTrial;

  @BuiltValueField(wireName: r'activated_at')
  DateTime get activatedAt;

  @BuiltValueField(wireName: r'expires_at')
  DateTime? get expiresAt;

  @BuiltValueField(wireName: r'trial_ends_at')
  DateTime? get trialEndsAt;

  @BuiltValueField(wireName: r'last_renewed_at')
  DateTime? get lastRenewedAt;

  @BuiltValueField(wireName: r'billing_cycle')
  TenantTierDetailBillingCycleEnum get billingCycle;
  // enum billingCycleEnum {  monthly,  yearly,  };

  @BuiltValueField(wireName: r'auto_renew')
  bool get autoRenew;

  @BuiltValueField(wireName: r'next_billing_date')
  Date? get nextBillingDate;

  @BuiltValueField(wireName: r'usage_count')
  int get usageCount;

  @BuiltValueField(wireName: r'usage_reset_date')
  Date? get usageResetDate;

  @BuiltValueField(wireName: r'last_payment_amount')
  double get lastPaymentAmount;

  @BuiltValueField(wireName: r'last_payment_date')
  DateTime? get lastPaymentDate;

  @BuiltValueField(wireName: r'cancelled_at')
  DateTime? get cancelledAt;

  @BuiltValueField(wireName: r'cancellation_reason')
  String get cancellationReason;

  /// Metadata attivazione: {\"activated_by_admin\": 5, \"type\": \"manual\", \"reason\": \"Demo\"}
  @BuiltValueField(wireName: r'activation_metadata')
  Map<String, dynamic>? get activationMetadata;

  @BuiltValueField(wireName: r'can_use')
  String get canUse;

  @BuiltValueField(wireName: r'usage_status')
  String get usageStatus;

  TenantTierDetail._();

  factory TenantTierDetail([void updates(TenantTierDetailBuilder b)]) = _$TenantTierDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TenantTierDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TenantTierDetail> get serializer => _$TenantTierDetailSerializer();
}

class _$TenantTierDetailSerializer implements PrimitiveSerializer<TenantTierDetail> {
  @override
  final Iterable<Type> types = const [TenantTierDetail, _$TenantTierDetail];

  @override
  final String wireName = r'TenantTierDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TenantTierDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'tenant';
    yield serializers.serialize(
      object.tenant,
      specifiedType: const FullType(int),
    );
    yield r'tenant_name';
    yield serializers.serialize(
      object.tenantName,
      specifiedType: const FullType(String),
    );
    yield r'tier';
    yield serializers.serialize(
      object.tier,
      specifiedType: const FullType(TierListItem),
    );
    yield r'is_active';
    yield serializers.serialize(
      object.isActive,
      specifiedType: const FullType(bool),
    );
    yield r'is_trial';
    yield serializers.serialize(
      object.isTrial,
      specifiedType: const FullType(bool),
    );
    yield r'activated_at';
    yield serializers.serialize(
      object.activatedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'expires_at';
    yield object.expiresAt == null ? null : serializers.serialize(
      object.expiresAt,
      specifiedType: const FullType.nullable(DateTime),
    );
    yield r'trial_ends_at';
    yield object.trialEndsAt == null ? null : serializers.serialize(
      object.trialEndsAt,
      specifiedType: const FullType.nullable(DateTime),
    );
    yield r'last_renewed_at';
    yield object.lastRenewedAt == null ? null : serializers.serialize(
      object.lastRenewedAt,
      specifiedType: const FullType.nullable(DateTime),
    );
    yield r'billing_cycle';
    yield serializers.serialize(
      object.billingCycle,
      specifiedType: const FullType(TenantTierDetailBillingCycleEnum),
    );
    yield r'auto_renew';
    yield serializers.serialize(
      object.autoRenew,
      specifiedType: const FullType(bool),
    );
    yield r'next_billing_date';
    yield object.nextBillingDate == null ? null : serializers.serialize(
      object.nextBillingDate,
      specifiedType: const FullType.nullable(Date),
    );
    yield r'usage_count';
    yield serializers.serialize(
      object.usageCount,
      specifiedType: const FullType(int),
    );
    yield r'usage_reset_date';
    yield object.usageResetDate == null ? null : serializers.serialize(
      object.usageResetDate,
      specifiedType: const FullType.nullable(Date),
    );
    yield r'last_payment_amount';
    yield serializers.serialize(
      object.lastPaymentAmount,
      specifiedType: const FullType(double),
    );
    yield r'last_payment_date';
    yield object.lastPaymentDate == null ? null : serializers.serialize(
      object.lastPaymentDate,
      specifiedType: const FullType.nullable(DateTime),
    );
    yield r'cancelled_at';
    yield object.cancelledAt == null ? null : serializers.serialize(
      object.cancelledAt,
      specifiedType: const FullType.nullable(DateTime),
    );
    yield r'cancellation_reason';
    yield serializers.serialize(
      object.cancellationReason,
      specifiedType: const FullType(String),
    );
    yield r'activation_metadata';
    yield object.activationMetadata == null ? null : serializers.serialize(
      object.activationMetadata,
      specifiedType: const FullType.nullable(Map<String, dynamic>),
    );
    yield r'can_use';
    yield serializers.serialize(
      object.canUse,
      specifiedType: const FullType(String),
    );
    yield r'usage_status';
    yield serializers.serialize(
      object.usageStatus,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TenantTierDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TenantTierDetailBuilder result,
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
        case r'tenant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tenant = valueDes;
          break;
        case r'tenant_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tenantName = valueDes;
          break;
        case r'tier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TierListItem),
          ) as TierListItem;
          result.tier.replace(valueDes);
          break;
        case r'is_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'is_trial':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isTrial = valueDes;
          break;
        case r'activated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.activatedAt = valueDes;
          break;
        case r'expires_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.expiresAt = valueDes;
          break;
        case r'trial_ends_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.trialEndsAt = valueDes;
          break;
        case r'last_renewed_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastRenewedAt = valueDes;
          break;
        case r'billing_cycle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TenantTierDetailBillingCycleEnum),
          ) as TenantTierDetailBillingCycleEnum;
          result.billingCycle = valueDes;
          break;
        case r'auto_renew':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.autoRenew = valueDes;
          break;
        case r'next_billing_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.nextBillingDate = valueDes;
          break;
        case r'usage_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.usageCount = valueDes;
          break;
        case r'usage_reset_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.usageResetDate = valueDes;
          break;
        case r'last_payment_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.lastPaymentAmount = valueDes;
          break;
        case r'last_payment_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastPaymentDate = valueDes;
          break;
        case r'cancelled_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.cancelledAt = valueDes;
          break;
        case r'cancellation_reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cancellationReason = valueDes;
          break;
        case r'activation_metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Map<String, dynamic>),
          ) as Map<String, dynamic>?;
          if (valueDes == null) continue;
          result.activationMetadata = valueDes;
          break;
        case r'can_use':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.canUse = valueDes;
          break;
        case r'usage_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.usageStatus = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TenantTierDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TenantTierDetailBuilder();
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

