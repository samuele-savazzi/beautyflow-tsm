// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movement_create_reason_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MovementCreateReasonEnum _$PURCHASE =
    const MovementCreateReasonEnum._('PURCHASE');
const MovementCreateReasonEnum _$CUSTOMER_RETURN =
    const MovementCreateReasonEnum._('CUSTOMER_RETURN');
const MovementCreateReasonEnum _$CORRECTION_POSITIVE =
    const MovementCreateReasonEnum._('CORRECTION_POSITIVE');
const MovementCreateReasonEnum _$SALE =
    const MovementCreateReasonEnum._('SALE');
const MovementCreateReasonEnum _$SERVICE_USAGE =
    const MovementCreateReasonEnum._('SERVICE_USAGE');
const MovementCreateReasonEnum _$EXPIRED =
    const MovementCreateReasonEnum._('EXPIRED');
const MovementCreateReasonEnum _$DAMAGED =
    const MovementCreateReasonEnum._('DAMAGED');
const MovementCreateReasonEnum _$CORRECTION_NEGATIVE =
    const MovementCreateReasonEnum._('CORRECTION_NEGATIVE');
const MovementCreateReasonEnum _$SAMPLE =
    const MovementCreateReasonEnum._('SAMPLE');
const MovementCreateReasonEnum _$TRANSFER_IN =
    const MovementCreateReasonEnum._('TRANSFER_IN');
const MovementCreateReasonEnum _$TRANSFER_OUT =
    const MovementCreateReasonEnum._('TRANSFER_OUT');
const MovementCreateReasonEnum _$INITIAL_STOCK =
    const MovementCreateReasonEnum._('INITIAL_STOCK');

MovementCreateReasonEnum _$valueOf(String name) {
  switch (name) {
    case 'PURCHASE':
      return _$PURCHASE;
    case 'CUSTOMER_RETURN':
      return _$CUSTOMER_RETURN;
    case 'CORRECTION_POSITIVE':
      return _$CORRECTION_POSITIVE;
    case 'SALE':
      return _$SALE;
    case 'SERVICE_USAGE':
      return _$SERVICE_USAGE;
    case 'EXPIRED':
      return _$EXPIRED;
    case 'DAMAGED':
      return _$DAMAGED;
    case 'CORRECTION_NEGATIVE':
      return _$CORRECTION_NEGATIVE;
    case 'SAMPLE':
      return _$SAMPLE;
    case 'TRANSFER_IN':
      return _$TRANSFER_IN;
    case 'TRANSFER_OUT':
      return _$TRANSFER_OUT;
    case 'INITIAL_STOCK':
      return _$INITIAL_STOCK;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MovementCreateReasonEnum> _$values =
    BuiltSet<MovementCreateReasonEnum>(const <MovementCreateReasonEnum>[
  _$PURCHASE,
  _$CUSTOMER_RETURN,
  _$CORRECTION_POSITIVE,
  _$SALE,
  _$SERVICE_USAGE,
  _$EXPIRED,
  _$DAMAGED,
  _$CORRECTION_NEGATIVE,
  _$SAMPLE,
  _$TRANSFER_IN,
  _$TRANSFER_OUT,
  _$INITIAL_STOCK,
]);

class _$MovementCreateReasonEnumMeta {
  const _$MovementCreateReasonEnumMeta();
  MovementCreateReasonEnum get PURCHASE => _$PURCHASE;
  MovementCreateReasonEnum get CUSTOMER_RETURN => _$CUSTOMER_RETURN;
  MovementCreateReasonEnum get CORRECTION_POSITIVE => _$CORRECTION_POSITIVE;
  MovementCreateReasonEnum get SALE => _$SALE;
  MovementCreateReasonEnum get SERVICE_USAGE => _$SERVICE_USAGE;
  MovementCreateReasonEnum get EXPIRED => _$EXPIRED;
  MovementCreateReasonEnum get DAMAGED => _$DAMAGED;
  MovementCreateReasonEnum get CORRECTION_NEGATIVE => _$CORRECTION_NEGATIVE;
  MovementCreateReasonEnum get SAMPLE => _$SAMPLE;
  MovementCreateReasonEnum get TRANSFER_IN => _$TRANSFER_IN;
  MovementCreateReasonEnum get TRANSFER_OUT => _$TRANSFER_OUT;
  MovementCreateReasonEnum get INITIAL_STOCK => _$INITIAL_STOCK;
  MovementCreateReasonEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<MovementCreateReasonEnum> get values => _$values;
}

abstract class _$MovementCreateReasonEnumMixin {
  // ignore: non_constant_identifier_names
  _$MovementCreateReasonEnumMeta get MovementCreateReasonEnum =>
      const _$MovementCreateReasonEnumMeta();
}

Serializer<MovementCreateReasonEnum> _$movementCreateReasonEnumSerializer =
    _$MovementCreateReasonEnumSerializer();

class _$MovementCreateReasonEnumSerializer
    implements PrimitiveSerializer<MovementCreateReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PURCHASE': 'PURCHASE',
    'CUSTOMER_RETURN': 'CUSTOMER_RETURN',
    'CORRECTION_POSITIVE': 'CORRECTION_POSITIVE',
    'SALE': 'SALE',
    'SERVICE_USAGE': 'SERVICE_USAGE',
    'EXPIRED': 'EXPIRED',
    'DAMAGED': 'DAMAGED',
    'CORRECTION_NEGATIVE': 'CORRECTION_NEGATIVE',
    'SAMPLE': 'SAMPLE',
    'TRANSFER_IN': 'TRANSFER_IN',
    'TRANSFER_OUT': 'TRANSFER_OUT',
    'INITIAL_STOCK': 'INITIAL_STOCK',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PURCHASE': 'PURCHASE',
    'CUSTOMER_RETURN': 'CUSTOMER_RETURN',
    'CORRECTION_POSITIVE': 'CORRECTION_POSITIVE',
    'SALE': 'SALE',
    'SERVICE_USAGE': 'SERVICE_USAGE',
    'EXPIRED': 'EXPIRED',
    'DAMAGED': 'DAMAGED',
    'CORRECTION_NEGATIVE': 'CORRECTION_NEGATIVE',
    'SAMPLE': 'SAMPLE',
    'TRANSFER_IN': 'TRANSFER_IN',
    'TRANSFER_OUT': 'TRANSFER_OUT',
    'INITIAL_STOCK': 'INITIAL_STOCK',
  };

  @override
  final Iterable<Type> types = const <Type>[MovementCreateReasonEnum];
  @override
  final String wireName = 'MovementCreateReasonEnum';

  @override
  Object serialize(Serializers serializers, MovementCreateReasonEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MovementCreateReasonEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MovementCreateReasonEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
