//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'work_station_list.g.dart';

/// WorkStationList
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [type] 
/// * [isActive] 
/// * [isDisabled] 
/// * [services] 
/// * [currentDisability] 
@BuiltValue()
abstract class WorkStationList implements Built<WorkStationList, WorkStationListBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'type')
  String get type;

  @BuiltValueField(wireName: r'is_active')
  bool get isActive;

  @BuiltValueField(wireName: r'is_disabled')
  bool get isDisabled;

  @BuiltValueField(wireName: r'services')
  BuiltList<int> get services;

  @BuiltValueField(wireName: r'current_disability')
  BuiltMap<String, Map<String, dynamic>?>? get currentDisability;

  WorkStationList._();

  factory WorkStationList([void updates(WorkStationListBuilder b)]) = _$WorkStationList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkStationListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkStationList> get serializer => _$WorkStationListSerializer();
}

class _$WorkStationListSerializer implements PrimitiveSerializer<WorkStationList> {
  @override
  final Iterable<Type> types = const [WorkStationList, _$WorkStationList];

  @override
  final String wireName = r'WorkStationList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkStationList object, {
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
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'is_active';
    yield serializers.serialize(
      object.isActive,
      specifiedType: const FullType(bool),
    );
    yield r'is_disabled';
    yield serializers.serialize(
      object.isDisabled,
      specifiedType: const FullType(bool),
    );
    yield r'services';
    yield serializers.serialize(
      object.services,
      specifiedType: const FullType(BuiltList, [FullType(int)]),
    );
    yield r'current_disability';
    yield object.currentDisability == null ? null : serializers.serialize(
      object.currentDisability,
      specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WorkStationList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WorkStationListBuilder result,
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'is_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'is_disabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDisabled = valueDes;
          break;
        case r'services':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.services.replace(valueDes);
          break;
        case r'current_disability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltMap<String, Map<String, dynamic>?>?;
          if (valueDes == null) continue;
          result.currentDisability.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WorkStationList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkStationListBuilder();
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

