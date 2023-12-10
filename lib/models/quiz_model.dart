import 'package:artifitia_quiz_app/models/options_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'quiz_model.g.dart';

@JsonSerializable()
class QuizModel {
  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'question')
  final String question;

  @JsonKey(name: 'options')
  final List<OptionsModel> options;

  @JsonKey(name: 'createdAt')
  final String createdAt;

  @JsonKey(name: 'updatedAt')
  final String updatedAt;

  @JsonKey(name: '__v')
  final int v;

  QuizModel(
    this.id,
    this.question,
    this.options,
    this.createdAt,
    this.updatedAt,
    this.v,
  );

  factory QuizModel.fromJson(Map<String, dynamic> json) =>
      _$QuizModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuizModelToJson(this);
}
