// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_type_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DiscountTypeEnum _$registration =
    const DiscountTypeEnum._('registration');
const DiscountTypeEnum _$friend = const DiscountTypeEnum._('friend');
const DiscountTypeEnum _$normal = const DiscountTypeEnum._('normal');

DiscountTypeEnum _$valueOf(String name) {
  switch (name) {
    case 'registration':
      return _$registration;
    case 'friend':
      return _$friend;
    case 'normal':
      return _$normal;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DiscountTypeEnum> _$values =
    BuiltSet<DiscountTypeEnum>(const <DiscountTypeEnum>[
  _$registration,
  _$friend,
  _$normal,
]);

class _$DiscountTypeEnumMeta {
  const _$DiscountTypeEnumMeta();
  DiscountTypeEnum get registration => _$registration;
  DiscountTypeEnum get friend => _$friend;
  DiscountTypeEnum get normal => _$normal;
  DiscountTypeEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<DiscountTypeEnum> get values => _$values;
}

abstract class _$DiscountTypeEnumMixin {
  // ignore: non_constant_identifier_names
  _$DiscountTypeEnumMeta get DiscountTypeEnum => const _$DiscountTypeEnumMeta();
}

Serializer<DiscountTypeEnum> _$discountTypeEnumSerializer =
    _$DiscountTypeEnumSerializer();

class _$DiscountTypeEnumSerializer
    implements PrimitiveSerializer<DiscountTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'registration': 'registration',
    'friend': 'friend',
    'normal': 'normal',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'registration': 'registration',
    'friend': 'friend',
    'normal': 'normal',
  };

  @override
  final Iterable<Type> types = const <Type>[DiscountTypeEnum];
  @override
  final String wireName = 'DiscountTypeEnum';

  @override
  Object serialize(Serializers serializers, DiscountTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DiscountTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DiscountTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
