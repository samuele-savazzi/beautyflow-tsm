//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'area_operator.g.dart';

/// AreaOperator
///
/// Properties:
/// * [operatorId] 
/// * [operatorName] 
/// * [operatorType] - Tipo operatore: \"operator\" o \"operator_authorized\"
/// * [workstationIds] - Array degli ID delle workstation su cui l'operatore è abilitato
/// * [attachmentUrl] - URL signed dell'immagine profilo dell'operatore
@BuiltValue()
abstract class AreaOperator implements Built<AreaOperator, AreaOperatorBuilder> {
  @BuiltValueField(wireName: r'operator_id')
  int get operatorId;

  @BuiltValueField(wireName: r'operator_name')
  String get operatorName;

  /// Tipo operatore: \"operator\" o \"operator_authorized\"
  @BuiltValueField(wireName: r'operator_type')
  String get operatorType;

  /// Array degli ID delle workstation su cui l'operatore è abilitato
  @BuiltValueField(wireName: r'workstation_ids')
  BuiltList<int> get workstationIds;

  /// URL signed dell'immagine profilo dell'operatore
  @BuiltValueField(wireName: r'attachment_url')
  String? get attachmentUrl;

  AreaOperator._();

  factory AreaOperator([void updates(AreaOperatorBuilder b)]) = _$AreaOperator;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AreaOperatorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AreaOperator> get serializer => _$AreaOperatorSerializer();
}

class _$AreaOperatorSerializer implements PrimitiveSerializer<AreaOperator> {
  @override
  final Iterable<Type> types = const [AreaOperator, _$AreaOperator];

  @override
  final String wireName = r'AreaOperator';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AreaOperator object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'operator_id';
    yield serializers.serialize(
      object.operatorId,
      specifiedType: const FullType(int),
    );
    yield r'operator_name';
    yield serializers.serialize(
      object.operatorName,
      specifiedType: const FullType(String),
    );
    yield r'operator_type';
    yield serializers.serialize(
      object.operatorType,
      specifiedType: const FullType(String),
    );
    yield r'workstation_ids';
    yield serializers.serialize(
      object.workstationIds,
      specifiedType: const FullType(BuiltList, [FullType(int)]),
    );
    if (object.attachmentUrl != null) {
      yield r'attachment_url';
      yield serializers.serialize(
        object.attachmentUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AreaOperator object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AreaOperatorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'operator_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.operatorId = valueDes;
          break;
        case r'operator_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.operatorName = valueDes;
          break;
        case r'operator_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.operatorType = valueDes;
          break;
        case r'workstation_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.workstationIds.replace(valueDes);
          break;
        case r'attachment_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.attachmentUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AreaOperator deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AreaOperatorBuilder();
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

