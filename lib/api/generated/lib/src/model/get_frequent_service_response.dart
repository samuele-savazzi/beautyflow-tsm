//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/category_detail.dart';
import 'package:beautyflow_api/src/model/service_basic.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_frequent_service_response.g.dart';

/// GetFrequentServiceResponse
///
/// Properties:
/// * [hasFrequentService] - Indica se l'operatore ha impostato un servizio frequente
/// * [service] 
/// * [categories] - Dizionario con chiave step_id (string) e valore oggetto categoria. Es: {\"568\": {...}, \"569\": {...}}
/// * [durationMinutes] - Durata totale in minuti
/// * [durationHumanReadable] - Durata formattata human readable (es: \"1 ora e 30 minuti\")
/// * [durationSlots] - Durata in slot da 5 minuti (es: 30 min = 6 slot)
/// * [updatedAt] - Data ultimo aggiornamento
@BuiltValue()
abstract class GetFrequentServiceResponse implements Built<GetFrequentServiceResponse, GetFrequentServiceResponseBuilder> {
  /// Indica se l'operatore ha impostato un servizio frequente
  @BuiltValueField(wireName: r'has_frequent_service')
  bool get hasFrequentService;

  @BuiltValueField(wireName: r'service')
  ServiceBasic? get service;

  /// Dizionario con chiave step_id (string) e valore oggetto categoria. Es: {\"568\": {...}, \"569\": {...}}
  @BuiltValueField(wireName: r'categories')
  BuiltMap<String, CategoryDetail>? get categories;

  /// Durata totale in minuti
  @BuiltValueField(wireName: r'duration_minutes')
  int? get durationMinutes;

  /// Durata formattata human readable (es: \"1 ora e 30 minuti\")
  @BuiltValueField(wireName: r'duration_human_readable')
  String? get durationHumanReadable;

  /// Durata in slot da 5 minuti (es: 30 min = 6 slot)
  @BuiltValueField(wireName: r'duration_slots')
  int? get durationSlots;

  /// Data ultimo aggiornamento
  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  GetFrequentServiceResponse._();

  factory GetFrequentServiceResponse([void updates(GetFrequentServiceResponseBuilder b)]) = _$GetFrequentServiceResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetFrequentServiceResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetFrequentServiceResponse> get serializer => _$GetFrequentServiceResponseSerializer();
}

class _$GetFrequentServiceResponseSerializer implements PrimitiveSerializer<GetFrequentServiceResponse> {
  @override
  final Iterable<Type> types = const [GetFrequentServiceResponse, _$GetFrequentServiceResponse];

  @override
  final String wireName = r'GetFrequentServiceResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetFrequentServiceResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'has_frequent_service';
    yield serializers.serialize(
      object.hasFrequentService,
      specifiedType: const FullType(bool),
    );
    if (object.service != null) {
      yield r'service';
      yield serializers.serialize(
        object.service,
        specifiedType: const FullType(ServiceBasic),
      );
    }
    if (object.categories != null) {
      yield r'categories';
      yield serializers.serialize(
        object.categories,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(CategoryDetail)]),
      );
    }
    if (object.durationMinutes != null) {
      yield r'duration_minutes';
      yield serializers.serialize(
        object.durationMinutes,
        specifiedType: const FullType(int),
      );
    }
    if (object.durationHumanReadable != null) {
      yield r'duration_human_readable';
      yield serializers.serialize(
        object.durationHumanReadable,
        specifiedType: const FullType(String),
      );
    }
    if (object.durationSlots != null) {
      yield r'duration_slots';
      yield serializers.serialize(
        object.durationSlots,
        specifiedType: const FullType(int),
      );
    }
    if (object.updatedAt != null) {
      yield r'updated_at';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetFrequentServiceResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetFrequentServiceResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'has_frequent_service':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasFrequentService = valueDes;
          break;
        case r'service':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ServiceBasic),
          ) as ServiceBasic;
          result.service.replace(valueDes);
          break;
        case r'categories':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(CategoryDetail)]),
          ) as BuiltMap<String, CategoryDetail>;
          result.categories.replace(valueDes);
          break;
        case r'duration_minutes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.durationMinutes = valueDes;
          break;
        case r'duration_human_readable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.durationHumanReadable = valueDes;
          break;
        case r'duration_slots':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.durationSlots = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetFrequentServiceResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetFrequentServiceResponseBuilder();
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

