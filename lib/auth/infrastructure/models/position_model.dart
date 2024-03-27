import 'package:freezed_annotation/freezed_annotation.dart';

part 'position_model.freezed.dart';
part 'position_model.g.dart';

@freezed
class Position with _$Position {
  const Position._();
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Position({
    required String label,
    required bool isAdmin,
  }) = _Position;

  factory Position.fromJson(Map<String, dynamic> json) => _$PositionFromJson(json);
}
