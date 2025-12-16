// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_tier_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTierRequest extends CreateTierRequest {
  @override
  final String name;
  @override
  final String code;
  @override
  final String description;
  @override
  final String icon;
  @override
  final CategoryE85Enum category;
  @override
  final bool? isActive;
  @override
  final bool? isPublic;
  @override
  final bool? isFeatured;
  @override
  final bool? allowTrial;
  @override
  final int? trialDays;
  @override
  final BillingType874Enum? billingType;
  @override
  final double? monthlyPrice;
  @override
  final double? yearlyPrice;
  @override
  final double? setupFee;
  @override
  final bool? hasUsageLimit;
  @override
  final int? usageLimit;
  @override
  final String? usageUnit;
  @override
  final BuiltList<String>? features;
  @override
  final Map<String, dynamic>? metadata;
  @override
  final int? sortOrder;
  @override
  final String? documentationUrl;
  @override
  final String? videoTutorialUrl;
  @override
  final BuiltList<int>? requiresTiers;
  @override
  final BuiltList<int>? conflictsWith;

  factory _$CreateTierRequest(
          [void Function(CreateTierRequestBuilder)? updates]) =>
      (CreateTierRequestBuilder()..update(updates))._build();

  _$CreateTierRequest._(
      {required this.name,
      required this.code,
      required this.description,
      required this.icon,
      required this.category,
      this.isActive,
      this.isPublic,
      this.isFeatured,
      this.allowTrial,
      this.trialDays,
      this.billingType,
      this.monthlyPrice,
      this.yearlyPrice,
      this.setupFee,
      this.hasUsageLimit,
      this.usageLimit,
      this.usageUnit,
      this.features,
      this.metadata,
      this.sortOrder,
      this.documentationUrl,
      this.videoTutorialUrl,
      this.requiresTiers,
      this.conflictsWith})
      : super._();
  @override
  CreateTierRequest rebuild(void Function(CreateTierRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTierRequestBuilder toBuilder() =>
      CreateTierRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTierRequest &&
        name == other.name &&
        code == other.code &&
        description == other.description &&
        icon == other.icon &&
        category == other.category &&
        isActive == other.isActive &&
        isPublic == other.isPublic &&
        isFeatured == other.isFeatured &&
        allowTrial == other.allowTrial &&
        trialDays == other.trialDays &&
        billingType == other.billingType &&
        monthlyPrice == other.monthlyPrice &&
        yearlyPrice == other.yearlyPrice &&
        setupFee == other.setupFee &&
        hasUsageLimit == other.hasUsageLimit &&
        usageLimit == other.usageLimit &&
        usageUnit == other.usageUnit &&
        features == other.features &&
        metadata == other.metadata &&
        sortOrder == other.sortOrder &&
        documentationUrl == other.documentationUrl &&
        videoTutorialUrl == other.videoTutorialUrl &&
        requiresTiers == other.requiresTiers &&
        conflictsWith == other.conflictsWith;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, isPublic.hashCode);
    _$hash = $jc(_$hash, isFeatured.hashCode);
    _$hash = $jc(_$hash, allowTrial.hashCode);
    _$hash = $jc(_$hash, trialDays.hashCode);
    _$hash = $jc(_$hash, billingType.hashCode);
    _$hash = $jc(_$hash, monthlyPrice.hashCode);
    _$hash = $jc(_$hash, yearlyPrice.hashCode);
    _$hash = $jc(_$hash, setupFee.hashCode);
    _$hash = $jc(_$hash, hasUsageLimit.hashCode);
    _$hash = $jc(_$hash, usageLimit.hashCode);
    _$hash = $jc(_$hash, usageUnit.hashCode);
    _$hash = $jc(_$hash, features.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, sortOrder.hashCode);
    _$hash = $jc(_$hash, documentationUrl.hashCode);
    _$hash = $jc(_$hash, videoTutorialUrl.hashCode);
    _$hash = $jc(_$hash, requiresTiers.hashCode);
    _$hash = $jc(_$hash, conflictsWith.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateTierRequest')
          ..add('name', name)
          ..add('code', code)
          ..add('description', description)
          ..add('icon', icon)
          ..add('category', category)
          ..add('isActive', isActive)
          ..add('isPublic', isPublic)
          ..add('isFeatured', isFeatured)
          ..add('allowTrial', allowTrial)
          ..add('trialDays', trialDays)
          ..add('billingType', billingType)
          ..add('monthlyPrice', monthlyPrice)
          ..add('yearlyPrice', yearlyPrice)
          ..add('setupFee', setupFee)
          ..add('hasUsageLimit', hasUsageLimit)
          ..add('usageLimit', usageLimit)
          ..add('usageUnit', usageUnit)
          ..add('features', features)
          ..add('metadata', metadata)
          ..add('sortOrder', sortOrder)
          ..add('documentationUrl', documentationUrl)
          ..add('videoTutorialUrl', videoTutorialUrl)
          ..add('requiresTiers', requiresTiers)
          ..add('conflictsWith', conflictsWith))
        .toString();
  }
}

class CreateTierRequestBuilder
    implements Builder<CreateTierRequest, CreateTierRequestBuilder> {
  _$CreateTierRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  CategoryE85Enum? _category;
  CategoryE85Enum? get category => _$this._category;
  set category(CategoryE85Enum? category) => _$this._category = category;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  bool? _isFeatured;
  bool? get isFeatured => _$this._isFeatured;
  set isFeatured(bool? isFeatured) => _$this._isFeatured = isFeatured;

  bool? _allowTrial;
  bool? get allowTrial => _$this._allowTrial;
  set allowTrial(bool? allowTrial) => _$this._allowTrial = allowTrial;

  int? _trialDays;
  int? get trialDays => _$this._trialDays;
  set trialDays(int? trialDays) => _$this._trialDays = trialDays;

  BillingType874Enum? _billingType;
  BillingType874Enum? get billingType => _$this._billingType;
  set billingType(BillingType874Enum? billingType) =>
      _$this._billingType = billingType;

  double? _monthlyPrice;
  double? get monthlyPrice => _$this._monthlyPrice;
  set monthlyPrice(double? monthlyPrice) => _$this._monthlyPrice = monthlyPrice;

  double? _yearlyPrice;
  double? get yearlyPrice => _$this._yearlyPrice;
  set yearlyPrice(double? yearlyPrice) => _$this._yearlyPrice = yearlyPrice;

  double? _setupFee;
  double? get setupFee => _$this._setupFee;
  set setupFee(double? setupFee) => _$this._setupFee = setupFee;

  bool? _hasUsageLimit;
  bool? get hasUsageLimit => _$this._hasUsageLimit;
  set hasUsageLimit(bool? hasUsageLimit) =>
      _$this._hasUsageLimit = hasUsageLimit;

  int? _usageLimit;
  int? get usageLimit => _$this._usageLimit;
  set usageLimit(int? usageLimit) => _$this._usageLimit = usageLimit;

  String? _usageUnit;
  String? get usageUnit => _$this._usageUnit;
  set usageUnit(String? usageUnit) => _$this._usageUnit = usageUnit;

  ListBuilder<String>? _features;
  ListBuilder<String> get features =>
      _$this._features ??= ListBuilder<String>();
  set features(ListBuilder<String>? features) => _$this._features = features;

  Map<String, dynamic>? _metadata;
  Map<String, dynamic>? get metadata => _$this._metadata;
  set metadata(Map<String, dynamic>? metadata) => _$this._metadata = metadata;

  int? _sortOrder;
  int? get sortOrder => _$this._sortOrder;
  set sortOrder(int? sortOrder) => _$this._sortOrder = sortOrder;

  String? _documentationUrl;
  String? get documentationUrl => _$this._documentationUrl;
  set documentationUrl(String? documentationUrl) =>
      _$this._documentationUrl = documentationUrl;

  String? _videoTutorialUrl;
  String? get videoTutorialUrl => _$this._videoTutorialUrl;
  set videoTutorialUrl(String? videoTutorialUrl) =>
      _$this._videoTutorialUrl = videoTutorialUrl;

  ListBuilder<int>? _requiresTiers;
  ListBuilder<int> get requiresTiers =>
      _$this._requiresTiers ??= ListBuilder<int>();
  set requiresTiers(ListBuilder<int>? requiresTiers) =>
      _$this._requiresTiers = requiresTiers;

  ListBuilder<int>? _conflictsWith;
  ListBuilder<int> get conflictsWith =>
      _$this._conflictsWith ??= ListBuilder<int>();
  set conflictsWith(ListBuilder<int>? conflictsWith) =>
      _$this._conflictsWith = conflictsWith;

  CreateTierRequestBuilder() {
    CreateTierRequest._defaults(this);
  }

  CreateTierRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _code = $v.code;
      _description = $v.description;
      _icon = $v.icon;
      _category = $v.category;
      _isActive = $v.isActive;
      _isPublic = $v.isPublic;
      _isFeatured = $v.isFeatured;
      _allowTrial = $v.allowTrial;
      _trialDays = $v.trialDays;
      _billingType = $v.billingType;
      _monthlyPrice = $v.monthlyPrice;
      _yearlyPrice = $v.yearlyPrice;
      _setupFee = $v.setupFee;
      _hasUsageLimit = $v.hasUsageLimit;
      _usageLimit = $v.usageLimit;
      _usageUnit = $v.usageUnit;
      _features = $v.features?.toBuilder();
      _metadata = $v.metadata;
      _sortOrder = $v.sortOrder;
      _documentationUrl = $v.documentationUrl;
      _videoTutorialUrl = $v.videoTutorialUrl;
      _requiresTiers = $v.requiresTiers?.toBuilder();
      _conflictsWith = $v.conflictsWith?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTierRequest other) {
    _$v = other as _$CreateTierRequest;
  }

  @override
  void update(void Function(CreateTierRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTierRequest build() => _build();

  _$CreateTierRequest _build() {
    _$CreateTierRequest _$result;
    try {
      _$result = _$v ??
          _$CreateTierRequest._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CreateTierRequest', 'name'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'CreateTierRequest', 'code'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'CreateTierRequest', 'description'),
            icon: BuiltValueNullFieldError.checkNotNull(
                icon, r'CreateTierRequest', 'icon'),
            category: BuiltValueNullFieldError.checkNotNull(
                category, r'CreateTierRequest', 'category'),
            isActive: isActive,
            isPublic: isPublic,
            isFeatured: isFeatured,
            allowTrial: allowTrial,
            trialDays: trialDays,
            billingType: billingType,
            monthlyPrice: monthlyPrice,
            yearlyPrice: yearlyPrice,
            setupFee: setupFee,
            hasUsageLimit: hasUsageLimit,
            usageLimit: usageLimit,
            usageUnit: usageUnit,
            features: _features?.build(),
            metadata: metadata,
            sortOrder: sortOrder,
            documentationUrl: documentationUrl,
            videoTutorialUrl: videoTutorialUrl,
            requiresTiers: _requiresTiers?.build(),
            conflictsWith: _conflictsWith?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'features';
        _features?.build();

        _$failedField = 'requiresTiers';
        _requiresTiers?.build();
        _$failedField = 'conflictsWith';
        _conflictsWith?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateTierRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
