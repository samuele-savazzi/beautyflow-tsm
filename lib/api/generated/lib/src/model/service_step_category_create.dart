//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_step_category_create.g.dart';

/// ServiceStepCategoryCreate
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [overtime] 
/// * [overprice] 
@BuiltValue()
abstract class ServiceStepCategoryCreate implements Built<ServiceStepCategoryCreate, ServiceStepCategoryCreateBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'overtime')
  int? get overtime;

  @BuiltValueField(wireName: r'overprice')
  double? get overprice;

  ServiceStepCategoryCreate._();

  factory ServiceStepCategoryCreate([void updates(ServiceStepCategoryCreateBuilder b)]) = _$ServiceStepCategoryCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServiceStepCategoryCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServiceStepCategoryCreate> get serializer => _$ServiceStepCategoryCreateSerializer();
}

class _$ServiceStepCategoryCreateSerializer implements PrimitiveSerializer<ServiceStepCategoryCreate> {
  @override
  final Iterable<Type> types = const [ServiceStepCategoryCreate, _$ServiceStepCategoryCreate];

  @override
  final String wireName = r'ServiceStepCategoryCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServiceStepCategoryCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.overtime != null) {
      yield r'overtime';
      yield serializers.serialize(
        object.overtime,
        specifiedType: const FullType(int),
      );
    }
    if (object.overprice != null) {
      yield r'overprice';
      yield serializers.serialize(
        object.overprice,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ServiceStepCategoryCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ServiceStepCategoryCreateBuilder result,
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
        case r'overtime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.overtime = valueDes;
          break;
        case r'overprice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.overprice = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServiceStepCategoryCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceStepCategoryCreateBuilder();
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

