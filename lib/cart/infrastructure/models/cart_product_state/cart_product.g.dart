// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartProductImpl _$$CartProductImplFromJson(Map<String, dynamic> json) =>
    _$CartProductImpl(
      id: json['id'] as int,
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
      amount: json['amount'] as int? ?? 0,
      isChecked: json['isChecked'] as bool? ?? false,
    );

Map<String, dynamic> _$$CartProductImplToJson(_$CartProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product,
      'amount': instance.amount,
      'isChecked': instance.isChecked,
    };
