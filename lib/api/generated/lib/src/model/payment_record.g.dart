// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaymentRecord extends PaymentRecord {
  @override
  final int id;
  @override
  final String transactionType;
  @override
  final double amount;
  @override
  final String status;
  @override
  final String description;
  @override
  final String? quotaTypeName;
  @override
  final int? smsQuantity;
  @override
  final int? operatorsQuantity;
  @override
  final int? workstationsQuantity;
  @override
  final String createdAt;
  @override
  final String? completedAt;

  factory _$PaymentRecord([void Function(PaymentRecordBuilder)? updates]) =>
      (PaymentRecordBuilder()..update(updates))._build();

  _$PaymentRecord._(
      {required this.id,
      required this.transactionType,
      required this.amount,
      required this.status,
      required this.description,
      this.quotaTypeName,
      this.smsQuantity,
      this.operatorsQuantity,
      this.workstationsQuantity,
      required this.createdAt,
      this.completedAt})
      : super._();
  @override
  PaymentRecord rebuild(void Function(PaymentRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentRecordBuilder toBuilder() => PaymentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentRecord &&
        id == other.id &&
        transactionType == other.transactionType &&
        amount == other.amount &&
        status == other.status &&
        description == other.description &&
        quotaTypeName == other.quotaTypeName &&
        smsQuantity == other.smsQuantity &&
        operatorsQuantity == other.operatorsQuantity &&
        workstationsQuantity == other.workstationsQuantity &&
        createdAt == other.createdAt &&
        completedAt == other.completedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, transactionType.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, quotaTypeName.hashCode);
    _$hash = $jc(_$hash, smsQuantity.hashCode);
    _$hash = $jc(_$hash, operatorsQuantity.hashCode);
    _$hash = $jc(_$hash, workstationsQuantity.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, completedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaymentRecord')
          ..add('id', id)
          ..add('transactionType', transactionType)
          ..add('amount', amount)
          ..add('status', status)
          ..add('description', description)
          ..add('quotaTypeName', quotaTypeName)
          ..add('smsQuantity', smsQuantity)
          ..add('operatorsQuantity', operatorsQuantity)
          ..add('workstationsQuantity', workstationsQuantity)
          ..add('createdAt', createdAt)
          ..add('completedAt', completedAt))
        .toString();
  }
}

class PaymentRecordBuilder
    implements Builder<PaymentRecord, PaymentRecordBuilder> {
  _$PaymentRecord? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _transactionType;
  String? get transactionType => _$this._transactionType;
  set transactionType(String? transactionType) =>
      _$this._transactionType = transactionType;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _quotaTypeName;
  String? get quotaTypeName => _$this._quotaTypeName;
  set quotaTypeName(String? quotaTypeName) =>
      _$this._quotaTypeName = quotaTypeName;

  int? _smsQuantity;
  int? get smsQuantity => _$this._smsQuantity;
  set smsQuantity(int? smsQuantity) => _$this._smsQuantity = smsQuantity;

  int? _operatorsQuantity;
  int? get operatorsQuantity => _$this._operatorsQuantity;
  set operatorsQuantity(int? operatorsQuantity) =>
      _$this._operatorsQuantity = operatorsQuantity;

  int? _workstationsQuantity;
  int? get workstationsQuantity => _$this._workstationsQuantity;
  set workstationsQuantity(int? workstationsQuantity) =>
      _$this._workstationsQuantity = workstationsQuantity;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _completedAt;
  String? get completedAt => _$this._completedAt;
  set completedAt(String? completedAt) => _$this._completedAt = completedAt;

  PaymentRecordBuilder() {
    PaymentRecord._defaults(this);
  }

  PaymentRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _transactionType = $v.transactionType;
      _amount = $v.amount;
      _status = $v.status;
      _description = $v.description;
      _quotaTypeName = $v.quotaTypeName;
      _smsQuantity = $v.smsQuantity;
      _operatorsQuantity = $v.operatorsQuantity;
      _workstationsQuantity = $v.workstationsQuantity;
      _createdAt = $v.createdAt;
      _completedAt = $v.completedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentRecord other) {
    _$v = other as _$PaymentRecord;
  }

  @override
  void update(void Function(PaymentRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentRecord build() => _build();

  _$PaymentRecord _build() {
    final _$result = _$v ??
        _$PaymentRecord._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'PaymentRecord', 'id'),
          transactionType: BuiltValueNullFieldError.checkNotNull(
              transactionType, r'PaymentRecord', 'transactionType'),
          amount: BuiltValueNullFieldError.checkNotNull(
              amount, r'PaymentRecord', 'amount'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'PaymentRecord', 'status'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'PaymentRecord', 'description'),
          quotaTypeName: quotaTypeName,
          smsQuantity: smsQuantity,
          operatorsQuantity: operatorsQuantity,
          workstationsQuantity: workstationsQuantity,
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'PaymentRecord', 'createdAt'),
          completedAt: completedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
