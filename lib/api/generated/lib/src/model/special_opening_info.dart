//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/date.dart';
import 'package:beautyflow_api/src/model/area_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'special_opening_info.g.dart';

/// SpecialOpeningInfo
///
/// Properties:
/// * [id] 
/// * [date] 
/// * [reason] 
/// * [area] 
@BuiltValue()
abstract class SpecialOpeningInfo implements Built<SpecialOpeningInfo, SpecialOpeningInfoBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'date')
  Date get date;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  @BuiltValueField(wireName: r'area')
  AreaInfo get area;

  SpecialOpeningInfo._();

  factory SpecialOpeningInfo([void updates(SpecialOpeningInfoBuilder b)]) = _$SpecialOpeningInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SpecialOpeningInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SpecialOpeningInfo> get serializer => _$SpecialOpeningInfoSerializer();
}

class _$SpecialOpeningInfoSerializer implements PrimitiveSerializer<SpecialOpeningInfo> {
  @override
  final Iterable<Type> types = const [SpecialOpeningInfo, _$SpecialOpeningInfo];

  @override
  final String wireName = r'SpecialOpeningInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SpecialOpeningInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(Date),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
    yield r'area';
    yield serializers.serialize(
      object.area,
      specifiedType: const FullType(AreaInfo),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SpecialOpeningInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SpecialOpeningInfoBuilder result,
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
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'area':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AreaInfo),
          ) as AreaInfo;
          result.area.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SpecialOpeningInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpecialOpeningInfoBuilder();
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

