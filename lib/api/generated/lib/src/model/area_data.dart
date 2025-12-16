//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/area_workstation.dart';
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/area_operator_secondary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'area_data.g.dart';

/// AreaData
///
/// Properties:
/// * [id] - Area ID
/// * [name] - Area name
/// * [activeOperators] - List of active operators in this area
/// * [activeWorkstations] - List of active workstations in this area
@BuiltValue()
abstract class AreaData implements Built<AreaData, AreaDataBuilder> {
  /// Area ID
  @BuiltValueField(wireName: r'id')
  int get id;

  /// Area name
  @BuiltValueField(wireName: r'name')
  String get name;

  /// List of active operators in this area
  @BuiltValueField(wireName: r'active_operators')
  BuiltList<AreaOperatorSecondary> get activeOperators;

  /// List of active workstations in this area
  @BuiltValueField(wireName: r'active_workstations')
  BuiltList<AreaWorkstation> get activeWorkstations;

  AreaData._();

  factory AreaData([void updates(AreaDataBuilder b)]) = _$AreaData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AreaDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AreaData> get serializer => _$AreaDataSerializer();
}

class _$AreaDataSerializer implements PrimitiveSerializer<AreaData> {
  @override
  final Iterable<Type> types = const [AreaData, _$AreaData];

  @override
  final String wireName = r'AreaData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AreaData object, {
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
    yield r'active_operators';
    yield serializers.serialize(
      object.activeOperators,
      specifiedType: const FullType(BuiltList, [FullType(AreaOperatorSecondary)]),
    );
    yield r'active_workstations';
    yield serializers.serialize(
      object.activeWorkstations,
      specifiedType: const FullType(BuiltList, [FullType(AreaWorkstation)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AreaData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AreaDataBuilder result,
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
        case r'active_operators':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AreaOperatorSecondary)]),
          ) as BuiltList<AreaOperatorSecondary>;
          result.activeOperators.replace(valueDes);
          break;
        case r'active_workstations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AreaWorkstation)]),
          ) as BuiltList<AreaWorkstation>;
          result.activeWorkstations.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AreaData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AreaDataBuilder();
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

