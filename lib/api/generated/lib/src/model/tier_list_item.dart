//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/billing_type_efc_enum.dart';
import 'package:beautyflow_api/src/model/category_d08_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tier_list_item.g.dart';

/// Serializer semplificato per lista Tier
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [code] 
/// * [description] 
/// * [icon] - Material icon name (es: analytics, integration_instructions)
/// * [category] 
/// * [isActive] 
/// * [isPublic] - Visibile nel marketplace per acquisto self-service dai tenant
/// * [isFeatured] - In evidenza nel marketplace
/// * [billingType] 
/// * [monthlyPrice] 
/// * [yearlyPrice] 
/// * [sortOrder] 
/// * [createdAt] 
@BuiltValue()
abstract class TierListItem implements Built<TierListItem, TierListItemBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'code')
  String get code;

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

  @BuiltValueField(wireName: r'billing_type')
  BillingTypeEfcEnum get billingType;
  // enum billingTypeEnum {  one_time,  monthly,  yearly,  };

  @BuiltValueField(wireName: r'monthly_price')
  double get monthlyPrice;

  @BuiltValueField(wireName: r'yearly_price')
  double get yearlyPrice;

  @BuiltValueField(wireName: r'sort_order')
  int get sortOrder;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  TierListItem._();

  factory TierListItem([void updates(TierListItemBuilder b)]) = _$TierListItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TierListItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TierListItem> get serializer => _$TierListItemSerializer();
}

class _$TierListItemSerializer implements PrimitiveSerializer<TierListItem> {
  @override
  final Iterable<Type> types = const [TierListItem, _$TierListItem];

  @override
  final String wireName = r'TierListItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TierListItem object, {
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
    yield r'sort_order';
    yield serializers.serialize(
      object.sortOrder,
      specifiedType: const FullType(int),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TierListItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TierListItemBuilder result,
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
        case r'sort_order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sortOrder = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TierListItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TierListItemBuilder();
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

