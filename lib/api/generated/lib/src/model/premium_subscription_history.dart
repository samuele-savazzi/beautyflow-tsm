//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:beautyflow_api/src/model/premium_subscription_history_movement_type_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'premium_subscription_history.g.dart';

/// Serializer per lo storico delle subscription premium
///
/// Properties:
/// * [id] 
/// * [subscription] - Subscription premium di riferimento
/// * [customer] - Cliente proprietario della subscription
/// * [customerName] 
/// * [premiumType] - Piano premium associato
/// * [premiumTypeName] 
/// * [movementType] 
/// * [movementTypeDisplay] 
/// * [periodStartDate] 
/// * [periodEndDate] 
/// * [periodDays] - Durata del periodo in giorni
/// * [paidPrice] - Importo effettivamente pagato
/// * [originalPrice] - Prezzo di listino del piano
/// * [discountApplied] - Percentuale di sconto applicata
/// * [discountAmount] 
/// * [totalSavings] 
/// * [notes] - Note aggiuntive sulla movimentazione
/// * [createdBy] - Utente che ha effettuato l'operazione
/// * [createdByName] 
/// * [createdAt] 
/// * [snapshotData] - Snapshot dello stato al momento della movimentazione (operatori, sconti, etc.)
@BuiltValue()
abstract class PremiumSubscriptionHistory implements Built<PremiumSubscriptionHistory, PremiumSubscriptionHistoryBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  /// Subscription premium di riferimento
  @BuiltValueField(wireName: r'subscription')
  int get subscription;

  /// Cliente proprietario della subscription
  @BuiltValueField(wireName: r'customer')
  int get customer;

  @BuiltValueField(wireName: r'customer_name')
  String get customerName;

  /// Piano premium associato
  @BuiltValueField(wireName: r'premium_type')
  int get premiumType;

  @BuiltValueField(wireName: r'premium_type_name')
  String get premiumTypeName;

  @BuiltValueField(wireName: r'movement_type')
  PremiumSubscriptionHistoryMovementTypeEnum get movementType;
  // enum movementTypeEnum {  CREATE,  RENEWAL,  MODIFY,  CANCEL,  REACTIVATE,  UPGRADE,  DOWNGRADE,  };

  @BuiltValueField(wireName: r'movement_type_display')
  String get movementTypeDisplay;

  @BuiltValueField(wireName: r'period_start_date')
  String get periodStartDate;

  @BuiltValueField(wireName: r'period_end_date')
  String get periodEndDate;

  /// Durata del periodo in giorni
  @BuiltValueField(wireName: r'period_days')
  int get periodDays;

  /// Importo effettivamente pagato
  @BuiltValueField(wireName: r'paid_price')
  double get paidPrice;

  /// Prezzo di listino del piano
  @BuiltValueField(wireName: r'original_price')
  double get originalPrice;

  /// Percentuale di sconto applicata
  @BuiltValueField(wireName: r'discount_applied')
  double? get discountApplied;

  @BuiltValueField(wireName: r'discount_amount')
  String get discountAmount;

  @BuiltValueField(wireName: r'total_savings')
  String get totalSavings;

  /// Note aggiuntive sulla movimentazione
  @BuiltValueField(wireName: r'notes')
  String? get notes;

  /// Utente che ha effettuato l'operazione
  @BuiltValueField(wireName: r'created_by')
  int? get createdBy;

  @BuiltValueField(wireName: r'created_by_name')
  String get createdByName;

  @BuiltValueField(wireName: r'created_at')
  String get createdAt;

  /// Snapshot dello stato al momento della movimentazione (operatori, sconti, etc.)
  @BuiltValueField(wireName: r'snapshot_data')
  Map<String, dynamic>? get snapshotData;

  PremiumSubscriptionHistory._();

  factory PremiumSubscriptionHistory([void updates(PremiumSubscriptionHistoryBuilder b)]) = _$PremiumSubscriptionHistory;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PremiumSubscriptionHistoryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PremiumSubscriptionHistory> get serializer => _$PremiumSubscriptionHistorySerializer();
}

class _$PremiumSubscriptionHistorySerializer implements PrimitiveSerializer<PremiumSubscriptionHistory> {
  @override
  final Iterable<Type> types = const [PremiumSubscriptionHistory, _$PremiumSubscriptionHistory];

  @override
  final String wireName = r'PremiumSubscriptionHistory';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PremiumSubscriptionHistory object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'subscription';
    yield serializers.serialize(
      object.subscription,
      specifiedType: const FullType(int),
    );
    yield r'customer';
    yield serializers.serialize(
      object.customer,
      specifiedType: const FullType(int),
    );
    yield r'customer_name';
    yield serializers.serialize(
      object.customerName,
      specifiedType: const FullType(String),
    );
    yield r'premium_type';
    yield serializers.serialize(
      object.premiumType,
      specifiedType: const FullType(int),
    );
    yield r'premium_type_name';
    yield serializers.serialize(
      object.premiumTypeName,
      specifiedType: const FullType(String),
    );
    yield r'movement_type';
    yield serializers.serialize(
      object.movementType,
      specifiedType: const FullType(PremiumSubscriptionHistoryMovementTypeEnum),
    );
    yield r'movement_type_display';
    yield serializers.serialize(
      object.movementTypeDisplay,
      specifiedType: const FullType(String),
    );
    yield r'period_start_date';
    yield serializers.serialize(
      object.periodStartDate,
      specifiedType: const FullType(String),
    );
    yield r'period_end_date';
    yield serializers.serialize(
      object.periodEndDate,
      specifiedType: const FullType(String),
    );
    yield r'period_days';
    yield serializers.serialize(
      object.periodDays,
      specifiedType: const FullType(int),
    );
    yield r'paid_price';
    yield serializers.serialize(
      object.paidPrice,
      specifiedType: const FullType(double),
    );
    yield r'original_price';
    yield serializers.serialize(
      object.originalPrice,
      specifiedType: const FullType(double),
    );
    if (object.discountApplied != null) {
      yield r'discount_applied';
      yield serializers.serialize(
        object.discountApplied,
        specifiedType: const FullType(double),
      );
    }
    yield r'discount_amount';
    yield serializers.serialize(
      object.discountAmount,
      specifiedType: const FullType(String),
    );
    yield r'total_savings';
    yield serializers.serialize(
      object.totalSavings,
      specifiedType: const FullType(String),
    );
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType(String),
      );
    }
    yield r'created_by';
    yield object.createdBy == null ? null : serializers.serialize(
      object.createdBy,
      specifiedType: const FullType.nullable(int),
    );
    yield r'created_by_name';
    yield serializers.serialize(
      object.createdByName,
      specifiedType: const FullType(String),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(String),
    );
    if (object.snapshotData != null) {
      yield r'snapshot_data';
      yield serializers.serialize(
        object.snapshotData,
        specifiedType: const FullType.nullable(Map<String, dynamic>),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PremiumSubscriptionHistory object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PremiumSubscriptionHistoryBuilder result,
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
        case r'subscription':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.subscription = valueDes;
          break;
        case r'customer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.customer = valueDes;
          break;
        case r'customer_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerName = valueDes;
          break;
        case r'premium_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.premiumType = valueDes;
          break;
        case r'premium_type_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.premiumTypeName = valueDes;
          break;
        case r'movement_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PremiumSubscriptionHistoryMovementTypeEnum),
          ) as PremiumSubscriptionHistoryMovementTypeEnum;
          result.movementType = valueDes;
          break;
        case r'movement_type_display':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.movementTypeDisplay = valueDes;
          break;
        case r'period_start_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.periodStartDate = valueDes;
          break;
        case r'period_end_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.periodEndDate = valueDes;
          break;
        case r'period_days':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.periodDays = valueDes;
          break;
        case r'paid_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.paidPrice = valueDes;
          break;
        case r'original_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.originalPrice = valueDes;
          break;
        case r'discount_applied':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.discountApplied = valueDes;
          break;
        case r'discount_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.discountAmount = valueDes;
          break;
        case r'total_savings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.totalSavings = valueDes;
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.notes = valueDes;
          break;
        case r'created_by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.createdBy = valueDes;
          break;
        case r'created_by_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdByName = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'snapshot_data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Map<String, dynamic>),
          ) as Map<String, dynamic>?;
          if (valueDes == null) continue;
          result.snapshotData = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PremiumSubscriptionHistory deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PremiumSubscriptionHistoryBuilder();
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

