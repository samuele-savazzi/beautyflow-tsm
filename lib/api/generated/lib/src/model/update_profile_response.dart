//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/updated_customer_profile.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_profile_response.g.dart';

/// UpdateProfileResponse
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [customer] 
@BuiltValue()
abstract class UpdateProfileResponse implements Built<UpdateProfileResponse, UpdateProfileResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'customer')
  UpdatedCustomerProfile get customer;

  UpdateProfileResponse._();

  factory UpdateProfileResponse([void updates(UpdateProfileResponseBuilder b)]) = _$UpdateProfileResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateProfileResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateProfileResponse> get serializer => _$UpdateProfileResponseSerializer();
}

class _$UpdateProfileResponseSerializer implements PrimitiveSerializer<UpdateProfileResponse> {
  @override
  final Iterable<Type> types = const [UpdateProfileResponse, _$UpdateProfileResponse];

  @override
  final String wireName = r'UpdateProfileResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateProfileResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    yield r'customer';
    yield serializers.serialize(
      object.customer,
      specifiedType: const FullType(UpdatedCustomerProfile),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateProfileResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateProfileResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'customer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdatedCustomerProfile),
          ) as UpdatedCustomerProfile;
          result.customer.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateProfileResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateProfileResponseBuilder();
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

