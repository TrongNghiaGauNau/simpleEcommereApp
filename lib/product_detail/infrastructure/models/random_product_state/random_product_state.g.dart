// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_product_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RandomProductStateImpl _$$RandomProductStateImplFromJson(
        Map<String, dynamic> json) =>
    _$RandomProductStateImpl(
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$RandomProductStateImplToJson(
        _$RandomProductStateImpl instance) =>
    <String, dynamic>{
      'product': instance.product,
      'isLoading': instance.isLoading,
    };
