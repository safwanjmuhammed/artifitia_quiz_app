// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuizModel _$QuizModelFromJson(Map<String, dynamic> json) => QuizModel(
      json['_id'] as String,
      json['question'] as String,
      (json['options'] as List<dynamic>)
          .map((e) => OptionsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['createdAt'] as String,
      json['updatedAt'] as String,
      json['__v'] as int,
    );

Map<String, dynamic> _$QuizModelToJson(QuizModel instance) => <String, dynamic>{
      '_id': instance.id,
      'question': instance.question,
      'options': instance.options,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.v,
    };
