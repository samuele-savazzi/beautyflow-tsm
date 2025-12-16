// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CodeEnum _$newBooking = const CodeEnum._('newBooking');
const CodeEnum _$newRegistration = const CodeEnum._('newRegistration');
const CodeEnum _$cancellation = const CodeEnum._('cancellation');
const CodeEnum _$leaveRequest = const CodeEnum._('leaveRequest');
const CodeEnum _$inventory = const CodeEnum._('inventory');
const CodeEnum _$system = const CodeEnum._('system');
const CodeEnum _$consultation = const CodeEnum._('consultation');

CodeEnum _$valueOf(String name) {
  switch (name) {
    case 'newBooking':
      return _$newBooking;
    case 'newRegistration':
      return _$newRegistration;
    case 'cancellation':
      return _$cancellation;
    case 'leaveRequest':
      return _$leaveRequest;
    case 'inventory':
      return _$inventory;
    case 'system':
      return _$system;
    case 'consultation':
      return _$consultation;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CodeEnum> _$values = BuiltSet<CodeEnum>(const <CodeEnum>[
  _$newBooking,
  _$newRegistration,
  _$cancellation,
  _$leaveRequest,
  _$inventory,
  _$system,
  _$consultation,
]);

class _$CodeEnumMeta {
  const _$CodeEnumMeta();
  CodeEnum get newBooking => _$newBooking;
  CodeEnum get newRegistration => _$newRegistration;
  CodeEnum get cancellation => _$cancellation;
  CodeEnum get leaveRequest => _$leaveRequest;
  CodeEnum get inventory => _$inventory;
  CodeEnum get system => _$system;
  CodeEnum get consultation => _$consultation;
  CodeEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<CodeEnum> get values => _$values;
}

abstract class _$CodeEnumMixin {
  // ignore: non_constant_identifier_names
  _$CodeEnumMeta get CodeEnum => const _$CodeEnumMeta();
}

Serializer<CodeEnum> _$codeEnumSerializer = _$CodeEnumSerializer();

class _$CodeEnumSerializer implements PrimitiveSerializer<CodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'newBooking': 'new_booking',
    'newRegistration': 'new_registration',
    'cancellation': 'cancellation',
    'leaveRequest': 'leave_request',
    'inventory': 'inventory',
    'system': 'system',
    'consultation': 'consultation',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'new_booking': 'newBooking',
    'new_registration': 'newRegistration',
    'cancellation': 'cancellation',
    'leave_request': 'leaveRequest',
    'inventory': 'inventory',
    'system': 'system',
    'consultation': 'consultation',
  };

  @override
  final Iterable<Type> types = const <Type>[CodeEnum];
  @override
  final String wireName = 'CodeEnum';

  @override
  Object serialize(Serializers serializers, CodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CodeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
