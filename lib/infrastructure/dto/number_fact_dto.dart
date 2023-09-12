import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/number_fact.dart';

part 'number_fact_dto.freezed.dart';
part 'number_fact_dto.g.dart';

@freezed
class NumberFactDto with _$NumberFactDto {
  const factory NumberFactDto({
    required String text,
    @JsonKey(name: 'found') required bool isFound,
    double? number,
    required String type,
    String? date,
    int? year,
  }) = _NumberFactDto;

  factory NumberFactDto.fromJson(Map<String, dynamic> json) =>
      _$NumberFactDtoFromJson(json);
}

extension NumberFactDtoEx on NumberFactDto {
  // Additional conversion DTO -> model
  // for cases when json_serialization is not enough
  NumberFact toNumberFact() => NumberFact(
        text: text,
        number: number,
        isFound: isFound,
      );
}
