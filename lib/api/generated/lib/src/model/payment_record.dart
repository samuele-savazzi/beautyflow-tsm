//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment_record.g.dart';

/// PaymentRecord
///
/// Properties:
/// * [id] 
/// * [transactionType] - Tipo transazione
/// * [amount] - Importo
/// * [status] - Stato
/// * [description] - Descrizione transazione
/// * [quotaTypeName] - Nome del piano
/// * [smsQuantity] - Quantità SMS acquistati
/// * [operatorsQuantity] - Quantità operatori acquistati
/// * [workstationsQuantity] - Quantità postazioni acquistate
/// * [createdAt] - Data creazione
/// * [completedAt] - Data completamento
@BuiltValue()
abstract class PaymentRecord implements Built<PaymentRecord, PaymentRecordBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  /// Tipo transazione
  @BuiltValueField(wireName: r'transaction_type')
  String get transactionType;

  /// Importo
  @BuiltValueField(wireName: r'amount')
  double get amount;

  /// Stato
  @BuiltValueField(wireName: r'status')
  String get status;

  /// Descrizione transazione
  @BuiltValueField(wireName: r'description')
  String get description;

  /// Nome del piano
  @BuiltValueField(wireName: r'quota_type_name')
  String? get quotaTypeName;

  /// Quantità SMS acquistati
  @BuiltValueField(wireName: r'sms_quantity')
  int? get smsQuantity;

  /// Quantità operatori acquistati
  @BuiltValueField(wireName: r'operators_quantity')
  int? get operatorsQuantity;

  /// Quantità postazioni acquistate
  @BuiltValueField(wireName: r'workstations_quantity')
  int? get workstationsQuantity;

  /// Data creazione
  @BuiltValueField(wireName: r'created_at')
  String get createdAt;

  /// Data completamento
  @BuiltValueField(wireName: r'completed_at')
  String? get completedAt;

  PaymentRecord._();

  factory PaymentRecord([void updates(PaymentRecordBuilder b)]) = _$PaymentRecord;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaymentRecordBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaymentRecord> get serializer => _$PaymentRecordSerializer();
}

class _$PaymentRecordSerializer implements PrimitiveSerializer<PaymentRecord> {
  @override
  final Iterable<Type> types = const [PaymentRecord, _$PaymentRecord];

  @override
  final String wireName = r'PaymentRecord';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaymentRecord object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'transaction_type';
    yield serializers.serialize(
      object.transactionType,
      specifiedType: const FullType(String),
    );
    yield r'amount';
    yield serializers.serialize(
      object.amount,
      specifiedType: const FullType(double),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'quota_type_name';
    yield object.quotaTypeName == null ? null : serializers.serialize(
      object.quotaTypeName,
      specifiedType: const FullType.nullable(String),
    );
    yield r'sms_quantity';
    yield object.smsQuantity == null ? null : serializers.serialize(
      object.smsQuantity,
      specifiedType: const FullType.nullable(int),
    );
    yield r'operators_quantity';
    yield object.operatorsQuantity == null ? null : serializers.serialize(
      object.operatorsQuantity,
      specifiedType: const FullType.nullable(int),
    );
    yield r'workstations_quantity';
    yield object.workstationsQuantity == null ? null : serializers.serialize(
      object.workstationsQuantity,
      specifiedType: const FullType.nullable(int),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(String),
    );
    yield r'completed_at';
    yield object.completedAt == null ? null : serializers.serialize(
      object.completedAt,
      specifiedType: const FullType.nullable(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PaymentRecord object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaymentRecordBuilder result,
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
        case r'transaction_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.transactionType = valueDes;
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.amount = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'quota_type_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.quotaTypeName = valueDes;
          break;
        case r'sms_quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.smsQuantity = valueDes;
          break;
        case r'operators_quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.operatorsQuantity = valueDes;
          break;
        case r'workstations_quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.workstationsQuantity = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'completed_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.completedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PaymentRecord deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaymentRecordBuilder();
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

