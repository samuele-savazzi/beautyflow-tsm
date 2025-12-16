//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'regular_customer_service_item.g.dart';

/// RegularCustomerServiceItem
///
/// Properties:
/// * [id] 
/// * [serviceId] 
/// * [serviceName] 
/// * [markedRegularAt] 
/// * [markedBy] 
@BuiltValue()
abstract class RegularCustomerServiceItem implements Built<RegularCustomerServiceItem, RegularCustomerServiceItemBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'service_id')
  int get serviceId;

  @BuiltValueField(wireName: r'service_name')
  String get serviceName;

  @BuiltValueField(wireName: r'marked_regular_at')
  DateTime get markedRegularAt;

  @BuiltValueField(wireName: r'marked_by')
  String? get markedBy;

  RegularCustomerServiceItem._();

  factory RegularCustomerServiceItem([void updates(RegularCustomerServiceItemBuilder b)]) = _$RegularCustomerServiceItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegularCustomerServiceItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegularCustomerServiceItem> get serializer => _$RegularCustomerServiceItemSerializer();
}

class _$RegularCustomerServiceItemSerializer implements PrimitiveSerializer<RegularCustomerServiceItem> {
  @override
  final Iterable<Type> types = const [RegularCustomerServiceItem, _$RegularCustomerServiceItem];

  @override
  final String wireName = r'RegularCustomerServiceItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegularCustomerServiceItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'service_id';
    yield serializers.serialize(
      object.serviceId,
      specifiedType: const FullType(int),
    );
    yield r'service_name';
    yield serializers.serialize(
      object.serviceName,
      specifiedType: const FullType(String),
    );
    yield r'marked_regular_at';
    yield serializers.serialize(
      object.markedRegularAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'marked_by';
    yield object.markedBy == null ? null : serializers.serialize(
      object.markedBy,
      specifiedType: const FullType.nullable(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RegularCustomerServiceItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RegularCustomerServiceItemBuilder result,
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
        case r'service_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.serviceId = valueDes;
          break;
        case r'service_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.serviceName = valueDes;
          break;
        case r'marked_regular_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.markedRegularAt = valueDes;
          break;
        case r'marked_by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.markedBy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegularCustomerServiceItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegularCustomerServiceItemBuilder();
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

