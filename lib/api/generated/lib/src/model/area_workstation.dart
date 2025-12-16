//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'area_workstation.g.dart';

/// AreaWorkstation
///
/// Properties:
/// * [id] - Workstation ID
/// * [name] - Workstation name
@BuiltValue()
abstract class AreaWorkstation implements Built<AreaWorkstation, AreaWorkstationBuilder> {
  /// Workstation ID
  @BuiltValueField(wireName: r'id')
  int get id;

  /// Workstation name
  @BuiltValueField(wireName: r'name')
  String get name;

  AreaWorkstation._();

  factory AreaWorkstation([void updates(AreaWorkstationBuilder b)]) = _$AreaWorkstation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AreaWorkstationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AreaWorkstation> get serializer => _$AreaWorkstationSerializer();
}

class _$AreaWorkstationSerializer implements PrimitiveSerializer<AreaWorkstation> {
  @override
  final Iterable<Type> types = const [AreaWorkstation, _$AreaWorkstation];

  @override
  final String wireName = r'AreaWorkstation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AreaWorkstation object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    AreaWorkstation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AreaWorkstationBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AreaWorkstation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AreaWorkstationBuilder();
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

