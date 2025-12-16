//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'status_enum.g.dart';

class StatusEnum extends EnumClass {

  /// * `confirmed` - Confermata * `completed` - Completata * `converted_to_booking` - Convertita in prenotazione * `ready_to_book` - Pronta da prenotare * `cancelled` - Cancellata
  @BuiltValueEnumConst(wireName: r'confirmed')
  static const StatusEnum confirmed = _$confirmed;
  /// * `confirmed` - Confermata * `completed` - Completata * `converted_to_booking` - Convertita in prenotazione * `ready_to_book` - Pronta da prenotare * `cancelled` - Cancellata
  @BuiltValueEnumConst(wireName: r'completed')
  static const StatusEnum completed = _$completed;
  /// * `confirmed` - Confermata * `completed` - Completata * `converted_to_booking` - Convertita in prenotazione * `ready_to_book` - Pronta da prenotare * `cancelled` - Cancellata
  @BuiltValueEnumConst(wireName: r'converted_to_booking')
  static const StatusEnum convertedToBooking = _$convertedToBooking;
  /// * `confirmed` - Confermata * `completed` - Completata * `converted_to_booking` - Convertita in prenotazione * `ready_to_book` - Pronta da prenotare * `cancelled` - Cancellata
  @BuiltValueEnumConst(wireName: r'ready_to_book')
  static const StatusEnum readyToBook = _$readyToBook;
  /// * `confirmed` - Confermata * `completed` - Completata * `converted_to_booking` - Convertita in prenotazione * `ready_to_book` - Pronta da prenotare * `cancelled` - Cancellata
  @BuiltValueEnumConst(wireName: r'cancelled')
  static const StatusEnum cancelled = _$cancelled;

  static Serializer<StatusEnum> get serializer => _$statusEnumSerializer;

  const StatusEnum._(String name): super(name);

  static BuiltSet<StatusEnum> get values => _$values;
  static StatusEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class StatusEnumMixin = Object with _$StatusEnumMixin;

