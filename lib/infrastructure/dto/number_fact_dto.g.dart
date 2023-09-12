// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_fact_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NumberFactDto _$$_NumberFactDtoFromJson(Map<String, dynamic> json) =>
    _$_NumberFactDto(
      text: json['text'] as String,
      isFound: json['found'] as bool,
      number: (json['number'] as num?)?.toDouble(),
      type: json['type'] as String,
      date: json['date'] as String?,
      year: json['year'] as int?,
    );

Map<String, dynamic> _$$_NumberFactDtoToJson(_$_NumberFactDto instance) =>
    <String, dynamic>{
      'text': instance.text,
      'found': instance.isFound,
      'number': instance.number,
      'type': instance.type,
      'date': instance.date,
      'year': instance.year,
    };
