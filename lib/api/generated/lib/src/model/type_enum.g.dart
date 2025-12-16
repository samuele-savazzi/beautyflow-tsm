// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TypeEnum _$HAIRDRESSER = const TypeEnum._('HAIRDRESSER');
const TypeEnum _$BARBER = const TypeEnum._('BARBER');
const TypeEnum _$BEAUTICIAN = const TypeEnum._('BEAUTICIAN');
const TypeEnum _$SPA = const TypeEnum._('SPA');

TypeEnum _$valueOf(String name) {
  switch (name) {
    case 'HAIRDRESSER':
      return _$HAIRDRESSER;
    case 'BARBER':
      return _$BARBER;
    case 'BEAUTICIAN':
      return _$BEAUTICIAN;
    case 'SPA':
      return _$SPA;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TypeEnum> _$values = BuiltSet<TypeEnum>(const <TypeEnum>[
  _$HAIRDRESSER,
  _$BARBER,
  _$BEAUTICIAN,
  _$SPA,
]);

class _$TypeEnumMeta {
  const _$TypeEnumMeta();
  TypeEnum get HAIRDRESSER => _$HAIRDRESSER;
  TypeEnum get BARBER => _$BARBER;
  TypeEnum get BEAUTICIAN => _$BEAUTICIAN;
  TypeEnum get SPA => _$SPA;
  TypeEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<TypeEnum> get values => _$values;
}

abstract class _$TypeEnumMixin {
  // ignore: non_constant_identifier_names
  _$TypeEnumMeta get TypeEnum => const _$TypeEnumMeta();
}

Serializer<TypeEnum> _$typeEnumSerializer = _$TypeEnumSerializer();

class _$TypeEnumSerializer implements PrimitiveSerializer<TypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'HAIRDRESSER': 'HAIRDRESSER',
    'BARBER': 'BARBER',
    'BEAUTICIAN': 'BEAUTICIAN',
    'SPA': 'SPA',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'HAIRDRESSER': 'HAIRDRESSER',
    'BARBER': 'BARBER',
    'BEAUTICIAN': 'BEAUTICIAN',
    'SPA': 'SPA',
  };

  @override
  final Iterable<Type> types = const <Type>[TypeEnum];
  @override
  final String wireName = 'TypeEnum';

  @override
  Object serialize(Serializers serializers, TypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
