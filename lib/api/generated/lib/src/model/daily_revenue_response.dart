//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'daily_revenue_response.g.dart';

/// DailyRevenueResponse
///
/// Properties:
/// * [type] 
/// * [date] 
/// * [areaId] 
/// * [areaName] 
/// * [operatorId] 
/// * [operatorName] 
/// * [serviceRevenueCash] 
/// * [serviceRevenueCard] 
/// * [serviceRevenueTotal] 
/// * [productRevenueCash] 
/// * [productRevenueCard] 
/// * [productRevenueTotal] 
/// * [totalRevenueCash] 
/// * [totalRevenueCard] 
/// * [totalRevenue] 
/// * [completedAppointmentsCount] 
/// * [cancelledAppointmentsCount] 
/// * [noShowAppointmentsCount] 
/// * [missedAppointmentsCount] 
/// * [missedRevenue] 
@BuiltValue()
abstract class DailyRevenueResponse implements Built<DailyRevenueResponse, DailyRevenueResponseBuilder> {
  @BuiltValueField(wireName: r'type')
  String get type;

  @BuiltValueField(wireName: r'date')
  Date get date;

  @BuiltValueField(wireName: r'area_id')
  int get areaId;

  @BuiltValueField(wireName: r'area_name')
  String get areaName;

  @BuiltValueField(wireName: r'operator_id')
  int? get operatorId;

  @BuiltValueField(wireName: r'operator_name')
  String? get operatorName;

  @BuiltValueField(wireName: r'service_revenue_cash')
  double get serviceRevenueCash;

  @BuiltValueField(wireName: r'service_revenue_card')
  double get serviceRevenueCard;

  @BuiltValueField(wireName: r'service_revenue_total')
  double get serviceRevenueTotal;

  @BuiltValueField(wireName: r'product_revenue_cash')
  double get productRevenueCash;

  @BuiltValueField(wireName: r'product_revenue_card')
  double get productRevenueCard;

  @BuiltValueField(wireName: r'product_revenue_total')
  double get productRevenueTotal;

  @BuiltValueField(wireName: r'total_revenue_cash')
  double get totalRevenueCash;

  @BuiltValueField(wireName: r'total_revenue_card')
  double get totalRevenueCard;

  @BuiltValueField(wireName: r'total_revenue')
  double get totalRevenue;

  @BuiltValueField(wireName: r'completed_appointments_count')
  int get completedAppointmentsCount;

  @BuiltValueField(wireName: r'cancelled_appointments_count')
  int get cancelledAppointmentsCount;

  @BuiltValueField(wireName: r'no_show_appointments_count')
  int get noShowAppointmentsCount;

  @BuiltValueField(wireName: r'missed_appointments_count')
  int get missedAppointmentsCount;

  @BuiltValueField(wireName: r'missed_revenue')
  double get missedRevenue;

  DailyRevenueResponse._();

  factory DailyRevenueResponse([void updates(DailyRevenueResponseBuilder b)]) = _$DailyRevenueResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DailyRevenueResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DailyRevenueResponse> get serializer => _$DailyRevenueResponseSerializer();
}

class _$DailyRevenueResponseSerializer implements PrimitiveSerializer<DailyRevenueResponse> {
  @override
  final Iterable<Type> types = const [DailyRevenueResponse, _$DailyRevenueResponse];

  @override
  final String wireName = r'DailyRevenueResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DailyRevenueResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(Date),
    );
    yield r'area_id';
    yield serializers.serialize(
      object.areaId,
      specifiedType: const FullType(int),
    );
    yield r'area_name';
    yield serializers.serialize(
      object.areaName,
      specifiedType: const FullType(String),
    );
    if (object.operatorId != null) {
      yield r'operator_id';
      yield serializers.serialize(
        object.operatorId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.operatorName != null) {
      yield r'operator_name';
      yield serializers.serialize(
        object.operatorName,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'service_revenue_cash';
    yield serializers.serialize(
      object.serviceRevenueCash,
      specifiedType: const FullType(double),
    );
    yield r'service_revenue_card';
    yield serializers.serialize(
      object.serviceRevenueCard,
      specifiedType: const FullType(double),
    );
    yield r'service_revenue_total';
    yield serializers.serialize(
      object.serviceRevenueTotal,
      specifiedType: const FullType(double),
    );
    yield r'product_revenue_cash';
    yield serializers.serialize(
      object.productRevenueCash,
      specifiedType: const FullType(double),
    );
    yield r'product_revenue_card';
    yield serializers.serialize(
      object.productRevenueCard,
      specifiedType: const FullType(double),
    );
    yield r'product_revenue_total';
    yield serializers.serialize(
      object.productRevenueTotal,
      specifiedType: const FullType(double),
    );
    yield r'total_revenue_cash';
    yield serializers.serialize(
      object.totalRevenueCash,
      specifiedType: const FullType(double),
    );
    yield r'total_revenue_card';
    yield serializers.serialize(
      object.totalRevenueCard,
      specifiedType: const FullType(double),
    );
    yield r'total_revenue';
    yield serializers.serialize(
      object.totalRevenue,
      specifiedType: const FullType(double),
    );
    yield r'completed_appointments_count';
    yield serializers.serialize(
      object.completedAppointmentsCount,
      specifiedType: const FullType(int),
    );
    yield r'cancelled_appointments_count';
    yield serializers.serialize(
      object.cancelledAppointmentsCount,
      specifiedType: const FullType(int),
    );
    yield r'no_show_appointments_count';
    yield serializers.serialize(
      object.noShowAppointmentsCount,
      specifiedType: const FullType(int),
    );
    yield r'missed_appointments_count';
    yield serializers.serialize(
      object.missedAppointmentsCount,
      specifiedType: const FullType(int),
    );
    yield r'missed_revenue';
    yield serializers.serialize(
      object.missedRevenue,
      specifiedType: const FullType(double),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DailyRevenueResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DailyRevenueResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        case r'area_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.areaId = valueDes;
          break;
        case r'area_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.areaName = valueDes;
          break;
        case r'operator_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.operatorId = valueDes;
          break;
        case r'operator_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.operatorName = valueDes;
          break;
        case r'service_revenue_cash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.serviceRevenueCash = valueDes;
          break;
        case r'service_revenue_card':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.serviceRevenueCard = valueDes;
          break;
        case r'service_revenue_total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.serviceRevenueTotal = valueDes;
          break;
        case r'product_revenue_cash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.productRevenueCash = valueDes;
          break;
        case r'product_revenue_card':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.productRevenueCard = valueDes;
          break;
        case r'product_revenue_total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.productRevenueTotal = valueDes;
          break;
        case r'total_revenue_cash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalRevenueCash = valueDes;
          break;
        case r'total_revenue_card':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalRevenueCard = valueDes;
          break;
        case r'total_revenue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalRevenue = valueDes;
          break;
        case r'completed_appointments_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.completedAppointmentsCount = valueDes;
          break;
        case r'cancelled_appointments_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.cancelledAppointmentsCount = valueDes;
          break;
        case r'no_show_appointments_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.noShowAppointmentsCount = valueDes;
          break;
        case r'missed_appointments_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.missedAppointmentsCount = valueDes;
          break;
        case r'missed_revenue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.missedRevenue = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DailyRevenueResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DailyRevenueResponseBuilder();
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

