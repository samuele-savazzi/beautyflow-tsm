// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tier_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TierResponse extends TierResponse {
  @override
  final int id;
  @override
  final String name;
  @override
  final String code;
  @override
  final String slug;
  @override
  final String description;
  @override
  final String icon;
  @override
  final CategoryD08Enum category;
  @override
  final bool isActive;
  @override
  final bool isPublic;
  @override
  final bool isFeatured;
  @override
  final bool allowTrial;
  @override
  final int? trialDays;
  @override
  final BillingTypeEfcEnum billingType;
  @override
  final double monthlyPrice;
  @override
  final double yearlyPrice;
  @override
  final double setupFee;
  @override
  final bool hasUsageLimit;
  @override
  final int? usageLimit;
  @override
  final String usageUnit;
  @override
  final String requiresTiers;
  @override
  final String conflictsWith;
  @override
  final Map<String, dynamic>? features;
  @override
  final Map<String, dynamic>? metadata;
  @override
  final int sortOrder;
  @override
  final String documentationUrl;
  @override
  final String videoTutorialUrl;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? deletedAt;

  factory _$TierResponse([void Function(TierResponseBuilder)? updates]) =>
      (TierResponseBuilder()..update(updates))._build();

  _$TierResponse._(
      {required this.id,
      required this.name,
      required this.code,
      required this.slug,
      required this.description,
      required this.icon,
      required this.category,
      required this.isActive,
      required this.isPublic,
      required this.isFeatured,
      required this.allowTrial,
      this.trialDays,
      required this.billingType,
      required this.monthlyPrice,
      required this.yearlyPrice,
      required this.setupFee,
      required this.hasUsageLimit,
      this.usageLimit,
      required this.usageUnit,
      required this.requiresTiers,
      required this.conflictsWith,
      this.features,
      this.metadata,
      required this.sortOrder,
      required this.documentationUrl,
      required this.videoTutorialUrl,
      required this.createdAt,
      required this.updatedAt,
      this.deletedAt})
      : super._();
  @override
  TierResponse rebuild(void Function(TierResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TierResponseBuilder toBuilder() => TierResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TierResponse &&
        id == other.id &&
        name == other.name &&
        code == other.code &&
        slug == other.slug &&
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
        requiresTiers == other.requiresTiers &&
        conflictsWith == other.conflictsWith &&
        features == other.features &&
        metadata == other.metadata &&
        sortOrder == other.sortOrder &&
        documentationUrl == other.documentationUrl &&
        videoTutorialUrl == other.videoTutorialUrl &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        deletedAt == other.deletedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, slug.hashCode);
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
    _$hash = $jc(_$hash, requiresTiers.hashCode);
    _$hash = $jc(_$hash, conflictsWith.hashCode);
    _$hash = $jc(_$hash, features.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, sortOrder.hashCode);
    _$hash = $jc(_$hash, documentationUrl.hashCode);
    _$hash = $jc(_$hash, videoTutorialUrl.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, deletedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TierResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('code', code)
          ..add('slug', slug)
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
          ..add('requiresTiers', requiresTiers)
          ..add('conflictsWith', conflictsWith)
          ..add('features', features)
          ..add('metadata', metadata)
          ..add('sortOrder', sortOrder)
          ..add('documentationUrl', documentationUrl)
          ..add('videoTutorialUrl', videoTutorialUrl)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('deletedAt', deletedAt))
        .toString();
  }
}

class TierResponseBuilder
    implements Builder<TierResponse, TierResponseBuilder> {
  _$TierResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  CategoryD08Enum? _category;
  CategoryD08Enum? get category => _$this._category;
  set category(CategoryD08Enum? category) => _$this._category = category;

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

  BillingTypeEfcEnum? _billingType;
  BillingTypeEfcEnum? get billingType => _$this._billingType;
  set billingType(BillingTypeEfcEnum? billingType) =>
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

  String? _requiresTiers;
  String? get requiresTiers => _$this._requiresTiers;
  set requiresTiers(String? requiresTiers) =>
      _$this._requiresTiers = requiresTiers;

  String? _conflictsWith;
  String? get conflictsWith => _$this._conflictsWith;
  set conflictsWith(String? conflictsWith) =>
      _$this._conflictsWith = conflictsWith;

  Map<String, dynamic>? _features;
  Map<String, dynamic>? get features => _$this._features;
  set features(Map<String, dynamic>? features) => _$this._features = features;

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

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  DateTime? _deletedAt;
  DateTime? get deletedAt => _$this._deletedAt;
  set deletedAt(DateTime? deletedAt) => _$this._deletedAt = deletedAt;

  TierResponseBuilder() {
    TierResponse._defaults(this);
  }

  TierResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _code = $v.code;
      _slug = $v.slug;
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
      _requiresTiers = $v.requiresTiers;
      _conflictsWith = $v.conflictsWith;
      _features = $v.features;
      _metadata = $v.metadata;
      _sortOrder = $v.sortOrder;
      _documentationUrl = $v.documentationUrl;
      _videoTutorialUrl = $v.videoTutorialUrl;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _deletedAt = $v.deletedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TierResponse other) {
    _$v = other as _$TierResponse;
  }

  @override
  void update(void Function(TierResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TierResponse build() => _build();

  _$TierResponse _build() {
    final _$result = _$v ??
        _$TierResponse._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'TierResponse', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'TierResponse', 'name'),
          code: BuiltValueNullFieldError.checkNotNull(
              code, r'TierResponse', 'code'),
          slug: BuiltValueNullFieldError.checkNotNull(
              slug, r'TierResponse', 'slug'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'TierResponse', 'description'),
          icon: BuiltValueNullFieldError.checkNotNull(
              icon, r'TierResponse', 'icon'),
          category: BuiltValueNullFieldError.checkNotNull(
              category, r'TierResponse', 'category'),
          isActive: BuiltValueNullFieldError.checkNotNull(
              isActive, r'TierResponse', 'isActive'),
          isPublic: BuiltValueNullFieldError.checkNotNull(
              isPublic, r'TierResponse', 'isPublic'),
          isFeatured: BuiltValueNullFieldError.checkNotNull(
              isFeatured, r'TierResponse', 'isFeatured'),
          allowTrial: BuiltValueNullFieldError.checkNotNull(
              allowTrial, r'TierResponse', 'allowTrial'),
          trialDays: trialDays,
          billingType: BuiltValueNullFieldError.checkNotNull(
              billingType, r'TierResponse', 'billingType'),
          monthlyPrice: BuiltValueNullFieldError.checkNotNull(
              monthlyPrice, r'TierResponse', 'monthlyPrice'),
          yearlyPrice: BuiltValueNullFieldError.checkNotNull(
              yearlyPrice, r'TierResponse', 'yearlyPrice'),
          setupFee: BuiltValueNullFieldError.checkNotNull(
              setupFee, r'TierResponse', 'setupFee'),
          hasUsageLimit: BuiltValueNullFieldError.checkNotNull(
              hasUsageLimit, r'TierResponse', 'hasUsageLimit'),
          usageLimit: usageLimit,
          usageUnit: BuiltValueNullFieldError.checkNotNull(
              usageUnit, r'TierResponse', 'usageUnit'),
          requiresTiers: BuiltValueNullFieldError.checkNotNull(
              requiresTiers, r'TierResponse', 'requiresTiers'),
          conflictsWith: BuiltValueNullFieldError.checkNotNull(
              conflictsWith, r'TierResponse', 'conflictsWith'),
          features: features,
          metadata: metadata,
          sortOrder: BuiltValueNullFieldError.checkNotNull(
              sortOrder, r'TierResponse', 'sortOrder'),
          documentationUrl: BuiltValueNullFieldError.checkNotNull(
              documentationUrl, r'TierResponse', 'documentationUrl'),
          videoTutorialUrl: BuiltValueNullFieldError.checkNotNull(
              videoTutorialUrl, r'TierResponse', 'videoTutorialUrl'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'TierResponse', 'createdAt'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'TierResponse', 'updatedAt'),
          deletedAt: deletedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
