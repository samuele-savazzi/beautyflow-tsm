//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/macro_area_enum.dart';
import 'package:beautyflow_api/src/model/gender63e_enum.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_detail.g.dart';

/// ServiceDetail
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [descption] 
/// * [minPrice] 
/// * [chemical] 
/// * [bookable] 
/// * [gender] 
/// * [genderDisplay] 
/// * [composite] 
/// * [icon] 
/// * [macroArea] 
/// * [macroAreaDisplay] 
/// * [times] 
/// * [phases] 
/// * [questions] 
/// * [regularCustomerQuestions] 
@BuiltValue()
abstract class ServiceDetail implements Built<ServiceDetail, ServiceDetailBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'descption')
  String get descption;

  @BuiltValueField(wireName: r'min_price')
  double get minPrice;

  @BuiltValueField(wireName: r'chemical')
  bool get chemical;

  @BuiltValueField(wireName: r'bookable')
  bool get bookable;

  @BuiltValueField(wireName: r'gender')
  Gender63eEnum? get gender;
  // enum genderEnum {  M,  F,  U,  };

  @BuiltValueField(wireName: r'gender_display')
  String? get genderDisplay;

  @BuiltValueField(wireName: r'composite')
  bool get composite;

  @BuiltValueField(wireName: r'icon')
  String? get icon;

  @BuiltValueField(wireName: r'macro_area')
  MacroAreaEnum? get macroArea;
  // enum macroAreaEnum {  generic,  hair,  face,  body,  nails,  makeup,  hair_removal,  eyebrows_lashes,  aesthetic_medicine,  wellness_relaxation,  };

  @BuiltValueField(wireName: r'macro_area_display')
  String? get macroAreaDisplay;

  @BuiltValueField(wireName: r'times')
  BuiltList<BuiltMap<String, Map<String, dynamic>?>> get times;

  @BuiltValueField(wireName: r'phases')
  BuiltList<BuiltMap<String, Map<String, dynamic>?>>? get phases;

  @BuiltValueField(wireName: r'questions')
  Map<String, dynamic>? get questions;

  @BuiltValueField(wireName: r'regular_customer_questions')
  Map<String, dynamic>? get regularCustomerQuestions;

  ServiceDetail._();

  factory ServiceDetail([void updates(ServiceDetailBuilder b)]) = _$ServiceDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServiceDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServiceDetail> get serializer => _$ServiceDetailSerializer();
}

class _$ServiceDetailSerializer implements PrimitiveSerializer<ServiceDetail> {
  @override
  final Iterable<Type> types = const [ServiceDetail, _$ServiceDetail];

  @override
  final String wireName = r'ServiceDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServiceDetail object, {
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
    yield r'descption';
    yield serializers.serialize(
      object.descption,
      specifiedType: const FullType(String),
    );
    yield r'min_price';
    yield serializers.serialize(
      object.minPrice,
      specifiedType: const FullType(double),
    );
    yield r'chemical';
    yield serializers.serialize(
      object.chemical,
      specifiedType: const FullType(bool),
    );
    yield r'bookable';
    yield serializers.serialize(
      object.bookable,
      specifiedType: const FullType(bool),
    );
    yield r'gender';
    yield object.gender == null ? null : serializers.serialize(
      object.gender,
      specifiedType: const FullType.nullable(Gender63eEnum),
    );
    yield r'gender_display';
    yield object.genderDisplay == null ? null : serializers.serialize(
      object.genderDisplay,
      specifiedType: const FullType.nullable(String),
    );
    yield r'composite';
    yield serializers.serialize(
      object.composite,
      specifiedType: const FullType(bool),
    );
    yield r'icon';
    yield object.icon == null ? null : serializers.serialize(
      object.icon,
      specifiedType: const FullType.nullable(String),
    );
    yield r'macro_area';
    yield object.macroArea == null ? null : serializers.serialize(
      object.macroArea,
      specifiedType: const FullType.nullable(MacroAreaEnum),
    );
    yield r'macro_area_display';
    yield object.macroAreaDisplay == null ? null : serializers.serialize(
      object.macroAreaDisplay,
      specifiedType: const FullType.nullable(String),
    );
    yield r'times';
    yield serializers.serialize(
      object.times,
      specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
    );
    if (object.phases != null) {
      yield r'phases';
      yield serializers.serialize(
        object.phases,
        specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
      );
    }
    yield r'questions';
    yield object.questions == null ? null : serializers.serialize(
      object.questions,
      specifiedType: const FullType.nullable(Map<String, dynamic>),
    );
    yield r'regular_customer_questions';
    yield object.regularCustomerQuestions == null ? null : serializers.serialize(
      object.regularCustomerQuestions,
      specifiedType: const FullType.nullable(Map<String, dynamic>),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ServiceDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ServiceDetailBuilder result,
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
        case r'descption':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.descption = valueDes;
          break;
        case r'min_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.minPrice = valueDes;
          break;
        case r'chemical':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.chemical = valueDes;
          break;
        case r'bookable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.bookable = valueDes;
          break;
        case r'gender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Gender63eEnum),
          ) as Gender63eEnum?;
          if (valueDes == null) continue;
          result.gender = valueDes;
          break;
        case r'gender_display':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.genderDisplay = valueDes;
          break;
        case r'composite':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.composite = valueDes;
          break;
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.icon = valueDes;
          break;
        case r'macro_area':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MacroAreaEnum),
          ) as MacroAreaEnum?;
          if (valueDes == null) continue;
          result.macroArea = valueDes;
          break;
        case r'macro_area_display':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.macroAreaDisplay = valueDes;
          break;
        case r'times':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
          ) as BuiltList<BuiltMap<String, Map<String, dynamic>?>>;
          result.times.replace(valueDes);
          break;
        case r'phases':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
          ) as BuiltList<BuiltMap<String, Map<String, dynamic>?>>;
          result.phases.replace(valueDes);
          break;
        case r'questions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Map<String, dynamic>),
          ) as Map<String, dynamic>?;
          if (valueDes == null) continue;
          result.questions = valueDes;
          break;
        case r'regular_customer_questions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Map<String, dynamic>),
          ) as Map<String, dynamic>?;
          if (valueDes == null) continue;
          result.regularCustomerQuestions = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServiceDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceDetailBuilder();
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

