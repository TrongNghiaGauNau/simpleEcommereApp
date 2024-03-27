import 'package:freezed_annotation/freezed_annotation.dart';

part 'occupation_model.freezed.dart';
part 'occupation_model.g.dart';

@freezed
class Occupation with _$Occupation {
  const Occupation._();
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Occupation({
    required String label,
    required bool requiredLicense,
  }) = _Occupation;

  factory Occupation.fromJson(Map<String, dynamic> json) => _$OccupationFromJson(json);
}
