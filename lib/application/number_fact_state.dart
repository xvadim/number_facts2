import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/number_fact.dart';

part 'number_fact_state.freezed.dart';

@freezed
class NumberFactState with _$NumberFactState {
  const factory NumberFactState.initial() = _InitialState;
  const factory NumberFactState.loading() = _LoadingState;
  const factory NumberFactState.loaded(NumberFact numberFact) = _LoadedState;
  const factory NumberFactState.error(String error) = _ErrorState;
}
