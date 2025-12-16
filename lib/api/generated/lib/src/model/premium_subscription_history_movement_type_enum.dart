//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'premium_subscription_history_movement_type_enum.g.dart';

class PremiumSubscriptionHistoryMovementTypeEnum extends EnumClass {

  /// * `CREATE` - Creazione * `RENEWAL` - Rinnovo * `MODIFY` - Modifica * `CANCEL` - Cancellazione * `REACTIVATE` - Riattivazione * `UPGRADE` - Upgrade piano * `DOWNGRADE` - Downgrade piano
  @BuiltValueEnumConst(wireName: r'CREATE')
  static const PremiumSubscriptionHistoryMovementTypeEnum CREATE = _$CREATE;
  /// * `CREATE` - Creazione * `RENEWAL` - Rinnovo * `MODIFY` - Modifica * `CANCEL` - Cancellazione * `REACTIVATE` - Riattivazione * `UPGRADE` - Upgrade piano * `DOWNGRADE` - Downgrade piano
  @BuiltValueEnumConst(wireName: r'RENEWAL')
  static const PremiumSubscriptionHistoryMovementTypeEnum RENEWAL = _$RENEWAL;
  /// * `CREATE` - Creazione * `RENEWAL` - Rinnovo * `MODIFY` - Modifica * `CANCEL` - Cancellazione * `REACTIVATE` - Riattivazione * `UPGRADE` - Upgrade piano * `DOWNGRADE` - Downgrade piano
  @BuiltValueEnumConst(wireName: r'MODIFY')
  static const PremiumSubscriptionHistoryMovementTypeEnum MODIFY = _$MODIFY;
  /// * `CREATE` - Creazione * `RENEWAL` - Rinnovo * `MODIFY` - Modifica * `CANCEL` - Cancellazione * `REACTIVATE` - Riattivazione * `UPGRADE` - Upgrade piano * `DOWNGRADE` - Downgrade piano
  @BuiltValueEnumConst(wireName: r'CANCEL')
  static const PremiumSubscriptionHistoryMovementTypeEnum CANCEL = _$CANCEL;
  /// * `CREATE` - Creazione * `RENEWAL` - Rinnovo * `MODIFY` - Modifica * `CANCEL` - Cancellazione * `REACTIVATE` - Riattivazione * `UPGRADE` - Upgrade piano * `DOWNGRADE` - Downgrade piano
  @BuiltValueEnumConst(wireName: r'REACTIVATE')
  static const PremiumSubscriptionHistoryMovementTypeEnum REACTIVATE = _$REACTIVATE;
  /// * `CREATE` - Creazione * `RENEWAL` - Rinnovo * `MODIFY` - Modifica * `CANCEL` - Cancellazione * `REACTIVATE` - Riattivazione * `UPGRADE` - Upgrade piano * `DOWNGRADE` - Downgrade piano
  @BuiltValueEnumConst(wireName: r'UPGRADE')
  static const PremiumSubscriptionHistoryMovementTypeEnum UPGRADE = _$UPGRADE;
  /// * `CREATE` - Creazione * `RENEWAL` - Rinnovo * `MODIFY` - Modifica * `CANCEL` - Cancellazione * `REACTIVATE` - Riattivazione * `UPGRADE` - Upgrade piano * `DOWNGRADE` - Downgrade piano
  @BuiltValueEnumConst(wireName: r'DOWNGRADE')
  static const PremiumSubscriptionHistoryMovementTypeEnum DOWNGRADE = _$DOWNGRADE;

  static Serializer<PremiumSubscriptionHistoryMovementTypeEnum> get serializer => _$premiumSubscriptionHistoryMovementTypeEnumSerializer;

  const PremiumSubscriptionHistoryMovementTypeEnum._(String name): super(name);

  static BuiltSet<PremiumSubscriptionHistoryMovementTypeEnum> get values => _$values;
  static PremiumSubscriptionHistoryMovementTypeEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PremiumSubscriptionHistoryMovementTypeEnumMixin = Object with _$PremiumSubscriptionHistoryMovementTypeEnumMixin;

