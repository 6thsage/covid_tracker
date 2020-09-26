// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'globalnumbers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GlobalNumbers _$GlobalNumbersFromJson(Map<String, dynamic> json) {
  return GlobalNumbers(
    newConfirmed: json['newConfirmed'] as String,
    totalConfirmed: json['totalConfirmed'] as String,
    newDeaths: json['newDeaths'] as String,
    totalDeaths: json['totalDeaths'] as String,
    newRecovered: json['newRecovered'] as String,
    totalRecovered: json['totalRecovered'] as String,
  );
}

Map<String, dynamic> _$GlobalNumbersToJson(GlobalNumbers instance) =>
    <String, dynamic>{
      'newConfirmed': instance.newConfirmed,
      'totalConfirmed': instance.totalConfirmed,
      'newDeaths': instance.newDeaths,
      'totalDeaths': instance.totalDeaths,
      'newRecovered': instance.newRecovered,
      'totalRecovered': instance.totalRecovered,
    };
