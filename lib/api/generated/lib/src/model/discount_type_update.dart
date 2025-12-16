//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/value_type_enum.dart';
import 'package:beautyflow_api/src/model/expiration_type_enum.dart';
import 'package:beautyflow_api/src/model/discount_type_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'discount_type_update.g.dart';

/// DiscountTypeUpdate
///
/// Properties:
/// * [name] 
/// * [valueType] 
/// * [discountType] 
/// * [percentageValue] 
/// * [fixedValue] 
/// * [expirationType] 
/// * [expirationValue] 
/// * [stackable] 
/// * [combinable] 
/// * [active] 
@BuiltValue()
abstract class DiscountTypeUpdate implements Built<DiscountTypeUpdate, DiscountTypeUpdateBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'value_type')
  ValueTypeEnum? get valueType;
  // enum valueTypeEnum {  percentage,  fixed,  };

  @BuiltValueField(wireName: r'discount_type')
  DiscountTypeEnum? get discountType;
  // enum discountTypeEnum {  registration,  friend,  normal,  };

  @BuiltValueField(wireName: r'percentage_value')
  double? get percentageValue;

  @BuiltValueField(wireName: r'fixed_value')
  double? get fixedValue;

  @BuiltValueField(wireName: r'expiration_type')
  ExpirationTypeEnum? get expirationType;
  // enum expirationTypeEnum {  days,  month,  never,  };

  @BuiltValueField(wireName: r'expiration_value')
  int? get expirationValue;

  @BuiltValueField(wireName: r'stackable')
  bool? get stackable;

  @BuiltValueField(wireName: r'combinable')
  bool? get combinable;

  @BuiltValueField(wireName: r'active')
  bool? get active;

  DiscountTypeUpdate._();

  factory DiscountTypeUpdate([void updates(DiscountTypeUpdateBuilder b)]) = _$DiscountTypeUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DiscountTypeUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DiscountTypeUpdate> get serializer => _$DiscountTypeUpdateSerializer();
}

class _$DiscountTypeUpdateSerializer implements PrimitiveSerializer<DiscountTypeUpdate> {
  @override
  final Iterable<Type> types = const [DiscountTypeUpdate, _$DiscountTypeUpdate];

  @override
  final String wireName = r'DiscountTypeUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DiscountTypeUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.valueType != null) {
      yield r'value_type';
      yield serializers.serialize(
        object.valueType,
        specifiedType: const FullType(ValueTypeEnum),
      );
    }
    if (object.discountType != null) {
      yield r'discount_type';
      yield serializers.serialize(
        object.discountType,
        specifiedType: const FullType(DiscountTypeEnum),
      );
    }
    if (object.percentageValue != null) {
      yield r'percentage_value';
      yield serializers.serialize(
        object.percentageValue,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.fixedValue != null) {
      yield r'fixed_value';
      yield serializers.serialize(
        object.fixedValue,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.expirationType != null) {
      yield r'expiration_type';
      yield serializers.serialize(
        object.expirationType,
        specifiedType: const FullType(ExpirationTypeEnum),
      );
    }
    if (object.expirationValue != null) {
      yield r'expiration_value';
      yield serializers.serialize(
        object.expirationValue,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.stackable != null) {
      yield r'stackable';
      yield serializers.serialize(
        object.stackable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.combinable != null) {
      yield r'combinable';
      yield serializers.serialize(
        object.combinable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.active != null) {
      yield r'active';
      yield serializers.serialize(
        object.active,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DiscountTypeUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DiscountTypeUpdateBuilder result,
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
        case r'value_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ValueTypeEnum),
          ) as ValueTypeEnum;
          result.valueType = valueDes;
          break;
        case r'discount_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DiscountTypeEnum),
          ) as DiscountTypeEnum;
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
        case r'expiration_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExpirationTypeEnum),
          ) as ExpirationTypeEnum;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DiscountTypeUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DiscountTypeUpdateBuilder();
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

