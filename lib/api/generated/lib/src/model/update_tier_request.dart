//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/category_e85_enum.dart';
import 'package:beautyflow_api/src/model/billing_type874_enum.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_tier_request.g.dart';

/// Request per update Tier
///
/// Properties:
/// * [name] 
/// * [description] 
/// * [icon] 
/// * [category] 
/// * [isActive] 
/// * [isPublic] 
/// * [isFeatured] 
/// * [allowTrial] 
/// * [trialDays] 
/// * [billingType] 
/// * [monthlyPrice] 
/// * [yearlyPrice] 
/// * [setupFee] 
/// * [hasUsageLimit] 
/// * [usageLimit] 
/// * [usageUnit] 
/// * [features] 
/// * [metadata] 
/// * [sortOrder] 
/// * [documentationUrl] 
/// * [videoTutorialUrl] 
/// * [requiresTiers] 
/// * [conflictsWith] 
@BuiltValue()
abstract class UpdateTierRequest implements Built<UpdateTierRequest, UpdateTierRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'icon')
  String? get icon;

  @BuiltValueField(wireName: r'category')
  CategoryE85Enum? get category;
  // enum categoryEnum {  core,  premium,  integration,  analytics,  automation,  };

  @BuiltValueField(wireName: r'is_active')
  bool? get isActive;

  @BuiltValueField(wireName: r'is_public')
  bool? get isPublic;

  @BuiltValueField(wireName: r'is_featured')
  bool? get isFeatured;

  @BuiltValueField(wireName: r'allow_trial')
  bool? get allowTrial;

  @BuiltValueField(wireName: r'trial_days')
  int? get trialDays;

  @BuiltValueField(wireName: r'billing_type')
  BillingType874Enum? get billingType;
  // enum billingTypeEnum {  one_time,  monthly,  yearly,  };

  @BuiltValueField(wireName: r'monthly_price')
  double? get monthlyPrice;

  @BuiltValueField(wireName: r'yearly_price')
  double? get yearlyPrice;

  @BuiltValueField(wireName: r'setup_fee')
  double? get setupFee;

  @BuiltValueField(wireName: r'has_usage_limit')
  bool? get hasUsageLimit;

  @BuiltValueField(wireName: r'usage_limit')
  int? get usageLimit;

  @BuiltValueField(wireName: r'usage_unit')
  String? get usageUnit;

  @BuiltValueField(wireName: r'features')
  BuiltList<String>? get features;

  @BuiltValueField(wireName: r'metadata')
  Map<String, dynamic>? get metadata;

  @BuiltValueField(wireName: r'sort_order')
  int? get sortOrder;

  @BuiltValueField(wireName: r'documentation_url')
  String? get documentationUrl;

  @BuiltValueField(wireName: r'video_tutorial_url')
  String? get videoTutorialUrl;

  @BuiltValueField(wireName: r'requires_tiers')
  BuiltList<int>? get requiresTiers;

  @BuiltValueField(wireName: r'conflicts_with')
  BuiltList<int>? get conflictsWith;

  UpdateTierRequest._();

  factory UpdateTierRequest([void updates(UpdateTierRequestBuilder b)]) = _$UpdateTierRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateTierRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateTierRequest> get serializer => _$UpdateTierRequestSerializer();
}

class _$UpdateTierRequestSerializer implements PrimitiveSerializer<UpdateTierRequest> {
  @override
  final Iterable<Type> types = const [UpdateTierRequest, _$UpdateTierRequest];

  @override
  final String wireName = r'UpdateTierRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateTierRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.icon != null) {
      yield r'icon';
      yield serializers.serialize(
        object.icon,
        specifiedType: const FullType(String),
      );
    }
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType(CategoryE85Enum),
      );
    }
    if (object.isActive != null) {
      yield r'is_active';
      yield serializers.serialize(
        object.isActive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isPublic != null) {
      yield r'is_public';
      yield serializers.serialize(
        object.isPublic,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isFeatured != null) {
      yield r'is_featured';
      yield serializers.serialize(
        object.isFeatured,
        specifiedType: const FullType(bool),
      );
    }
    if (object.allowTrial != null) {
      yield r'allow_trial';
      yield serializers.serialize(
        object.allowTrial,
        specifiedType: const FullType(bool),
      );
    }
    if (object.trialDays != null) {
      yield r'trial_days';
      yield serializers.serialize(
        object.trialDays,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.billingType != null) {
      yield r'billing_type';
      yield serializers.serialize(
        object.billingType,
        specifiedType: const FullType(BillingType874Enum),
      );
    }
    if (object.monthlyPrice != null) {
      yield r'monthly_price';
      yield serializers.serialize(
        object.monthlyPrice,
        specifiedType: const FullType(double),
      );
    }
    if (object.yearlyPrice != null) {
      yield r'yearly_price';
      yield serializers.serialize(
        object.yearlyPrice,
        specifiedType: const FullType(double),
      );
    }
    if (object.setupFee != null) {
      yield r'setup_fee';
      yield serializers.serialize(
        object.setupFee,
        specifiedType: const FullType(double),
      );
    }
    if (object.hasUsageLimit != null) {
      yield r'has_usage_limit';
      yield serializers.serialize(
        object.hasUsageLimit,
        specifiedType: const FullType(bool),
      );
    }
    if (object.usageLimit != null) {
      yield r'usage_limit';
      yield serializers.serialize(
        object.usageLimit,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.usageUnit != null) {
      yield r'usage_unit';
      yield serializers.serialize(
        object.usageUnit,
        specifiedType: const FullType(String),
      );
    }
    if (object.features != null) {
      yield r'features';
      yield serializers.serialize(
        object.features,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType.nullable(Map<String, dynamic>),
      );
    }
    if (object.sortOrder != null) {
      yield r'sort_order';
      yield serializers.serialize(
        object.sortOrder,
        specifiedType: const FullType(int),
      );
    }
    if (object.documentationUrl != null) {
      yield r'documentation_url';
      yield serializers.serialize(
        object.documentationUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.videoTutorialUrl != null) {
      yield r'video_tutorial_url';
      yield serializers.serialize(
        object.videoTutorialUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.requiresTiers != null) {
      yield r'requires_tiers';
      yield serializers.serialize(
        object.requiresTiers,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
    if (object.conflictsWith != null) {
      yield r'conflicts_with';
      yield serializers.serialize(
        object.conflictsWith,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateTierRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateTierRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
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
            specifiedType: const FullType(CategoryE85Enum),
          ) as CategoryE85Enum;
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
            specifiedType: const FullType(BillingType874Enum),
          ) as BillingType874Enum;
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
        case r'features':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.features.replace(valueDes);
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
        case r'requires_tiers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.requiresTiers.replace(valueDes);
          break;
        case r'conflicts_with':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.conflictsWith.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateTierRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTierRequestBuilder();
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

