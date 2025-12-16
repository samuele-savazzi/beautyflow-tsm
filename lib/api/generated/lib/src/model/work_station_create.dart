//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'work_station_create.g.dart';

/// WorkStationCreate
///
/// Properties:
/// * [name] - Nome della postazione
/// * [areaId] - Area a cui appartiene la postazione
/// * [isActive] - Indica se la postazione è attiva
/// * [type] - Tipo di postazione
/// * [services] - Lista di ID dei servizi da associare alla postazione
@BuiltValue()
abstract class WorkStationCreate implements Built<WorkStationCreate, WorkStationCreateBuilder> {
  /// Nome della postazione
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Area a cui appartiene la postazione
  @BuiltValueField(wireName: r'area_id')
  int get areaId;

  /// Indica se la postazione è attiva
  @BuiltValueField(wireName: r'is_active')
  bool? get isActive;

  /// Tipo di postazione
  @BuiltValueField(wireName: r'type')
  String get type;

  /// Lista di ID dei servizi da associare alla postazione
  @BuiltValueField(wireName: r'services')
  BuiltList<int>? get services;

  WorkStationCreate._();

  factory WorkStationCreate([void updates(WorkStationCreateBuilder b)]) = _$WorkStationCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkStationCreateBuilder b) => b
      ..isActive = true
      ..services = ListBuilder();

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkStationCreate> get serializer => _$WorkStationCreateSerializer();
}

class _$WorkStationCreateSerializer implements PrimitiveSerializer<WorkStationCreate> {
  @override
  final Iterable<Type> types = const [WorkStationCreate, _$WorkStationCreate];

  @override
  final String wireName = r'WorkStationCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkStationCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'area_id';
    yield serializers.serialize(
      object.areaId,
      specifiedType: const FullType(int),
    );
    if (object.isActive != null) {
      yield r'is_active';
      yield serializers.serialize(
        object.isActive,
        specifiedType: const FullType(bool),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.services != null) {
      yield r'services';
      yield serializers.serialize(
        object.services,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WorkStationCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WorkStationCreateBuilder result,
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
        case r'area_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.areaId = valueDes;
          break;
        case r'is_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'services':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.services.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WorkStationCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkStationCreateBuilder();
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

