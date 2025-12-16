// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'premium_subscription_history_movement_type_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PremiumSubscriptionHistoryMovementTypeEnum _$CREATE =
    const PremiumSubscriptionHistoryMovementTypeEnum._('CREATE');
const PremiumSubscriptionHistoryMovementTypeEnum _$RENEWAL =
    const PremiumSubscriptionHistoryMovementTypeEnum._('RENEWAL');
const PremiumSubscriptionHistoryMovementTypeEnum _$MODIFY =
    const PremiumSubscriptionHistoryMovementTypeEnum._('MODIFY');
const PremiumSubscriptionHistoryMovementTypeEnum _$CANCEL =
    const PremiumSubscriptionHistoryMovementTypeEnum._('CANCEL');
const PremiumSubscriptionHistoryMovementTypeEnum _$REACTIVATE =
    const PremiumSubscriptionHistoryMovementTypeEnum._('REACTIVATE');
const PremiumSubscriptionHistoryMovementTypeEnum _$UPGRADE =
    const PremiumSubscriptionHistoryMovementTypeEnum._('UPGRADE');
const PremiumSubscriptionHistoryMovementTypeEnum _$DOWNGRADE =
    const PremiumSubscriptionHistoryMovementTypeEnum._('DOWNGRADE');

PremiumSubscriptionHistoryMovementTypeEnum _$valueOf(String name) {
  switch (name) {
    case 'CREATE':
      return _$CREATE;
    case 'RENEWAL':
      return _$RENEWAL;
    case 'MODIFY':
      return _$MODIFY;
    case 'CANCEL':
      return _$CANCEL;
    case 'REACTIVATE':
      return _$REACTIVATE;
    case 'UPGRADE':
      return _$UPGRADE;
    case 'DOWNGRADE':
      return _$DOWNGRADE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PremiumSubscriptionHistoryMovementTypeEnum> _$values = BuiltSet<
    PremiumSubscriptionHistoryMovementTypeEnum>(const <PremiumSubscriptionHistoryMovementTypeEnum>[
  _$CREATE,
  _$RENEWAL,
  _$MODIFY,
  _$CANCEL,
  _$REACTIVATE,
  _$UPGRADE,
  _$DOWNGRADE,
]);

class _$PremiumSubscriptionHistoryMovementTypeEnumMeta {
  const _$PremiumSubscriptionHistoryMovementTypeEnumMeta();
  PremiumSubscriptionHistoryMovementTypeEnum get CREATE => _$CREATE;
  PremiumSubscriptionHistoryMovementTypeEnum get RENEWAL => _$RENEWAL;
  PremiumSubscriptionHistoryMovementTypeEnum get MODIFY => _$MODIFY;
  PremiumSubscriptionHistoryMovementTypeEnum get CANCEL => _$CANCEL;
  PremiumSubscriptionHistoryMovementTypeEnum get REACTIVATE => _$REACTIVATE;
  PremiumSubscriptionHistoryMovementTypeEnum get UPGRADE => _$UPGRADE;
  PremiumSubscriptionHistoryMovementTypeEnum get DOWNGRADE => _$DOWNGRADE;
  PremiumSubscriptionHistoryMovementTypeEnum valueOf(String name) =>
      _$valueOf(name);
  BuiltSet<PremiumSubscriptionHistoryMovementTypeEnum> get values => _$values;
}

abstract class _$PremiumSubscriptionHistoryMovementTypeEnumMixin {
  // ignore: non_constant_identifier_names
  _$PremiumSubscriptionHistoryMovementTypeEnumMeta
      get PremiumSubscriptionHistoryMovementTypeEnum =>
          const _$PremiumSubscriptionHistoryMovementTypeEnumMeta();
}

Serializer<PremiumSubscriptionHistoryMovementTypeEnum>
    _$premiumSubscriptionHistoryMovementTypeEnumSerializer =
    _$PremiumSubscriptionHistoryMovementTypeEnumSerializer();

class _$PremiumSubscriptionHistoryMovementTypeEnumSerializer
    implements PrimitiveSerializer<PremiumSubscriptionHistoryMovementTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CREATE': 'CREATE',
    'RENEWAL': 'RENEWAL',
    'MODIFY': 'MODIFY',
    'CANCEL': 'CANCEL',
    'REACTIVATE': 'REACTIVATE',
    'UPGRADE': 'UPGRADE',
    'DOWNGRADE': 'DOWNGRADE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CREATE': 'CREATE',
    'RENEWAL': 'RENEWAL',
    'MODIFY': 'MODIFY',
    'CANCEL': 'CANCEL',
    'REACTIVATE': 'REACTIVATE',
    'UPGRADE': 'UPGRADE',
    'DOWNGRADE': 'DOWNGRADE',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PremiumSubscriptionHistoryMovementTypeEnum
  ];
  @override
  final String wireName = 'PremiumSubscriptionHistoryMovementTypeEnum';

  @override
  Object serialize(Serializers serializers,
          PremiumSubscriptionHistoryMovementTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PremiumSubscriptionHistoryMovementTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PremiumSubscriptionHistoryMovementTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
