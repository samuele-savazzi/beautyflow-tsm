//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/image_type_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'upload_image_response.g.dart';

/// Response per upload immagine (favicon/logo/dark_logo)
///
/// Properties:
/// * [message] 
/// * [imageUrl] 
/// * [imageType] 
/// * [tenantId] 
@BuiltValue()
abstract class UploadImageResponse implements Built<UploadImageResponse, UploadImageResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: r'image_type')
  ImageTypeEnum get imageType;
  // enum imageTypeEnum {  favicon,  logo,  dark_logo,  };

  @BuiltValueField(wireName: r'tenant_id')
  int get tenantId;

  UploadImageResponse._();

  factory UploadImageResponse([void updates(UploadImageResponseBuilder b)]) = _$UploadImageResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UploadImageResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UploadImageResponse> get serializer => _$UploadImageResponseSerializer();
}

class _$UploadImageResponseSerializer implements PrimitiveSerializer<UploadImageResponse> {
  @override
  final Iterable<Type> types = const [UploadImageResponse, _$UploadImageResponse];

  @override
  final String wireName = r'UploadImageResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UploadImageResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    yield r'image_url';
    yield serializers.serialize(
      object.imageUrl,
      specifiedType: const FullType(String),
    );
    yield r'image_type';
    yield serializers.serialize(
      object.imageType,
      specifiedType: const FullType(ImageTypeEnum),
    );
    yield r'tenant_id';
    yield serializers.serialize(
      object.tenantId,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UploadImageResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UploadImageResponseBuilder result,
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
        case r'image_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.imageUrl = valueDes;
          break;
        case r'image_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ImageTypeEnum),
          ) as ImageTypeEnum;
          result.imageType = valueDes;
          break;
        case r'tenant_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tenantId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UploadImageResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UploadImageResponseBuilder();
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

