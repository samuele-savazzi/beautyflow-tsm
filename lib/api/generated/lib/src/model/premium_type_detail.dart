//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/area_basic.dart';
import 'package:beautyflow_api/src/model/operator_premium_access.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'premium_type_detail.g.dart';

/// PremiumTypeDetail
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [price] 
/// * [area] 
/// * [operators] 
@BuiltValue()
abstract class PremiumTypeDetail implements Built<PremiumTypeDetail, PremiumTypeDetailBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'price')
  double get price;

  @BuiltValueField(wireName: r'area')
  AreaBasic get area;

  @BuiltValueField(wireName: r'operators')
  BuiltList<OperatorPremiumAccess> get operators;

  PremiumTypeDetail._();

  factory PremiumTypeDetail([void updates(PremiumTypeDetailBuilder b)]) = _$PremiumTypeDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PremiumTypeDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PremiumTypeDetail> get serializer => _$PremiumTypeDetailSerializer();
}

class _$PremiumTypeDetailSerializer implements PrimitiveSerializer<PremiumTypeDetail> {
  @override
  final Iterable<Type> types = const [PremiumTypeDetail, _$PremiumTypeDetail];

  @override
  final String wireName = r'PremiumTypeDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PremiumTypeDetail object, {
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
    yield r'price';
    yield serializers.serialize(
      object.price,
      specifiedType: const FullType(double),
    );
    yield r'area';
    yield serializers.serialize(
      object.area,
      specifiedType: const FullType(AreaBasic),
    );
    yield r'operators';
    yield serializers.serialize(
      object.operators,
      specifiedType: const FullType(BuiltList, [FullType(OperatorPremiumAccess)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PremiumTypeDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PremiumTypeDetailBuilder result,
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
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.price = valueDes;
          break;
        case r'area':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AreaBasic),
          ) as AreaBasic;
          result.area.replace(valueDes);
          break;
        case r'operators':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OperatorPremiumAccess)]),
          ) as BuiltList<OperatorPremiumAccess>;
          result.operators.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PremiumTypeDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PremiumTypeDetailBuilder();
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

