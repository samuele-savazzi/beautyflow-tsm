//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/regular_customer_service_item.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'regular_customer_item.g.dart';

/// RegularCustomerItem
///
/// Properties:
/// * [id] 
/// * [firstName] 
/// * [lastName] 
/// * [phoneNumber] 
/// * [email] 
/// * [activeServicesCount] 
/// * [services] 
@BuiltValue()
abstract class RegularCustomerItem implements Built<RegularCustomerItem, RegularCustomerItemBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'first_name')
  String get firstName;

  @BuiltValueField(wireName: r'last_name')
  String get lastName;

  @BuiltValueField(wireName: r'phone_number')
  String get phoneNumber;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'active_services_count')
  int get activeServicesCount;

  @BuiltValueField(wireName: r'services')
  BuiltList<RegularCustomerServiceItem> get services;

  RegularCustomerItem._();

  factory RegularCustomerItem([void updates(RegularCustomerItemBuilder b)]) = _$RegularCustomerItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegularCustomerItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegularCustomerItem> get serializer => _$RegularCustomerItemSerializer();
}

class _$RegularCustomerItemSerializer implements PrimitiveSerializer<RegularCustomerItem> {
  @override
  final Iterable<Type> types = const [RegularCustomerItem, _$RegularCustomerItem];

  @override
  final String wireName = r'RegularCustomerItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegularCustomerItem object, {
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
    yield r'phone_number';
    yield serializers.serialize(
      object.phoneNumber,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield object.email == null ? null : serializers.serialize(
      object.email,
      specifiedType: const FullType.nullable(String),
    );
    yield r'active_services_count';
    yield serializers.serialize(
      object.activeServicesCount,
      specifiedType: const FullType(int),
    );
    yield r'services';
    yield serializers.serialize(
      object.services,
      specifiedType: const FullType(BuiltList, [FullType(RegularCustomerServiceItem)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RegularCustomerItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RegularCustomerItemBuilder result,
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
        case r'phone_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phoneNumber = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        case r'active_services_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.activeServicesCount = valueDes;
          break;
        case r'services':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(RegularCustomerServiceItem)]),
          ) as BuiltList<RegularCustomerServiceItem>;
          result.services.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegularCustomerItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegularCustomerItemBuilder();
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

