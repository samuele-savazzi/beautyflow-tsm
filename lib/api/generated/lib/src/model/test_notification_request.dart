//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/visibility_enum.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'test_notification_request.g.dart';

/// TestNotificationRequest
///
/// Properties:
/// * [visibility] 
/// * [testBulk] - Se True, testa l'invio in bulk per gruppi di utenti
/// * [rolesFilter] - Dizionario con filtri per ruoli (es. {\"is_admin\": true})
/// * [areas] - Lista di ID aree da includere nel test
/// * [userId] - ID utente a cui inviare le notifiche (solo per test individuali)
@BuiltValue()
abstract class TestNotificationRequest implements Built<TestNotificationRequest, TestNotificationRequestBuilder> {
  @BuiltValueField(wireName: r'visibility')
  VisibilityEnum? get visibility;
  // enum visibilityEnum {  individual,  group,  public,  };

  /// Se True, testa l'invio in bulk per gruppi di utenti
  @BuiltValueField(wireName: r'test_bulk')
  bool? get testBulk;

  /// Dizionario con filtri per ruoli (es. {\"is_admin\": true})
  @BuiltValueField(wireName: r'roles_filter')
  BuiltMap<String, Map<String, dynamic>?>? get rolesFilter;

  /// Lista di ID aree da includere nel test
  @BuiltValueField(wireName: r'areas')
  BuiltList<int>? get areas;

  /// ID utente a cui inviare le notifiche (solo per test individuali)
  @BuiltValueField(wireName: r'user_id')
  int? get userId;

  TestNotificationRequest._();

  factory TestNotificationRequest([void updates(TestNotificationRequestBuilder b)]) = _$TestNotificationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TestNotificationRequestBuilder b) => b
      ..visibility = VisibilityEnum.individual
      ..testBulk = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<TestNotificationRequest> get serializer => _$TestNotificationRequestSerializer();
}

class _$TestNotificationRequestSerializer implements PrimitiveSerializer<TestNotificationRequest> {
  @override
  final Iterable<Type> types = const [TestNotificationRequest, _$TestNotificationRequest];

  @override
  final String wireName = r'TestNotificationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TestNotificationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.visibility != null) {
      yield r'visibility';
      yield serializers.serialize(
        object.visibility,
        specifiedType: const FullType(VisibilityEnum),
      );
    }
    if (object.testBulk != null) {
      yield r'test_bulk';
      yield serializers.serialize(
        object.testBulk,
        specifiedType: const FullType(bool),
      );
    }
    if (object.rolesFilter != null) {
      yield r'roles_filter';
      yield serializers.serialize(
        object.rolesFilter,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
      );
    }
    if (object.areas != null) {
      yield r'areas';
      yield serializers.serialize(
        object.areas,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
    if (object.userId != null) {
      yield r'user_id';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TestNotificationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TestNotificationRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'visibility':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VisibilityEnum),
          ) as VisibilityEnum;
          result.visibility = valueDes;
          break;
        case r'test_bulk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.testBulk = valueDes;
          break;
        case r'roles_filter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltMap<String, Map<String, dynamic>?>;
          result.rolesFilter.replace(valueDes);
          break;
        case r'areas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.areas.replace(valueDes);
          break;
        case r'user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.userId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TestNotificationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestNotificationRequestBuilder();
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

