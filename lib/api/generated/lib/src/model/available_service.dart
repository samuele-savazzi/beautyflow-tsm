//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/service_steps.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'available_service.g.dart';

/// AvailableService
///
/// Properties:
/// * [id] - ID del servizio
/// * [name] - Nome del servizio
/// * [steps] - Lista di TUTTI gli step attivi del servizio (con e senza categorie), includendo tempi personalizzati operatore
@BuiltValue()
abstract class AvailableService implements Built<AvailableService, AvailableServiceBuilder> {
  /// ID del servizio
  @BuiltValueField(wireName: r'id')
  int get id;

  /// Nome del servizio
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Lista di TUTTI gli step attivi del servizio (con e senza categorie), includendo tempi personalizzati operatore
  @BuiltValueField(wireName: r'steps')
  BuiltList<ServiceSteps> get steps;

  AvailableService._();

  factory AvailableService([void updates(AvailableServiceBuilder b)]) = _$AvailableService;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AvailableServiceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AvailableService> get serializer => _$AvailableServiceSerializer();
}

class _$AvailableServiceSerializer implements PrimitiveSerializer<AvailableService> {
  @override
  final Iterable<Type> types = const [AvailableService, _$AvailableService];

  @override
  final String wireName = r'AvailableService';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AvailableService object, {
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
    yield r'steps';
    yield serializers.serialize(
      object.steps,
      specifiedType: const FullType(BuiltList, [FullType(ServiceSteps)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AvailableService object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AvailableServiceBuilder result,
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
        case r'steps':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ServiceSteps)]),
          ) as BuiltList<ServiceSteps>;
          result.steps.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AvailableService deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AvailableServiceBuilder();
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

