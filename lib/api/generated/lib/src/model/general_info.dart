//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/macro_area_enum.dart';
import 'package:beautyflow_api/src/model/gender63e_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'general_info.g.dart';

/// GeneralInfo
///
/// Properties:
/// * [name] 
/// * [description] 
/// * [minPrice] 
/// * [isChemical] 
/// * [isBookable] 
/// * [gender] 
/// * [macroArea] 
@BuiltValue()
abstract class GeneralInfo implements Built<GeneralInfo, GeneralInfoBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'minPrice')
  String get minPrice;

  @BuiltValueField(wireName: r'isChemical')
  bool get isChemical;

  @BuiltValueField(wireName: r'isBookable')
  bool? get isBookable;

  @BuiltValueField(wireName: r'gender')
  Gender63eEnum? get gender;
  // enum genderEnum {  M,  F,  U,  };

  @BuiltValueField(wireName: r'macro_area')
  MacroAreaEnum? get macroArea;
  // enum macroAreaEnum {  generic,  hair,  face,  body,  nails,  makeup,  hair_removal,  eyebrows_lashes,  aesthetic_medicine,  wellness_relaxation,  };

  GeneralInfo._();

  factory GeneralInfo([void updates(GeneralInfoBuilder b)]) = _$GeneralInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GeneralInfoBuilder b) => b
      ..isBookable = true;

  @BuiltValueSerializer(custom: true)
  static Serializer<GeneralInfo> get serializer => _$GeneralInfoSerializer();
}

class _$GeneralInfoSerializer implements PrimitiveSerializer<GeneralInfo> {
  @override
  final Iterable<Type> types = const [GeneralInfo, _$GeneralInfo];

  @override
  final String wireName = r'GeneralInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GeneralInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'minPrice';
    yield serializers.serialize(
      object.minPrice,
      specifiedType: const FullType(String),
    );
    yield r'isChemical';
    yield serializers.serialize(
      object.isChemical,
      specifiedType: const FullType(bool),
    );
    if (object.isBookable != null) {
      yield r'isBookable';
      yield serializers.serialize(
        object.isBookable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.gender != null) {
      yield r'gender';
      yield serializers.serialize(
        object.gender,
        specifiedType: const FullType(Gender63eEnum),
      );
    }
    if (object.macroArea != null) {
      yield r'macro_area';
      yield serializers.serialize(
        object.macroArea,
        specifiedType: const FullType(MacroAreaEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GeneralInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GeneralInfoBuilder result,
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
        case r'minPrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.minPrice = valueDes;
          break;
        case r'isChemical':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isChemical = valueDes;
          break;
        case r'isBookable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isBookable = valueDes;
          break;
        case r'gender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Gender63eEnum),
          ) as Gender63eEnum;
          result.gender = valueDes;
          break;
        case r'macro_area':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MacroAreaEnum),
          ) as MacroAreaEnum;
          result.macroArea = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GeneralInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GeneralInfoBuilder();
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

