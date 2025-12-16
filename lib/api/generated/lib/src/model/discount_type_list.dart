//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'discount_type_list.g.dart';

/// DiscountTypeList
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [valueType] 
/// * [discountType] 
/// * [percentageValue] 
/// * [fixedValue] 
/// * [displayValue] 
/// * [expirationType] 
/// * [expirationValue] 
/// * [stackable] 
/// * [combinable] 
/// * [active] 
/// * [createdAt] 
/// * [updatedAt] 
/// * [assignedCount] 
/// * [usedCount] 
@BuiltValue()
abstract class DiscountTypeList implements Built<DiscountTypeList, DiscountTypeListBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'value_type')
  String get valueType;

  @BuiltValueField(wireName: r'discount_type')
  String get discountType;

  @BuiltValueField(wireName: r'percentage_value')
  double? get percentageValue;

  @BuiltValueField(wireName: r'fixed_value')
  double? get fixedValue;

  @BuiltValueField(wireName: r'display_value')
  String get displayValue;

  @BuiltValueField(wireName: r'expiration_type')
  String get expirationType;

  @BuiltValueField(wireName: r'expiration_value')
  int? get expirationValue;

  @BuiltValueField(wireName: r'stackable')
  bool get stackable;

  @BuiltValueField(wireName: r'combinable')
  bool get combinable;

  @BuiltValueField(wireName: r'active')
  bool get active;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  @BuiltValueField(wireName: r'assigned_count')
  int get assignedCount;

  @BuiltValueField(wireName: r'used_count')
  int get usedCount;

  DiscountTypeList._();

  factory DiscountTypeList([void updates(DiscountTypeListBuilder b)]) = _$DiscountTypeList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DiscountTypeListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DiscountTypeList> get serializer => _$DiscountTypeListSerializer();
}

class _$DiscountTypeListSerializer implements PrimitiveSerializer<DiscountTypeList> {
  @override
  final Iterable<Type> types = const [DiscountTypeList, _$DiscountTypeList];

  @override
  final String wireName = r'DiscountTypeList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DiscountTypeList object, {
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
    yield r'value_type';
    yield serializers.serialize(
      object.valueType,
      specifiedType: const FullType(String),
    );
    yield r'discount_type';
    yield serializers.serialize(
      object.discountType,
      specifiedType: const FullType(String),
    );
    yield r'percentage_value';
    yield object.percentageValue == null ? null : serializers.serialize(
      object.percentageValue,
      specifiedType: const FullType.nullable(double),
    );
    yield r'fixed_value';
    yield object.fixedValue == null ? null : serializers.serialize(
      object.fixedValue,
      specifiedType: const FullType.nullable(double),
    );
    yield r'display_value';
    yield serializers.serialize(
      object.displayValue,
      specifiedType: const FullType(String),
    );
    yield r'expiration_type';
    yield serializers.serialize(
      object.expirationType,
      specifiedType: const FullType(String),
    );
    yield r'expiration_value';
    yield object.expirationValue == null ? null : serializers.serialize(
      object.expirationValue,
      specifiedType: const FullType.nullable(int),
    );
    yield r'stackable';
    yield serializers.serialize(
      object.stackable,
      specifiedType: const FullType(bool),
    );
    yield r'combinable';
    yield serializers.serialize(
      object.combinable,
      specifiedType: const FullType(bool),
    );
    yield r'active';
    yield serializers.serialize(
      object.active,
      specifiedType: const FullType(bool),
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
    yield r'assigned_count';
    yield serializers.serialize(
      object.assignedCount,
      specifiedType: const FullType(int),
    );
    yield r'used_count';
    yield serializers.serialize(
      object.usedCount,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DiscountTypeList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DiscountTypeListBuilder result,
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
        case r'value_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.valueType = valueDes;
          break;
        case r'discount_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.discountType = valueDes;
          break;
        case r'percentage_value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.percentageValue = valueDes;
          break;
        case r'fixed_value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.fixedValue = valueDes;
          break;
        case r'display_value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayValue = valueDes;
          break;
        case r'expiration_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expirationType = valueDes;
          break;
        case r'expiration_value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.expirationValue = valueDes;
          break;
        case r'stackable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.stackable = valueDes;
          break;
        case r'combinable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.combinable = valueDes;
          break;
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.active = valueDes;
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
        case r'assigned_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.assignedCount = valueDes;
          break;
        case r'used_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.usedCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DiscountTypeList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DiscountTypeListBuilder();
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

