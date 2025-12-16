//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_stats.g.dart';

/// CustomerStats
///
/// Properties:
/// * [total] 
/// * [active] 
/// * [inactive] 
/// * [blocked] 
/// * [premium] 
@BuiltValue()
abstract class CustomerStats implements Built<CustomerStats, CustomerStatsBuilder> {
  @BuiltValueField(wireName: r'total')
  int get total;

  @BuiltValueField(wireName: r'active')
  int get active;

  @BuiltValueField(wireName: r'inactive')
  int get inactive;

  @BuiltValueField(wireName: r'blocked')
  int get blocked;

  @BuiltValueField(wireName: r'premium')
  int get premium;

  CustomerStats._();

  factory CustomerStats([void updates(CustomerStatsBuilder b)]) = _$CustomerStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerStats> get serializer => _$CustomerStatsSerializer();
}

class _$CustomerStatsSerializer implements PrimitiveSerializer<CustomerStats> {
  @override
  final Iterable<Type> types = const [CustomerStats, _$CustomerStats];

  @override
  final String wireName = r'CustomerStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
    yield r'active';
    yield serializers.serialize(
      object.active,
      specifiedType: const FullType(int),
    );
    yield r'inactive';
    yield serializers.serialize(
      object.inactive,
      specifiedType: const FullType(int),
    );
    yield r'blocked';
    yield serializers.serialize(
      object.blocked,
      specifiedType: const FullType(int),
    );
    yield r'premium';
    yield serializers.serialize(
      object.premium,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerStats object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerStatsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.active = valueDes;
          break;
        case r'inactive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.inactive = valueDes;
          break;
        case r'blocked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.blocked = valueDes;
          break;
        case r'premium':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.premium = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerStatsBuilder();
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

