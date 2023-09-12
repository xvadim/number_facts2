import 'package:freezed_annotation/freezed_annotation.dart';

part 'number_fact.freezed.dart';

@freezed
class NumberFact with _$NumberFact {
  const factory NumberFact({
    @Default('') String text,
    double? number,
    @Default(true) bool isFound,
  }) = _NumberFact;
}
