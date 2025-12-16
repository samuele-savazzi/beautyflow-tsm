// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_mark_as_missed_request_reason_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BookingMarkAsMissedRequestReasonEnum _$noShow =
    const BookingMarkAsMissedRequestReasonEnum._('noShow');
const BookingMarkAsMissedRequestReasonEnum _$cancelled =
    const BookingMarkAsMissedRequestReasonEnum._('cancelled');

BookingMarkAsMissedRequestReasonEnum _$valueOf(String name) {
  switch (name) {
    case 'noShow':
      return _$noShow;
    case 'cancelled':
      return _$cancelled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<BookingMarkAsMissedRequestReasonEnum> _$values = BuiltSet<
    BookingMarkAsMissedRequestReasonEnum>(const <BookingMarkAsMissedRequestReasonEnum>[
  _$noShow,
  _$cancelled,
]);

class _$BookingMarkAsMissedRequestReasonEnumMeta {
  const _$BookingMarkAsMissedRequestReasonEnumMeta();
  BookingMarkAsMissedRequestReasonEnum get noShow => _$noShow;
  BookingMarkAsMissedRequestReasonEnum get cancelled => _$cancelled;
  BookingMarkAsMissedRequestReasonEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<BookingMarkAsMissedRequestReasonEnum> get values => _$values;
}

abstract class _$BookingMarkAsMissedRequestReasonEnumMixin {
  // ignore: non_constant_identifier_names
  _$BookingMarkAsMissedRequestReasonEnumMeta
      get BookingMarkAsMissedRequestReasonEnum =>
          const _$BookingMarkAsMissedRequestReasonEnumMeta();
}

Serializer<BookingMarkAsMissedRequestReasonEnum>
    _$bookingMarkAsMissedRequestReasonEnumSerializer =
    _$BookingMarkAsMissedRequestReasonEnumSerializer();

class _$BookingMarkAsMissedRequestReasonEnumSerializer
    implements PrimitiveSerializer<BookingMarkAsMissedRequestReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'noShow': 'no_show',
    'cancelled': 'cancelled',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'no_show': 'noShow',
    'cancelled': 'cancelled',
  };

  @override
  final Iterable<Type> types = const <Type>[
    BookingMarkAsMissedRequestReasonEnum
  ];
  @override
  final String wireName = 'BookingMarkAsMissedRequestReasonEnum';

  @override
  Object serialize(
          Serializers serializers, BookingMarkAsMissedRequestReasonEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BookingMarkAsMissedRequestReasonEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BookingMarkAsMissedRequestReasonEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
