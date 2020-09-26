import 'package:json_annotation/json_annotation.dart';
part 'globalnumbers.g.dart';

@JsonSerializable()
class GlobalNumbers {
  final String newConfirmed;
  final String totalConfirmed;
  final String newDeaths;
  final String totalDeaths;
  final String newRecovered;
  final String totalRecovered;

  GlobalNumbers({
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered,
  });

  factory GlobalNumbers.fromJSON(Map<String, dynamic> json) =>
      _$GlobalNumbersFromJson(json);
  Map<String, dynamic> toJson() => _$GlobalNumbersToJson(this);
}
