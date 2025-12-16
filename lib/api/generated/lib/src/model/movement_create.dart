//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/movement_create_movement_type_enum.dart';
import 'package:beautyflow_api/src/model/movement_create_reason_enum.dart';
import 'package:beautyflow_api/src/model/movement_unit_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'movement_create.g.dart';

/// MovementCreate
///
/// Properties:
/// * [productId] 
/// * [movementType] 
/// * [reason] 
/// * [quantity] 
/// * [movementUnit] 
/// * [unitCost] 
/// * [referenceNumber] 
/// * [supplierId] - Supplier for this movement (for purchases)
/// * [supplierName] - Supplier name (legacy field, use supplier_id when possible)
/// * [notes] 
@BuiltValue()
abstract class MovementCreate implements Built<MovementCreate, MovementCreateBuilder> {
  @BuiltValueField(wireName: r'product_id')
  int get productId;

  @BuiltValueField(wireName: r'movement_type')
  MovementCreateMovementTypeEnum get movementType;
  // enum movementTypeEnum {  IN,  OUT,  TRANSFER,  ADJUSTMENT,  WASTE,  CONSUMPTION,  };

  @BuiltValueField(wireName: r'reason')
  MovementCreateReasonEnum get reason;
  // enum reasonEnum {  PURCHASE,  CUSTOMER_RETURN,  CORRECTION_POSITIVE,  SALE,  SERVICE_USAGE,  EXPIRED,  DAMAGED,  CORRECTION_NEGATIVE,  SAMPLE,  TRANSFER_IN,  TRANSFER_OUT,  INITIAL_STOCK,  };

  @BuiltValueField(wireName: r'quantity')
  double get quantity;

  @BuiltValueField(wireName: r'movement_unit')
  MovementUnitEnum? get movementUnit;
  // enum movementUnitEnum {  PCS,  ML,  L,  GR,  KG,  BOX,  BOTTLE,  TUBE,  };

  @BuiltValueField(wireName: r'unit_cost')
  double? get unitCost;

  @BuiltValueField(wireName: r'reference_number')
  String? get referenceNumber;

  /// Supplier for this movement (for purchases)
  @BuiltValueField(wireName: r'supplier_id')
  int? get supplierId;

  /// Supplier name (legacy field, use supplier_id when possible)
  @BuiltValueField(wireName: r'supplier_name')
  String? get supplierName;

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  MovementCreate._();

  factory MovementCreate([void updates(MovementCreateBuilder b)]) = _$MovementCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MovementCreateBuilder b) => b
      ..unitCost = 0.00;

  @BuiltValueSerializer(custom: true)
  static Serializer<MovementCreate> get serializer => _$MovementCreateSerializer();
}

class _$MovementCreateSerializer implements PrimitiveSerializer<MovementCreate> {
  @override
  final Iterable<Type> types = const [MovementCreate, _$MovementCreate];

  @override
  final String wireName = r'MovementCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MovementCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'product_id';
    yield serializers.serialize(
      object.productId,
      specifiedType: const FullType(int),
    );
    yield r'movement_type';
    yield serializers.serialize(
      object.movementType,
      specifiedType: const FullType(MovementCreateMovementTypeEnum),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(MovementCreateReasonEnum),
    );
    yield r'quantity';
    yield serializers.serialize(
      object.quantity,
      specifiedType: const FullType(double),
    );
    if (object.movementUnit != null) {
      yield r'movement_unit';
      yield serializers.serialize(
        object.movementUnit,
        specifiedType: const FullType(MovementUnitEnum),
      );
    }
    if (object.unitCost != null) {
      yield r'unit_cost';
      yield serializers.serialize(
        object.unitCost,
        specifiedType: const FullType(double),
      );
    }
    if (object.referenceNumber != null) {
      yield r'reference_number';
      yield serializers.serialize(
        object.referenceNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.supplierId != null) {
      yield r'supplier_id';
      yield serializers.serialize(
        object.supplierId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.supplierName != null) {
      yield r'supplier_name';
      yield serializers.serialize(
        object.supplierName,
        specifiedType: const FullType(String),
      );
    }
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MovementCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MovementCreateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'product_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.productId = valueDes;
          break;
        case r'movement_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MovementCreateMovementTypeEnum),
          ) as MovementCreateMovementTypeEnum;
          result.movementType = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MovementCreateReasonEnum),
          ) as MovementCreateReasonEnum;
          result.reason = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.quantity = valueDes;
          break;
        case r'movement_unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MovementUnitEnum),
          ) as MovementUnitEnum;
          result.movementUnit = valueDes;
          break;
        case r'unit_cost':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.unitCost = valueDes;
          break;
        case r'reference_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.referenceNumber = valueDes;
          break;
        case r'supplier_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.supplierId = valueDes;
          break;
        case r'supplier_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.supplierName = valueDes;
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.notes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MovementCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MovementCreateBuilder();
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

