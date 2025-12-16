//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/area_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'area_details_response.g.dart';

/// AreaDetailsResponse
///
/// Properties:
/// * [success] - Request status
/// * [areas] - List of areas with their operators and workstations
@BuiltValue()
abstract class AreaDetailsResponse implements Built<AreaDetailsResponse, AreaDetailsResponseBuilder> {
  /// Request status
  @BuiltValueField(wireName: r'success')
  bool get success;

  /// List of areas with their operators and workstations
  @BuiltValueField(wireName: r'areas')
  BuiltList<AreaData> get areas;

  AreaDetailsResponse._();

  factory AreaDetailsResponse([void updates(AreaDetailsResponseBuilder b)]) = _$AreaDetailsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AreaDetailsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AreaDetailsResponse> get serializer => _$AreaDetailsResponseSerializer();
}

class _$AreaDetailsResponseSerializer implements PrimitiveSerializer<AreaDetailsResponse> {
  @override
  final Iterable<Type> types = const [AreaDetailsResponse, _$AreaDetailsResponse];

  @override
  final String wireName = r'AreaDetailsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AreaDetailsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'areas';
    yield serializers.serialize(
      object.areas,
      specifiedType: const FullType(BuiltList, [FullType(AreaData)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AreaDetailsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AreaDetailsResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'areas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AreaData)]),
          ) as BuiltList<AreaData>;
          result.areas.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AreaDetailsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AreaDetailsResponseBuilder();
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

