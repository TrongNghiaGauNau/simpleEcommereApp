import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_state.freezed.dart';
part 'categories_state.g.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState({
    List<String>? listCategories,
    @Default(false) bool isLoading,
  }) = _CategoriesState;

  factory CategoriesState.fromJson(Map<String, dynamic> json) =>
      _$CategoriesStateFromJson(json);
}
