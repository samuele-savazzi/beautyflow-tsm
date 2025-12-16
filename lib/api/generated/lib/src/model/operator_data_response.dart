//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/first_availability_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operator_data_response.g.dart';

/// OperatorDataResponse
///
/// Properties:
/// * [id] - ID dell'operatore
/// * [firstName] - Nome dell'operatore
/// * [lastName] - Cognome dell'operatore
/// * [mansion] - Ruolo dell'operatore
/// * [photo] - URL della foto dell'operatore
/// * [firstAvailability] 
@BuiltValue()
abstract class OperatorDataResponse implements Built<OperatorDataResponse, OperatorDataResponseBuilder> {
  /// ID dell'operatore
  @BuiltValueField(wireName: r'id')
  int get id;

  /// Nome dell'operatore
  @BuiltValueField(wireName: r'first_name')
  String get firstName;

  /// Cognome dell'operatore
  @BuiltValueField(wireName: r'last_name')
  String get lastName;

  /// Ruolo dell'operatore
  @BuiltValueField(wireName: r'mansion')
  String get mansion;

  /// URL della foto dell'operatore
  @BuiltValueField(wireName: r'photo')
  String get photo;

  @BuiltValueField(wireName: r'first_availability')
  FirstAvailabilityResponse get firstAvailability;

  OperatorDataResponse._();

  factory OperatorDataResponse([void updates(OperatorDataResponseBuilder b)]) = _$OperatorDataResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperatorDataResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperatorDataResponse> get serializer => _$OperatorDataResponseSerializer();
}

class _$OperatorDataResponseSerializer implements PrimitiveSerializer<OperatorDataResponse> {
  @override
  final Iterable<Type> types = const [OperatorDataResponse, _$OperatorDataResponse];

  @override
  final String wireName = r'OperatorDataResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperatorDataResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'first_name';
    yield serializers.serialize(
      object.firstName,
      specifiedType: const FullType(String),
    );
    yield r'last_name';
    yield serializers.serialize(
      object.lastName,
      specifiedType: const FullType(String),
    );
    yield r'mansion';
    yield serializers.serialize(
      object.mansion,
      specifiedType: const FullType(String),
    );
    yield r'photo';
    yield serializers.serialize(
      object.photo,
      specifiedType: const FullType(String),
    );
    yield r'first_availability';
    yield serializers.serialize(
      object.firstAvailability,
      specifiedType: const FullType(FirstAvailabilityResponse),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OperatorDataResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperatorDataResponseBuilder result,
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
        case r'first_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.firstName = valueDes;
          break;
        case r'last_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastName = valueDes;
          break;
        case r'mansion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mansion = valueDes;
          break;
        case r'photo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.photo = valueDes;
          break;
        case r'first_availability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FirstAvailabilityResponse),
          ) as FirstAvailabilityResponse;
          result.firstAvailability.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OperatorDataResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperatorDataResponseBuilder();
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

