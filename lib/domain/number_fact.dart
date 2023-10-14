import 'package:freezed_annotation/freezed_annotation.dart';

import '../common/num_extension.dart';

part 'number_fact.freezed.dart';

@freezed
class NumberFact with _$NumberFact {
  const factory NumberFact({
    @Default('') String text,
    double? number,
    @Default(true) bool isFound,
  }) = _NumberFact;
}

extension NumberFactExt on NumberFact {
  String get title {
    final number = this.number;
    if (number == null) return '';
    //just to nice view
    final numValue =
        number.isInt && number.abs() < 10000000 ? number.toInt() : number;
    return 'An interesting fact about $numValue';
  }
}
