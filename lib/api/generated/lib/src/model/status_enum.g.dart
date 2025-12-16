// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StatusEnum _$confirmed = const StatusEnum._('confirmed');
const StatusEnum _$completed = const StatusEnum._('completed');
const StatusEnum _$convertedToBooking =
    const StatusEnum._('convertedToBooking');
const StatusEnum _$readyToBook = const StatusEnum._('readyToBook');
const StatusEnum _$cancelled = const StatusEnum._('cancelled');

StatusEnum _$valueOf(String name) {
  switch (name) {
    case 'confirmed':
      return _$confirmed;
    case 'completed':
      return _$completed;
    case 'convertedToBooking':
      return _$convertedToBooking;
    case 'readyToBook':
      return _$readyToBook;
    case 'cancelled':
      return _$cancelled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StatusEnum> _$values = BuiltSet<StatusEnum>(const <StatusEnum>[
  _$confirmed,
  _$completed,
  _$convertedToBooking,
  _$readyToBook,
  _$cancelled,
]);

class _$StatusEnumMeta {
  const _$StatusEnumMeta();
  StatusEnum get confirmed => _$confirmed;
  StatusEnum get completed => _$completed;
  StatusEnum get convertedToBooking => _$convertedToBooking;
  StatusEnum get readyToBook => _$readyToBook;
  StatusEnum get cancelled => _$cancelled;
  StatusEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<StatusEnum> get values => _$values;
}

abstract class _$StatusEnumMixin {
  // ignore: non_constant_identifier_names
  _$StatusEnumMeta get StatusEnum => const _$StatusEnumMeta();
}

Serializer<StatusEnum> _$statusEnumSerializer = _$StatusEnumSerializer();

class _$StatusEnumSerializer implements PrimitiveSerializer<StatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'confirmed': 'confirmed',
    'completed': 'completed',
    'convertedToBooking': 'converted_to_booking',
    'readyToBook': 'ready_to_book',
    'cancelled': 'cancelled',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'confirmed': 'confirmed',
    'completed': 'completed',
    'converted_to_booking': 'convertedToBooking',
    'ready_to_book': 'readyToBook',
    'cancelled': 'cancelled',
  };

  @override
  final Iterable<Type> types = const <Type>[StatusEnum];
  @override
  final String wireName = 'StatusEnum';

  @override
  Object serialize(Serializers serializers, StatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
