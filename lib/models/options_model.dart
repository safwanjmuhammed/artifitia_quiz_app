import 'package:json_annotation/json_annotation.dart';

part 'options_model.g.dart';

@JsonSerializable()
class OptionsModel {
  @JsonKey(name: 'text')
  final String text;

  @JsonKey(name: 'isCorrect')
  final bool isCorrect;

  @JsonKey(name: '_id')
  final String id;

  OptionsModel(
    this.id,
    this.text,
    this.isCorrect,
  );

  factory OptionsModel.fromJson(Map<String, dynamic> json) =>
      _$OptionsModelFromJson(json);

  Map<String, dynamic> toJson() => _$OptionsModelToJson(this);
}
