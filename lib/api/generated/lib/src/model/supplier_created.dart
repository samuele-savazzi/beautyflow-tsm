//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'supplier_created.g.dart';

/// SupplierCreated
///
/// Properties:
/// * [id] 
/// * [message] 
@BuiltValue()
abstract class SupplierCreated implements Built<SupplierCreated, SupplierCreatedBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'message')
  String get message;

  SupplierCreated._();

  factory SupplierCreated([void updates(SupplierCreatedBuilder b)]) = _$SupplierCreated;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SupplierCreatedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SupplierCreated> get serializer => _$SupplierCreatedSerializer();
}

class _$SupplierCreatedSerializer implements PrimitiveSerializer<SupplierCreated> {
  @override
  final Iterable<Type> types = const [SupplierCreated, _$SupplierCreated];

  @override
  final String wireName = r'SupplierCreated';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SupplierCreated object, {
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
    SupplierCreated object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SupplierCreatedBuilder result,
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
  SupplierCreated deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SupplierCreatedBuilder();
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

