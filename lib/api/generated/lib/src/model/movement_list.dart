//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'movement_list.g.dart';

/// MovementList
///
/// Properties:
/// * [id] 
/// * [product] - Product details including image_url
/// * [movementType] 
/// * [movementTypeDisplay] 
/// * [reason] 
/// * [reasonDisplay] 
/// * [quantity] 
/// * [unitCost] 
/// * [totalValue] 
/// * [stockBefore] 
/// * [stockAfter] 
/// * [status] 
/// * [statusDisplay] 
/// * [movementDate] 
/// * [referenceNumber] 
/// * [createdBy] - User details including full_name and profile_photo_url
/// * [isCorrection] 
/// * [correctionId] 
/// * [movementCorrectedId] 
@BuiltValue()
abstract class MovementList implements Built<MovementList, MovementListBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  /// Product details including image_url
  @BuiltValueField(wireName: r'product')
  BuiltMap<String, Map<String, dynamic>?> get product;

  @BuiltValueField(wireName: r'movement_type')
  String get movementType;

  @BuiltValueField(wireName: r'movement_type_display')
  String get movementTypeDisplay;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  @BuiltValueField(wireName: r'reason_display')
  String get reasonDisplay;

  @BuiltValueField(wireName: r'quantity')
  double get quantity;

  @BuiltValueField(wireName: r'unit_cost')
  double get unitCost;

  @BuiltValueField(wireName: r'total_value')
  double get totalValue;

  @BuiltValueField(wireName: r'stock_before')
  double get stockBefore;

  @BuiltValueField(wireName: r'stock_after')
  double get stockAfter;

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'status_display')
  String get statusDisplay;

  @BuiltValueField(wireName: r'movement_date')
  DateTime get movementDate;

  @BuiltValueField(wireName: r'reference_number')
  String? get referenceNumber;

  /// User details including full_name and profile_photo_url
  @BuiltValueField(wireName: r'created_by')
  BuiltMap<String, Map<String, dynamic>?>? get createdBy;

  @BuiltValueField(wireName: r'is_correction')
  bool get isCorrection;

  @BuiltValueField(wireName: r'correction_id')
  int get correctionId;

  @BuiltValueField(wireName: r'movement_corrected_id')
  int? get movementCorrectedId;

  MovementList._();

  factory MovementList([void updates(MovementListBuilder b)]) = _$MovementList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MovementListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MovementList> get serializer => _$MovementListSerializer();
}

class _$MovementListSerializer implements PrimitiveSerializer<MovementList> {
  @override
  final Iterable<Type> types = const [MovementList, _$MovementList];

  @override
  final String wireName = r'MovementList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MovementList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'product';
    yield serializers.serialize(
      object.product,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
    );
    yield r'movement_type';
    yield serializers.serialize(
      object.movementType,
      specifiedType: const FullType(String),
    );
    yield r'movement_type_display';
    yield serializers.serialize(
      object.movementTypeDisplay,
      specifiedType: const FullType(String),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
    yield r'reason_display';
    yield serializers.serialize(
      object.reasonDisplay,
      specifiedType: const FullType(String),
    );
    yield r'quantity';
    yield serializers.serialize(
      object.quantity,
      specifiedType: const FullType(double),
    );
    yield r'unit_cost';
    yield serializers.serialize(
      object.unitCost,
      specifiedType: const FullType(double),
    );
    yield r'total_value';
    yield serializers.serialize(
      object.totalValue,
      specifiedType: const FullType(double),
    );
    yield r'stock_before';
    yield serializers.serialize(
      object.stockBefore,
      specifiedType: const FullType(double),
    );
    yield r'stock_after';
    yield serializers.serialize(
      object.stockAfter,
      specifiedType: const FullType(double),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'status_display';
    yield serializers.serialize(
      object.statusDisplay,
      specifiedType: const FullType(String),
    );
    yield r'movement_date';
    yield serializers.serialize(
      object.movementDate,
      specifiedType: const FullType(DateTime),
    );
    yield r'reference_number';
    yield object.referenceNumber == null ? null : serializers.serialize(
      object.referenceNumber,
      specifiedType: const FullType.nullable(String),
    );
    yield r'created_by';
    yield object.createdBy == null ? null : serializers.serialize(
      object.createdBy,
      specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
    );
    yield r'is_correction';
    yield serializers.serialize(
      object.isCorrection,
      specifiedType: const FullType(bool),
    );
    yield r'correction_id';
    yield serializers.serialize(
      object.correctionId,
      specifiedType: const FullType(int),
    );
    if (object.movementCorrectedId != null) {
      yield r'movement_corrected_id';
      yield serializers.serialize(
        object.movementCorrectedId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MovementList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MovementListBuilder result,
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
        case r'product':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltMap<String, Map<String, dynamic>?>;
          result.product.replace(valueDes);
          break;
        case r'movement_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.movementType = valueDes;
          break;
        case r'movement_type_display':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.movementTypeDisplay = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'reason_display':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reasonDisplay = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.quantity = valueDes;
          break;
        case r'unit_cost':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.unitCost = valueDes;
          break;
        case r'total_value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalValue = valueDes;
          break;
        case r'stock_before':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.stockBefore = valueDes;
          break;
        case r'stock_after':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.stockAfter = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'status_display':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.statusDisplay = valueDes;
          break;
        case r'movement_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.movementDate = valueDes;
          break;
        case r'reference_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.referenceNumber = valueDes;
          break;
        case r'created_by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltMap<String, Map<String, dynamic>?>?;
          if (valueDes == null) continue;
          result.createdBy.replace(valueDes);
          break;
        case r'is_correction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isCorrection = valueDes;
          break;
        case r'correction_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.correctionId = valueDes;
          break;
        case r'movement_corrected_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.movementCorrectedId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MovementList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MovementListBuilder();
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

