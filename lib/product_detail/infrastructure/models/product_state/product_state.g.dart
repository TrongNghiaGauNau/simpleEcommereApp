// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductStateImpl _$$ProductStateImplFromJson(Map<String, dynamic> json) =>
    _$ProductStateImpl(
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$ProductStateImplToJson(_$ProductStateImpl instance) =>
    <String, dynamic>{
      'product': instance.product,
      'isLoading': instance.isLoading,
    };
