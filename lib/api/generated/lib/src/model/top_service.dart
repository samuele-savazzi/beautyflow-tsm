//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'top_service.g.dart';

/// TopService
///
/// Properties:
/// * [serviceId] 
/// * [serviceName] 
/// * [bookingCount] 
/// * [totalSpent] 
/// * [lastServiceDate] 
@BuiltValue()
abstract class TopService implements Built<TopService, TopServiceBuilder> {
  @BuiltValueField(wireName: r'service_id')
  int get serviceId;

  @BuiltValueField(wireName: r'service_name')
  String get serviceName;

  @BuiltValueField(wireName: r'booking_count')
  int get bookingCount;

  @BuiltValueField(wireName: r'total_spent')
  double get totalSpent;

  @BuiltValueField(wireName: r'last_service_date')
  String get lastServiceDate;

  TopService._();

  factory TopService([void updates(TopServiceBuilder b)]) = _$TopService;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TopServiceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TopService> get serializer => _$TopServiceSerializer();
}

class _$TopServiceSerializer implements PrimitiveSerializer<TopService> {
  @override
  final Iterable<Type> types = const [TopService, _$TopService];

  @override
  final String wireName = r'TopService';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TopService object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    yield r'booking_count';
    yield serializers.serialize(
      object.bookingCount,
      specifiedType: const FullType(int),
    );
    yield r'total_spent';
    yield serializers.serialize(
      object.totalSpent,
      specifiedType: const FullType(double),
    );
    yield r'last_service_date';
    yield serializers.serialize(
      object.lastServiceDate,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TopService object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TopServiceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'booking_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.bookingCount = valueDes;
          break;
        case r'total_spent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalSpent = valueDes;
          break;
        case r'last_service_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastServiceDate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TopService deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TopServiceBuilder();
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

