//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_max_customer_day_view_response.g.dart';

/// UpdateMaxCustomerDayViewResponse
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [maxCustomerDayView] 
@BuiltValue()
abstract class UpdateMaxCustomerDayViewResponse implements Built<UpdateMaxCustomerDayViewResponse, UpdateMaxCustomerDayViewResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'max_customer_day_view')
  int get maxCustomerDayView;

  UpdateMaxCustomerDayViewResponse._();

  factory UpdateMaxCustomerDayViewResponse([void updates(UpdateMaxCustomerDayViewResponseBuilder b)]) = _$UpdateMaxCustomerDayViewResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateMaxCustomerDayViewResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateMaxCustomerDayViewResponse> get serializer => _$UpdateMaxCustomerDayViewResponseSerializer();
}

class _$UpdateMaxCustomerDayViewResponseSerializer implements PrimitiveSerializer<UpdateMaxCustomerDayViewResponse> {
  @override
  final Iterable<Type> types = const [UpdateMaxCustomerDayViewResponse, _$UpdateMaxCustomerDayViewResponse];

  @override
  final String wireName = r'UpdateMaxCustomerDayViewResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateMaxCustomerDayViewResponse object, {
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
    UpdateMaxCustomerDayViewResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateMaxCustomerDayViewResponseBuilder result,
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
  UpdateMaxCustomerDayViewResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateMaxCustomerDayViewResponseBuilder();
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

