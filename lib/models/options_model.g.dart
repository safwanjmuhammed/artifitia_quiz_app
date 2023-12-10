// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'options_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OptionsModel _$OptionsModelFromJson(Map<String, dynamic> json) => OptionsModel(
      json['_id'] as String,
      json['text'] as String,
      json['isCorrect'] as bool,
    );

Map<String, dynamic> _$OptionsModelToJson(OptionsModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'isCorrect': instance.isCorrect,
      '_id': instance.id,
    };
