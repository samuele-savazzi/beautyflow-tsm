//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dual_operators_operator_data.g.dart';

/// DualOperatorsOperatorData
///
/// Properties:
/// * [id] - ID dell'operatore
/// * [firstName] - Nome dell'operatore
/// * [lastName] - Cognome dell'operatore
/// * [mansion] - Ruolo dell'operatore
/// * [photo] - URL della foto dell'operatore
@BuiltValue()
abstract class DualOperatorsOperatorData implements Built<DualOperatorsOperatorData, DualOperatorsOperatorDataBuilder> {
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

  DualOperatorsOperatorData._();

  factory DualOperatorsOperatorData([void updates(DualOperatorsOperatorDataBuilder b)]) = _$DualOperatorsOperatorData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DualOperatorsOperatorDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DualOperatorsOperatorData> get serializer => _$DualOperatorsOperatorDataSerializer();
}

class _$DualOperatorsOperatorDataSerializer implements PrimitiveSerializer<DualOperatorsOperatorData> {
  @override
  final Iterable<Type> types = const [DualOperatorsOperatorData, _$DualOperatorsOperatorData];

  @override
  final String wireName = r'DualOperatorsOperatorData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DualOperatorsOperatorData object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    DualOperatorsOperatorData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DualOperatorsOperatorDataBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DualOperatorsOperatorData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DualOperatorsOperatorDataBuilder();
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

