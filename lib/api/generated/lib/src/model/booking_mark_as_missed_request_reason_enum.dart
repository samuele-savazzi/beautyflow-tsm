//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'booking_mark_as_missed_request_reason_enum.g.dart';

class BookingMarkAsMissedRequestReasonEnum extends EnumClass {

  /// * `no_show` - no_show * `cancelled` - cancelled
  @BuiltValueEnumConst(wireName: r'no_show')
  static const BookingMarkAsMissedRequestReasonEnum noShow = _$noShow;
  /// * `no_show` - no_show * `cancelled` - cancelled
  @BuiltValueEnumConst(wireName: r'cancelled')
  static const BookingMarkAsMissedRequestReasonEnum cancelled = _$cancelled;

  static Serializer<BookingMarkAsMissedRequestReasonEnum> get serializer => _$bookingMarkAsMissedRequestReasonEnumSerializer;

  const BookingMarkAsMissedRequestReasonEnum._(String name): super(name);

  static BuiltSet<BookingMarkAsMissedRequestReasonEnum> get values => _$values;
  static BookingMarkAsMissedRequestReasonEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class BookingMarkAsMissedRequestReasonEnumMixin = Object with _$BookingMarkAsMissedRequestReasonEnumMixin;

