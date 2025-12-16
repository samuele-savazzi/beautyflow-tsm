//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/gdpr_consent_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gdpr_consent_list_response.g.dart';

/// GDPRConsentListResponse
///
/// Properties:
/// * [success] 
/// * [consents] 
@BuiltValue()
abstract class GDPRConsentListResponse implements Built<GDPRConsentListResponse, GDPRConsentListResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'consents')
  BuiltList<GDPRConsentItem> get consents;

  GDPRConsentListResponse._();

  factory GDPRConsentListResponse([void updates(GDPRConsentListResponseBuilder b)]) = _$GDPRConsentListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GDPRConsentListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GDPRConsentListResponse> get serializer => _$GDPRConsentListResponseSerializer();
}

class _$GDPRConsentListResponseSerializer implements PrimitiveSerializer<GDPRConsentListResponse> {
  @override
  final Iterable<Type> types = const [GDPRConsentListResponse, _$GDPRConsentListResponse];

  @override
  final String wireName = r'GDPRConsentListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GDPRConsentListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'consents';
    yield serializers.serialize(
      object.consents,
      specifiedType: const FullType(BuiltList, [FullType(GDPRConsentItem)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GDPRConsentListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GDPRConsentListResponseBuilder result,
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
        case r'consents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GDPRConsentItem)]),
          ) as BuiltList<GDPRConsentItem>;
          result.consents.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GDPRConsentListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GDPRConsentListResponseBuilder();
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

