// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'macro_area_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MacroAreaEnum _$generic = const MacroAreaEnum._('generic');
const MacroAreaEnum _$hair = const MacroAreaEnum._('hair');
const MacroAreaEnum _$face = const MacroAreaEnum._('face');
const MacroAreaEnum _$body = const MacroAreaEnum._('body');
const MacroAreaEnum _$nails = const MacroAreaEnum._('nails');
const MacroAreaEnum _$makeup = const MacroAreaEnum._('makeup');
const MacroAreaEnum _$hairRemoval = const MacroAreaEnum._('hairRemoval');
const MacroAreaEnum _$eyebrowsLashes = const MacroAreaEnum._('eyebrowsLashes');
const MacroAreaEnum _$aestheticMedicine =
    const MacroAreaEnum._('aestheticMedicine');
const MacroAreaEnum _$wellnessRelaxation =
    const MacroAreaEnum._('wellnessRelaxation');

MacroAreaEnum _$valueOf(String name) {
  switch (name) {
    case 'generic':
      return _$generic;
    case 'hair':
      return _$hair;
    case 'face':
      return _$face;
    case 'body':
      return _$body;
    case 'nails':
      return _$nails;
    case 'makeup':
      return _$makeup;
    case 'hairRemoval':
      return _$hairRemoval;
    case 'eyebrowsLashes':
      return _$eyebrowsLashes;
    case 'aestheticMedicine':
      return _$aestheticMedicine;
    case 'wellnessRelaxation':
      return _$wellnessRelaxation;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MacroAreaEnum> _$values =
    BuiltSet<MacroAreaEnum>(const <MacroAreaEnum>[
  _$generic,
  _$hair,
  _$face,
  _$body,
  _$nails,
  _$makeup,
  _$hairRemoval,
  _$eyebrowsLashes,
  _$aestheticMedicine,
  _$wellnessRelaxation,
]);

class _$MacroAreaEnumMeta {
  const _$MacroAreaEnumMeta();
  MacroAreaEnum get generic => _$generic;
  MacroAreaEnum get hair => _$hair;
  MacroAreaEnum get face => _$face;
  MacroAreaEnum get body => _$body;
  MacroAreaEnum get nails => _$nails;
  MacroAreaEnum get makeup => _$makeup;
  MacroAreaEnum get hairRemoval => _$hairRemoval;
  MacroAreaEnum get eyebrowsLashes => _$eyebrowsLashes;
  MacroAreaEnum get aestheticMedicine => _$aestheticMedicine;
  MacroAreaEnum get wellnessRelaxation => _$wellnessRelaxation;
  MacroAreaEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<MacroAreaEnum> get values => _$values;
}

abstract class _$MacroAreaEnumMixin {
  // ignore: non_constant_identifier_names
  _$MacroAreaEnumMeta get MacroAreaEnum => const _$MacroAreaEnumMeta();
}

Serializer<MacroAreaEnum> _$macroAreaEnumSerializer =
    _$MacroAreaEnumSerializer();

class _$MacroAreaEnumSerializer implements PrimitiveSerializer<MacroAreaEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'generic': 'generic',
    'hair': 'hair',
    'face': 'face',
    'body': 'body',
    'nails': 'nails',
    'makeup': 'makeup',
    'hairRemoval': 'hair_removal',
    'eyebrowsLashes': 'eyebrows_lashes',
    'aestheticMedicine': 'aesthetic_medicine',
    'wellnessRelaxation': 'wellness_relaxation',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'generic': 'generic',
    'hair': 'hair',
    'face': 'face',
    'body': 'body',
    'nails': 'nails',
    'makeup': 'makeup',
    'hair_removal': 'hairRemoval',
    'eyebrows_lashes': 'eyebrowsLashes',
    'aesthetic_medicine': 'aestheticMedicine',
    'wellness_relaxation': 'wellnessRelaxation',
  };

  @override
  final Iterable<Type> types = const <Type>[MacroAreaEnum];
  @override
  final String wireName = 'MacroAreaEnum';

  @override
  Object serialize(Serializers serializers, MacroAreaEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MacroAreaEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MacroAreaEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
