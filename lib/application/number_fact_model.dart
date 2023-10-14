import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import '../domain/numbers_api_repository.dart';
import 'number_fact_state.dart';

class NumberFactModel extends StateNotifier<NumberFactState> {
  NumberFactModel(this._repository) : super(const NumberFactState.initial());

  Future<void> loadTodayFact() async {
    final today = DateTime.now();
    await loadFact(number: '${today.month}/${today.day}', type: FactType.date);
  }

  Future<void> loadFact({
    String? number,
    FactType type = FactType.trivia,
  }) async {
    state = const NumberFactState.loading();
    try {
      final fact = await _repository.getNumberFact(number, type);
      state = NumberFactState.loaded(fact);
    } catch (_) {
      state = const NumberFactState.error('Unexpected error');
    }
  }

  final NumberApiRepository _repository;
}
