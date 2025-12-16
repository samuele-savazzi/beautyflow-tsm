//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quota_info_response.g.dart';

/// QuotaInfoResponse
///
/// Properties:
/// * [planName] - Nome del piano commerciale corrente
/// * [planExpiresAt] - Data di scadenza del piano
/// * [billingCycle] - Ciclo di fatturazione (monthly/yearly/one_time)
/// * [autoRenew] - Rinnovo automatico attivo
/// * [isActive] - Quota attiva
/// * [smsQuotaLimit] - Limite SMS totali
/// * [smsQuotaUsed] - SMS già utilizzati
/// * [smsQuotaRemaining] - SMS rimanenti
/// * [smsLastResetDate] - Data ultimo reset SMS
/// * [defaultMaxOperatorsPerArea] - Limite default operatori per area
/// * [defaultMaxWorkstationsPerOperator] - Limite default workstation per operatore
/// * [lastPaymentDate] - Data ultimo pagamento
/// * [lastPaymentAmount] - Importo ultimo pagamento
@BuiltValue()
abstract class QuotaInfoResponse implements Built<QuotaInfoResponse, QuotaInfoResponseBuilder> {
  /// Nome del piano commerciale corrente
  @BuiltValueField(wireName: r'plan_name')
  String? get planName;

  /// Data di scadenza del piano
  @BuiltValueField(wireName: r'plan_expires_at')
  String? get planExpiresAt;

  /// Ciclo di fatturazione (monthly/yearly/one_time)
  @BuiltValueField(wireName: r'billing_cycle')
  String get billingCycle;

  /// Rinnovo automatico attivo
  @BuiltValueField(wireName: r'auto_renew')
  bool get autoRenew;

  /// Quota attiva
  @BuiltValueField(wireName: r'is_active')
  bool get isActive;

  /// Limite SMS totali
  @BuiltValueField(wireName: r'sms_quota_limit')
  int get smsQuotaLimit;

  /// SMS già utilizzati
  @BuiltValueField(wireName: r'sms_quota_used')
  int get smsQuotaUsed;

  /// SMS rimanenti
  @BuiltValueField(wireName: r'sms_quota_remaining')
  int get smsQuotaRemaining;

  /// Data ultimo reset SMS
  @BuiltValueField(wireName: r'sms_last_reset_date')
  String get smsLastResetDate;

  /// Limite default operatori per area
  @BuiltValueField(wireName: r'default_max_operators_per_area')
  int get defaultMaxOperatorsPerArea;

  /// Limite default workstation per operatore
  @BuiltValueField(wireName: r'default_max_workstations_per_operator')
  int get defaultMaxWorkstationsPerOperator;

  /// Data ultimo pagamento
  @BuiltValueField(wireName: r'last_payment_date')
  DateTime? get lastPaymentDate;

  /// Importo ultimo pagamento
  @BuiltValueField(wireName: r'last_payment_amount')
  double get lastPaymentAmount;

  QuotaInfoResponse._();

  factory QuotaInfoResponse([void updates(QuotaInfoResponseBuilder b)]) = _$QuotaInfoResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuotaInfoResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuotaInfoResponse> get serializer => _$QuotaInfoResponseSerializer();
}

class _$QuotaInfoResponseSerializer implements PrimitiveSerializer<QuotaInfoResponse> {
  @override
  final Iterable<Type> types = const [QuotaInfoResponse, _$QuotaInfoResponse];

  @override
  final String wireName = r'QuotaInfoResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuotaInfoResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'plan_name';
    yield object.planName == null ? null : serializers.serialize(
      object.planName,
      specifiedType: const FullType.nullable(String),
    );
    yield r'plan_expires_at';
    yield object.planExpiresAt == null ? null : serializers.serialize(
      object.planExpiresAt,
      specifiedType: const FullType.nullable(String),
    );
    yield r'billing_cycle';
    yield serializers.serialize(
      object.billingCycle,
      specifiedType: const FullType(String),
    );
    yield r'auto_renew';
    yield serializers.serialize(
      object.autoRenew,
      specifiedType: const FullType(bool),
    );
    yield r'is_active';
    yield serializers.serialize(
      object.isActive,
      specifiedType: const FullType(bool),
    );
    yield r'sms_quota_limit';
    yield serializers.serialize(
      object.smsQuotaLimit,
      specifiedType: const FullType(int),
    );
    yield r'sms_quota_used';
    yield serializers.serialize(
      object.smsQuotaUsed,
      specifiedType: const FullType(int),
    );
    yield r'sms_quota_remaining';
    yield serializers.serialize(
      object.smsQuotaRemaining,
      specifiedType: const FullType(int),
    );
    yield r'sms_last_reset_date';
    yield serializers.serialize(
      object.smsLastResetDate,
      specifiedType: const FullType(String),
    );
    yield r'default_max_operators_per_area';
    yield serializers.serialize(
      object.defaultMaxOperatorsPerArea,
      specifiedType: const FullType(int),
    );
    yield r'default_max_workstations_per_operator';
    yield serializers.serialize(
      object.defaultMaxWorkstationsPerOperator,
      specifiedType: const FullType(int),
    );
    yield r'last_payment_date';
    yield object.lastPaymentDate == null ? null : serializers.serialize(
      object.lastPaymentDate,
      specifiedType: const FullType.nullable(DateTime),
    );
    yield r'last_payment_amount';
    yield serializers.serialize(
      object.lastPaymentAmount,
      specifiedType: const FullType(double),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    QuotaInfoResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QuotaInfoResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'plan_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.planName = valueDes;
          break;
        case r'plan_expires_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.planExpiresAt = valueDes;
          break;
        case r'billing_cycle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.billingCycle = valueDes;
          break;
        case r'auto_renew':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.autoRenew = valueDes;
          break;
        case r'is_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'sms_quota_limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.smsQuotaLimit = valueDes;
          break;
        case r'sms_quota_used':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.smsQuotaUsed = valueDes;
          break;
        case r'sms_quota_remaining':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.smsQuotaRemaining = valueDes;
          break;
        case r'sms_last_reset_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.smsLastResetDate = valueDes;
          break;
        case r'default_max_operators_per_area':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.defaultMaxOperatorsPerArea = valueDes;
          break;
        case r'default_max_workstations_per_operator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.defaultMaxWorkstationsPerOperator = valueDes;
          break;
        case r'last_payment_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastPaymentDate = valueDes;
          break;
        case r'last_payment_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.lastPaymentAmount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QuotaInfoResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuotaInfoResponseBuilder();
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

