//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'supplier_updated.g.dart';

/// SupplierUpdated
///
/// Properties:
/// * [id] 
/// * [message] 
@BuiltValue()
abstract class SupplierUpdated implements Built<SupplierUpdated, SupplierUpdatedBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'message')
  String get message;

  SupplierUpdated._();

  factory SupplierUpdated([void updates(SupplierUpdatedBuilder b)]) = _$SupplierUpdated;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SupplierUpdatedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SupplierUpdated> get serializer => _$SupplierUpdatedSerializer();
}

class _$SupplierUpdatedSerializer implements PrimitiveSerializer<SupplierUpdated> {
  @override
  final Iterable<Type> types = const [SupplierUpdated, _$SupplierUpdated];

  @override
  final String wireName = r'SupplierUpdated';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SupplierUpdated object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SupplierUpdated object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SupplierUpdatedBuilder result,
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
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SupplierUpdated deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SupplierUpdatedBuilder();
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

