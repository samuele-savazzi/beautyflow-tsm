//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'max_customer_day_view_response.g.dart';

/// MaxCustomerDayViewResponse
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [maxCustomerDayView] 
@BuiltValue()
abstract class MaxCustomerDayViewResponse implements Built<MaxCustomerDayViewResponse, MaxCustomerDayViewResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'max_customer_day_view')
  int get maxCustomerDayView;

  MaxCustomerDayViewResponse._();

  factory MaxCustomerDayViewResponse([void updates(MaxCustomerDayViewResponseBuilder b)]) = _$MaxCustomerDayViewResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MaxCustomerDayViewResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MaxCustomerDayViewResponse> get serializer => _$MaxCustomerDayViewResponseSerializer();
}

class _$MaxCustomerDayViewResponseSerializer implements PrimitiveSerializer<MaxCustomerDayViewResponse> {
  @override
  final Iterable<Type> types = const [MaxCustomerDayViewResponse, _$MaxCustomerDayViewResponse];

  @override
  final String wireName = r'MaxCustomerDayViewResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MaxCustomerDayViewResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'max_customer_day_view';
    yield serializers.serialize(
      object.maxCustomerDayView,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MaxCustomerDayViewResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MaxCustomerDayViewResponseBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'max_customer_day_view':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxCustomerDayView = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MaxCustomerDayViewResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MaxCustomerDayViewResponseBuilder();
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

