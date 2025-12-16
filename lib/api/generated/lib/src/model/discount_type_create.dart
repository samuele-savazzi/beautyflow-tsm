//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/value_type_enum.dart';
import 'package:beautyflow_api/src/model/expiration_type_enum.dart';
import 'package:beautyflow_api/src/model/discount_type_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'discount_type_create.g.dart';

/// DiscountTypeCreate
///
/// Properties:
/// * [name] - Nome del tipo di sconto
/// * [valueType] 
/// * [discountType] 
/// * [percentageValue] - Valore percentuale (es. 20.00 per 20%)
/// * [fixedValue] - Valore fisso in euro
/// * [expirationType] 
/// * [expirationValue] - Numero di giorni o mesi per la scadenza
/// * [stackable] - Se può essere usato insieme ad altri sconti stackable
/// * [combinable] - Se può essere combinato con altri sconti dello stesso tipo
/// * [active] 
@BuiltValue()
abstract class DiscountTypeCreate implements Built<DiscountTypeCreate, DiscountTypeCreateBuilder> {
  /// Nome del tipo di sconto
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'value_type')
  ValueTypeEnum get valueType;
  // enum valueTypeEnum {  percentage,  fixed,  };

  @BuiltValueField(wireName: r'discount_type')
  DiscountTypeEnum get discountType;
  // enum discountTypeEnum {  registration,  friend,  normal,  };

  /// Valore percentuale (es. 20.00 per 20%)
  @BuiltValueField(wireName: r'percentage_value')
  double? get percentageValue;

  /// Valore fisso in euro
  @BuiltValueField(wireName: r'fixed_value')
  double? get fixedValue;

  @BuiltValueField(wireName: r'expiration_type')
  ExpirationTypeEnum get expirationType;
  // enum expirationTypeEnum {  days,  month,  never,  };

  /// Numero di giorni o mesi per la scadenza
  @BuiltValueField(wireName: r'expiration_value')
  int? get expirationValue;

  /// Se può essere usato insieme ad altri sconti stackable
  @BuiltValueField(wireName: r'stackable')
  bool? get stackable;

  /// Se può essere combinato con altri sconti dello stesso tipo
  @BuiltValueField(wireName: r'combinable')
  bool? get combinable;

  @BuiltValueField(wireName: r'active')
  bool? get active;

  DiscountTypeCreate._();

  factory DiscountTypeCreate([void updates(DiscountTypeCreateBuilder b)]) = _$DiscountTypeCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DiscountTypeCreateBuilder b) => b
      ..stackable = false
      ..combinable = false
      ..active = true;

  @BuiltValueSerializer(custom: true)
  static Serializer<DiscountTypeCreate> get serializer => _$DiscountTypeCreateSerializer();
}

class _$DiscountTypeCreateSerializer implements PrimitiveSerializer<DiscountTypeCreate> {
  @override
  final Iterable<Type> types = const [DiscountTypeCreate, _$DiscountTypeCreate];

  @override
  final String wireName = r'DiscountTypeCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DiscountTypeCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'value_type';
    yield serializers.serialize(
      object.valueType,
      specifiedType: const FullType(ValueTypeEnum),
    );
    yield r'discount_type';
    yield serializers.serialize(
      object.discountType,
      specifiedType: const FullType(DiscountTypeEnum),
    );
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
    yield r'expiration_type';
    yield serializers.serialize(
      object.expirationType,
      specifiedType: const FullType(ExpirationTypeEnum),
    );
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
    DiscountTypeCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DiscountTypeCreateBuilder result,
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
  DiscountTypeCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DiscountTypeCreateBuilder();
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

