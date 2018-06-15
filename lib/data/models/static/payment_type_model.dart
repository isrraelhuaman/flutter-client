import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment_type_model.g.dart';

abstract class PaymentTypeListResponse implements Built<PaymentTypeListResponse, PaymentTypeListResponseBuilder> {

  BuiltList<PaymentTypeEntity> get data;

  PaymentTypeListResponse._();
  factory PaymentTypeListResponse([updates(PaymentTypeListResponseBuilder b)]) = _$PaymentTypeListResponse;
  static Serializer<PaymentTypeListResponse> get serializer => _$paymentTypeListResponseSerializer;
}

abstract class PaymentTypeItemResponse implements Built<PaymentTypeItemResponse, PaymentTypeItemResponseBuilder> {

  PaymentTypeEntity get data;

  PaymentTypeItemResponse._();
  factory PaymentTypeItemResponse([updates(PaymentTypeItemResponseBuilder b)]) = _$PaymentTypeItemResponse;
  static Serializer<PaymentTypeItemResponse> get serializer => _$paymentTypeItemResponseSerializer;
}

class PaymentTypeFields {
  static const String name = 'name';
  static const String gatewayTypeId = 'gatewayTypeId';
  
}


abstract class PaymentTypeEntity implements Built<PaymentTypeEntity, PaymentTypeEntityBuilder> {

  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'gateway_type_id')
  int get gatewayTypeId;

 


  PaymentTypeEntity._();
  factory PaymentTypeEntity([updates(PaymentTypeEntityBuilder b)]) = _$PaymentTypeEntity;
  static Serializer<PaymentTypeEntity> get serializer => _$paymentTypeEntitySerializer;
}

