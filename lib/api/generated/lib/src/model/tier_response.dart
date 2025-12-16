//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/billing_type_efc_enum.dart';
import 'package:beautyflow_api/src/model/category_d08_enum.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tier_response.g.dart';

/// Response con dettagli Tier completi
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [code] 
/// * [slug] 
/// * [description] 
/// * [icon] - Material icon name (es: analytics, integration_instructions)
/// * [category] 
/// * [isActive] 
/// * [isPublic] - Visibile nel marketplace per acquisto self-service dai tenant
/// * [isFeatured] - In evidenza nel marketplace
/// * [allowTrial] 
/// * [trialDays] 
/// * [billingType] 
/// * [monthlyPrice] 
/// * [yearlyPrice] 
/// * [setupFee] 
/// * [hasUsageLimit] 
/// * [usageLimit] - Limite uso mensile (es: 100 export PDF, 1000 chiamate API)
/// * [usageUnit] - Unità di misura (es: \"chiamate API\", \"export PDF\", \"video consultazioni\")
/// * [requiresTiers] 
/// * [conflictsWith] 
/// * [features] - Lista feature in formato JSON: [\"Feature 1\", \"Feature 2\", ...]
/// * [metadata] 
/// * [sortOrder] 
/// * [documentationUrl] 
/// * [videoTutorialUrl] 
/// * [createdAt] 
/// * [updatedAt] 
/// * [deletedAt] 
@BuiltValue()
abstract class TierResponse implements Built<TierResponse, TierResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'slug')
  String get slug;

  @BuiltValueField(wireName: r'description')
  String get description;

  /// Material icon name (es: analytics, integration_instructions)
  @BuiltValueField(wireName: r'icon')
  String get icon;

  @BuiltValueField(wireName: r'category')
  CategoryD08Enum get category;
  // enum categoryEnum {  core,  premium,  integration,  analytics,  automation,  };

  @BuiltValueField(wireName: r'is_active')
  bool get isActive;

  /// Visibile nel marketplace per acquisto self-service dai tenant
  @BuiltValueField(wireName: r'is_public')
  bool get isPublic;

  /// In evidenza nel marketplace
  @BuiltValueField(wireName: r'is_featured')
  bool get isFeatured;

  @BuiltValueField(wireName: r'allow_trial')
  bool get allowTrial;

  @BuiltValueField(wireName: r'trial_days')
  int? get trialDays;

  @BuiltValueField(wireName: r'billing_type')
  BillingTypeEfcEnum get billingType;
  // enum billingTypeEnum {  one_time,  monthly,  yearly,  };

  @BuiltValueField(wireName: r'monthly_price')
  double get monthlyPrice;

  @BuiltValueField(wireName: r'yearly_price')
  double get yearlyPrice;

  @BuiltValueField(wireName: r'setup_fee')
  double get setupFee;

  @BuiltValueField(wireName: r'has_usage_limit')
  bool get hasUsageLimit;

  /// Limite uso mensile (es: 100 export PDF, 1000 chiamate API)
  @BuiltValueField(wireName: r'usage_limit')
  int? get usageLimit;

  /// Unità di misura (es: \"chiamate API\", \"export PDF\", \"video consultazioni\")
  @BuiltValueField(wireName: r'usage_unit')
  String get usageUnit;

  @BuiltValueField(wireName: r'requires_tiers')
  String get requiresTiers;

  @BuiltValueField(wireName: r'conflicts_with')
  String get conflictsWith;

  /// Lista feature in formato JSON: [\"Feature 1\", \"Feature 2\", ...]
  @BuiltValueField(wireName: r'features')
  Map<String, dynamic>? get features;

  @BuiltValueField(wireName: r'metadata')
  Map<String, dynamic>? get metadata;

  @BuiltValueField(wireName: r'sort_order')
  int get sortOrder;

  @BuiltValueField(wireName: r'documentation_url')
  String get documentationUrl;

  @BuiltValueField(wireName: r'video_tutorial_url')
  String get videoTutorialUrl;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  @BuiltValueField(wireName: r'deleted_at')
  DateTime? get deletedAt;

  TierResponse._();

  factory TierResponse([void updates(TierResponseBuilder b)]) = _$TierResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TierResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TierResponse> get serializer => _$TierResponseSerializer();
}

class _$TierResponseSerializer implements PrimitiveSerializer<TierResponse> {
  @override
  final Iterable<Type> types = const [TierResponse, _$TierResponse];

  @override
  final String wireName = r'TierResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TierResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    yield r'slug';
    yield serializers.serialize(
      object.slug,
      specifiedType: const FullType(String),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'icon';
    yield serializers.serialize(
      object.icon,
      specifiedType: const FullType(String),
    );
    yield r'category';
    yield serializers.serialize(
      object.category,
      specifiedType: const FullType(CategoryD08Enum),
    );
    yield r'is_active';
    yield serializers.serialize(
      object.isActive,
      specifiedType: const FullType(bool),
    );
    yield r'is_public';
    yield serializers.serialize(
      object.isPublic,
      specifiedType: const FullType(bool),
    );
    yield r'is_featured';
    yield serializers.serialize(
      object.isFeatured,
      specifiedType: const FullType(bool),
    );
    yield r'allow_trial';
    yield serializers.serialize(
      object.allowTrial,
      specifiedType: const FullType(bool),
    );
    yield r'trial_days';
    yield object.trialDays == null ? null : serializers.serialize(
      object.trialDays,
      specifiedType: const FullType.nullable(int),
    );
    yield r'billing_type';
    yield serializers.serialize(
      object.billingType,
      specifiedType: const FullType(BillingTypeEfcEnum),
    );
    yield r'monthly_price';
    yield serializers.serialize(
      object.monthlyPrice,
      specifiedType: const FullType(double),
    );
    yield r'yearly_price';
    yield serializers.serialize(
      object.yearlyPrice,
      specifiedType: const FullType(double),
    );
    yield r'setup_fee';
    yield serializers.serialize(
      object.setupFee,
      specifiedType: const FullType(double),
    );
    yield r'has_usage_limit';
    yield serializers.serialize(
      object.hasUsageLimit,
      specifiedType: const FullType(bool),
    );
    yield r'usage_limit';
    yield object.usageLimit == null ? null : serializers.serialize(
      object.usageLimit,
      specifiedType: const FullType.nullable(int),
    );
    yield r'usage_unit';
    yield serializers.serialize(
      object.usageUnit,
      specifiedType: const FullType(String),
    );
    yield r'requires_tiers';
    yield serializers.serialize(
      object.requiresTiers,
      specifiedType: const FullType(String),
    );
    yield r'conflicts_with';
    yield serializers.serialize(
      object.conflictsWith,
      specifiedType: const FullType(String),
    );
    yield r'features';
    yield object.features == null ? null : serializers.serialize(
      object.features,
      specifiedType: const FullType.nullable(Map<String, dynamic>),
    );
    yield r'metadata';
    yield object.metadata == null ? null : serializers.serialize(
      object.metadata,
      specifiedType: const FullType.nullable(Map<String, dynamic>),
    );
    yield r'sort_order';
    yield serializers.serialize(
      object.sortOrder,
      specifiedType: const FullType(int),
    );
    yield r'documentation_url';
    yield serializers.serialize(
      object.documentationUrl,
      specifiedType: const FullType(String),
    );
    yield r'video_tutorial_url';
    yield serializers.serialize(
      object.videoTutorialUrl,
      specifiedType: const FullType(String),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updated_at';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'deleted_at';
    yield object.deletedAt == null ? null : serializers.serialize(
      object.deletedAt,
      specifiedType: const FullType.nullable(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TierResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TierResponseBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'slug':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.slug = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.icon = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CategoryD08Enum),
          ) as CategoryD08Enum;
          result.category = valueDes;
          break;
        case r'is_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'is_public':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isPublic = valueDes;
          break;
        case r'is_featured':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isFeatured = valueDes;
          break;
        case r'allow_trial':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowTrial = valueDes;
          break;
        case r'trial_days':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.trialDays = valueDes;
          break;
        case r'billing_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BillingTypeEfcEnum),
          ) as BillingTypeEfcEnum;
          result.billingType = valueDes;
          break;
        case r'monthly_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.monthlyPrice = valueDes;
          break;
        case r'yearly_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.yearlyPrice = valueDes;
          break;
        case r'setup_fee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.setupFee = valueDes;
          break;
        case r'has_usage_limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasUsageLimit = valueDes;
          break;
        case r'usage_limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.usageLimit = valueDes;
          break;
        case r'usage_unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.usageUnit = valueDes;
          break;
        case r'requires_tiers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requiresTiers = valueDes;
          break;
        case r'conflicts_with':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.conflictsWith = valueDes;
          break;
        case r'features':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Map<String, dynamic>),
          ) as Map<String, dynamic>?;
          if (valueDes == null) continue;
          result.features = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Map<String, dynamic>),
          ) as Map<String, dynamic>?;
          if (valueDes == null) continue;
          result.metadata = valueDes;
          break;
        case r'sort_order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sortOrder = valueDes;
          break;
        case r'documentation_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.documentationUrl = valueDes;
          break;
        case r'video_tutorial_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.videoTutorialUrl = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'deleted_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.deletedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TierResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TierResponseBuilder();
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

