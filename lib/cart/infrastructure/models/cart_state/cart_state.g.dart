// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartStateImpl _$$CartStateImplFromJson(Map<String, dynamic> json) =>
    _$CartStateImpl(
      cartList: (json['cartList'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CartStateImplToJson(_$CartStateImpl instance) =>
    <String, dynamic>{
      'cartList': instance.cartList,
    };
