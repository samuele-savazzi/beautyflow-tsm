//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/action55f_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'leave_request_action.g.dart';

/// LeaveRequestAction
///
/// Properties:
/// * [requestId] 
/// * [action] 
@BuiltValue()
abstract class LeaveRequestAction implements Built<LeaveRequestAction, LeaveRequestActionBuilder> {
  @BuiltValueField(wireName: r'request_id')
  int get requestId;

  @BuiltValueField(wireName: r'action')
  Action55fEnum get action;
  // enum actionEnum {  approve,  reject,  };

  LeaveRequestAction._();

  factory LeaveRequestAction([void updates(LeaveRequestActionBuilder b)]) = _$LeaveRequestAction;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LeaveRequestActionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LeaveRequestAction> get serializer => _$LeaveRequestActionSerializer();
}

class _$LeaveRequestActionSerializer implements PrimitiveSerializer<LeaveRequestAction> {
  @override
  final Iterable<Type> types = const [LeaveRequestAction, _$LeaveRequestAction];

  @override
  final String wireName = r'LeaveRequestAction';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LeaveRequestAction object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'request_id';
    yield serializers.serialize(
      object.requestId,
      specifiedType: const FullType(int),
    );
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(Action55fEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LeaveRequestAction object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LeaveRequestActionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'request_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.requestId = valueDes;
          break;
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Action55fEnum),
          ) as Action55fEnum;
          result.action = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LeaveRequestAction deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LeaveRequestActionBuilder();
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

