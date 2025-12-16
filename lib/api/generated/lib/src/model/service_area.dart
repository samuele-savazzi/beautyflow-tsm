//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/operator_pricing.dart';
import 'package:beautyflow_api/src/model/operator_time.dart';
import 'package:beautyflow_api/src/model/workstation.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_area.g.dart';

/// Serializzatore per i servizi
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [description] 
/// * [minPrice] 
/// * [chemical] 
/// * [questions] 
/// * [icon] 
/// * [workstations] 
/// * [operatorTimes] 
/// * [operatorPricing] 
/// * [macroArea] 
/// * [price] 
@BuiltValue()
abstract class ServiceArea implements Built<ServiceArea, ServiceAreaBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'min_price')
  double? get minPrice;

  @BuiltValueField(wireName: r'chemical')
  bool get chemical;

  @BuiltValueField(wireName: r'questions')
  Map<String, dynamic>? get questions;

  @BuiltValueField(wireName: r'icon')
  String get icon;

  @BuiltValueField(wireName: r'workstations')
  BuiltList<Workstation> get workstations;

  @BuiltValueField(wireName: r'operator_times')
  BuiltList<OperatorTime>? get operatorTimes;

  @BuiltValueField(wireName: r'operator_pricing')
  BuiltList<OperatorPricing>? get operatorPricing;

  @BuiltValueField(wireName: r'macro_area')
  String get macroArea;

  @BuiltValueField(wireName: r'price')
  String get price;

  ServiceArea._();

  factory ServiceArea([void updates(ServiceAreaBuilder b)]) = _$ServiceArea;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServiceAreaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServiceArea> get serializer => _$ServiceAreaSerializer();
}

class _$ServiceAreaSerializer implements PrimitiveSerializer<ServiceArea> {
  @override
  final Iterable<Type> types = const [ServiceArea, _$ServiceArea];

  @override
  final String wireName = r'ServiceArea';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServiceArea object, {
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
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    if (object.minPrice != null) {
      yield r'min_price';
      yield serializers.serialize(
        object.minPrice,
        specifiedType: const FullType(double),
      );
    }
    yield r'chemical';
    yield serializers.serialize(
      object.chemical,
      specifiedType: const FullType(bool),
    );
    yield r'questions';
    yield object.questions == null ? null : serializers.serialize(
      object.questions,
      specifiedType: const FullType.nullable(Map<String, dynamic>),
    );
    yield r'icon';
    yield serializers.serialize(
      object.icon,
      specifiedType: const FullType(String),
    );
    yield r'workstations';
    yield serializers.serialize(
      object.workstations,
      specifiedType: const FullType(BuiltList, [FullType(Workstation)]),
    );
    if (object.operatorTimes != null) {
      yield r'operator_times';
      yield serializers.serialize(
        object.operatorTimes,
        specifiedType: const FullType(BuiltList, [FullType(OperatorTime)]),
      );
    }
    if (object.operatorPricing != null) {
      yield r'operator_pricing';
      yield serializers.serialize(
        object.operatorPricing,
        specifiedType: const FullType(BuiltList, [FullType(OperatorPricing)]),
      );
    }
    yield r'macro_area';
    yield serializers.serialize(
      object.macroArea,
      specifiedType: const FullType(String),
    );
    yield r'price';
    yield serializers.serialize(
      object.price,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ServiceArea object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ServiceAreaBuilder result,
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
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
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
        case r'questions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Map<String, dynamic>),
          ) as Map<String, dynamic>?;
          if (valueDes == null) continue;
          result.questions = valueDes;
          break;
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.icon = valueDes;
          break;
        case r'workstations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Workstation)]),
          ) as BuiltList<Workstation>;
          result.workstations.replace(valueDes);
          break;
        case r'operator_times':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OperatorTime)]),
          ) as BuiltList<OperatorTime>;
          result.operatorTimes.replace(valueDes);
          break;
        case r'operator_pricing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OperatorPricing)]),
          ) as BuiltList<OperatorPricing>;
          result.operatorPricing.replace(valueDes);
          break;
        case r'macro_area':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.macroArea = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.price = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServiceArea deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceAreaBuilder();
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

