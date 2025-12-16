//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'supplier_deleted.g.dart';

/// SupplierDeleted
///
/// Properties:
/// * [message] 
@BuiltValue()
abstract class SupplierDeleted implements Built<SupplierDeleted, SupplierDeletedBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  SupplierDeleted._();

  factory SupplierDeleted([void updates(SupplierDeletedBuilder b)]) = _$SupplierDeleted;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SupplierDeletedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SupplierDeleted> get serializer => _$SupplierDeletedSerializer();
}

class _$SupplierDeletedSerializer implements PrimitiveSerializer<SupplierDeleted> {
  @override
  final Iterable<Type> types = const [SupplierDeleted, _$SupplierDeleted];

  @override
  final String wireName = r'SupplierDeleted';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SupplierDeleted object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SupplierDeleted object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SupplierDeletedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  SupplierDeleted deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SupplierDeletedBuilder();
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

