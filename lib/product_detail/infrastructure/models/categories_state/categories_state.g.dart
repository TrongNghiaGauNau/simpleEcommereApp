// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoriesStateImpl _$$CategoriesStateImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoriesStateImpl(
      listCategories: (json['listCategories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$CategoriesStateImplToJson(
        _$CategoriesStateImpl instance) =>
    <String, dynamic>{
      'listCategories': instance.listCategories,
      'isLoading': instance.isLoading,
    };
