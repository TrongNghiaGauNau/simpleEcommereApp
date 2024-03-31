// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_product_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListProductStateImpl _$$ListProductStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ListProductStateImpl(
      listCategories: (json['listCategories'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$ListProductStateImplToJson(
        _$ListProductStateImpl instance) =>
    <String, dynamic>{
      'listCategories': instance.listCategories,
      'isLoading': instance.isLoading,
    };
