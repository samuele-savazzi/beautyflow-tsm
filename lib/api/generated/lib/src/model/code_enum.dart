//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'code_enum.g.dart';

class CodeEnum extends EnumClass {

  /// * `new_booking` - Nuove prenotazioni * `new_registration` - Nuove Iscrizioni * `cancellation` - Disdette * `leave_request` - Ferie/Permessi * `inventory` - Magazzino * `system` - Sistema * `consultation` - Consultazioni
  @BuiltValueEnumConst(wireName: r'new_booking')
  static const CodeEnum newBooking = _$newBooking;
  /// * `new_booking` - Nuove prenotazioni * `new_registration` - Nuove Iscrizioni * `cancellation` - Disdette * `leave_request` - Ferie/Permessi * `inventory` - Magazzino * `system` - Sistema * `consultation` - Consultazioni
  @BuiltValueEnumConst(wireName: r'new_registration')
  static const CodeEnum newRegistration = _$newRegistration;
  /// * `new_booking` - Nuove prenotazioni * `new_registration` - Nuove Iscrizioni * `cancellation` - Disdette * `leave_request` - Ferie/Permessi * `inventory` - Magazzino * `system` - Sistema * `consultation` - Consultazioni
  @BuiltValueEnumConst(wireName: r'cancellation')
  static const CodeEnum cancellation = _$cancellation;
  /// * `new_booking` - Nuove prenotazioni * `new_registration` - Nuove Iscrizioni * `cancellation` - Disdette * `leave_request` - Ferie/Permessi * `inventory` - Magazzino * `system` - Sistema * `consultation` - Consultazioni
  @BuiltValueEnumConst(wireName: r'leave_request')
  static const CodeEnum leaveRequest = _$leaveRequest;
  /// * `new_booking` - Nuove prenotazioni * `new_registration` - Nuove Iscrizioni * `cancellation` - Disdette * `leave_request` - Ferie/Permessi * `inventory` - Magazzino * `system` - Sistema * `consultation` - Consultazioni
  @BuiltValueEnumConst(wireName: r'inventory')
  static const CodeEnum inventory = _$inventory;
  /// * `new_booking` - Nuove prenotazioni * `new_registration` - Nuove Iscrizioni * `cancellation` - Disdette * `leave_request` - Ferie/Permessi * `inventory` - Magazzino * `system` - Sistema * `consultation` - Consultazioni
  @BuiltValueEnumConst(wireName: r'system')
  static const CodeEnum system = _$system;
  /// * `new_booking` - Nuove prenotazioni * `new_registration` - Nuove Iscrizioni * `cancellation` - Disdette * `leave_request` - Ferie/Permessi * `inventory` - Magazzino * `system` - Sistema * `consultation` - Consultazioni
  @BuiltValueEnumConst(wireName: r'consultation')
  static const CodeEnum consultation = _$consultation;

  static Serializer<CodeEnum> get serializer => _$codeEnumSerializer;

  const CodeEnum._(String name): super(name);

  static BuiltSet<CodeEnum> get values => _$values;
  static CodeEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CodeEnumMixin = Object with _$CodeEnumMixin;

