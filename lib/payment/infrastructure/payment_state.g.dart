// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentStateImpl _$$PaymentStateImplFromJson(Map<String, dynamic> json) =>
    _$PaymentStateImpl(
      listProduct: (json['listProduct'] as List<dynamic>?)
              ?.map((e) => CartProduct.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPrice: (json['totalPrice'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$PaymentStateImplToJson(_$PaymentStateImpl instance) =>
    <String, dynamic>{
      'listProduct': instance.listProduct,
      'totalPrice': instance.totalPrice,
    };
