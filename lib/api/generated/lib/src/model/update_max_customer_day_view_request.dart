//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_max_customer_day_view_request.g.dart';

/// UpdateMaxCustomerDayViewRequest
///
/// Properties:
/// * [areaId] 
/// * [maxCustomerDayView] 
@BuiltValue()
abstract class UpdateMaxCustomerDayViewRequest implements Built<UpdateMaxCustomerDayViewRequest, UpdateMaxCustomerDayViewRequestBuilder> {
  @BuiltValueField(wireName: r'area_id')
  int get areaId;

  @BuiltValueField(wireName: r'max_customer_day_view')
  int get maxCustomerDayView;

  UpdateMaxCustomerDayViewRequest._();

  factory UpdateMaxCustomerDayViewRequest([void updates(UpdateMaxCustomerDayViewRequestBuilder b)]) = _$UpdateMaxCustomerDayViewRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateMaxCustomerDayViewRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateMaxCustomerDayViewRequest> get serializer => _$UpdateMaxCustomerDayViewRequestSerializer();
}

class _$UpdateMaxCustomerDayViewRequestSerializer implements PrimitiveSerializer<UpdateMaxCustomerDayViewRequest> {
  @override
  final Iterable<Type> types = const [UpdateMaxCustomerDayViewRequest, _$UpdateMaxCustomerDayViewRequest];

  @override
  final String wireName = r'UpdateMaxCustomerDayViewRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateMaxCustomerDayViewRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'area_id';
    yield serializers.serialize(
      object.areaId,
      specifiedType: const FullType(int),
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
    UpdateMaxCustomerDayViewRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateMaxCustomerDayViewRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'area_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.areaId = valueDes;
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
  UpdateMaxCustomerDayViewRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateMaxCustomerDayViewRequestBuilder();
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

